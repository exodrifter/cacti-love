using UnityEngine;
using System.Collections;

public class MovementBalloon : MonoBehaviour {
    Rigidbody rb;

    //For Changing speed of movement.
    public float movSpeed = 10.0F;

    public float velCeiling = 12.0F;

    //Vertical Movement for 'space'
    public float jumpPower = 3.0F;
    bool canJump = true;
    public float cooldown = 1.30F;
    float jumpCooldown;

    //Variables for rotation
    public float SpeedH = 4.0f;
    public float SpeedV = 4.0f;

    // Use this for initialization
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        jumpCooldown = cooldown;
    }

    // Update is called once per frame
    void Update()
    {
        TheMovement();
        cooldown -= 0.3f / 60f * Time.deltaTime;
        if(cooldown < 1.0f)
        {
            cooldown = 1.0f;
        }
        //Jumping timer
        if (!canJump)
        {
            jumpCooldown -= Time.deltaTime;
            if (jumpCooldown < 0)
            {
                canJump = true;
            }
        }
    }

    void TheMovement()
    {
        //Forming the vector that the balloon will travel
        var horMovement = Input.GetAxis("Horizontal") * Camera.main.transform.right;
        var verMovement = Input.GetAxis("Vertical") * Camera.main.transform.forward;
        var totalMovement = horMovement + verMovement;
        totalMovement.y = 0.0F;
        totalMovement = totalMovement.normalized * movSpeed;

        //Rotating balloon, only horizontal rotation
		var angles = transform.eulerAngles;
		angles.y += SpeedH * Input.GetAxis("Mouse X");
		transform.eulerAngles = angles;

        //Jumping
        if (Input.GetKeyDown(KeyCode.Space) && canJump)
        {
            rb.AddForce(Vector3.up * jumpPower, ForceMode.Impulse);
            canJump = false;
            jumpCooldown = cooldown;
        }

        //Adding movement forces and checking if they are too fast.
        rb.AddForce(totalMovement, ForceMode.Force);
        if (rb.velocity.magnitude > velCeiling)
        {
            rb.velocity = rb.velocity.normalized * velCeiling;
        }
    }
}
