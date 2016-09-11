using UnityEngine;
using System.Collections;

public class MovementBalloon : MonoBehaviour {
    Rigidbody rb;
    
    //For Changing speed of movement.
    public float movSpeed = 10.0F;

    public float velCeiling = 12.0F;

    //Vertical Movement for 'space'
    public float jumpPower = 3.0F;

    //Variables for rotation
    public float SpeedH = 4.0f;
    public float SpeedV = 4.0f;

    // Use this for initialization
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        TheMovement();
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
        if (Input.GetKeyDown(KeyCode.Space))
        {
            rb.AddForce(Vector3.up * jumpPower, ForceMode.Impulse);
        }

        //Adding movement forces and checking if they are too fast.
        rb.AddForce(totalMovement, ForceMode.Force);
        if (rb.velocity.magnitude > velCeiling)
        {
            rb.velocity = rb.velocity.normalized * velCeiling;
        }
    }
}
