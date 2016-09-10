using UnityEngine;
using System.Collections;

public class MovementBalloon : MonoBehaviour {
    new Rigidbody rb;
    
    //For Changing speed of movement.
    public float movSpeed = 10.0F;

    //Vertical Movement for 'space'
    public float jumpPower = 0.2F;

    //Variables for rotation
    public float SpeedH = 4.0f;
    public float SpeedV = 4.0f;
    public float yaw = 0.0f;

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
        //Moving the balloon across the axe's
        float horMovement = Input.GetAxis("Horizontal") * movSpeed * Time.deltaTime;
        float verMovement = Input.GetAxis("Vertical") * movSpeed * Time.deltaTime;

        //Rotating balloon, only horizontal rotation
        yaw += SpeedH * Input.GetAxis("Mouse X");

        if (Input.GetKeyDown(KeyCode.Space))
        {
            rb.AddForce(Vector3.up * jumpPower, ForceMode.Impulse);
        }


        transform.eulerAngles = new Vector3(0.0f, yaw, 0.0f);
        transform.Translate(horMovement, 0, verMovement);
    }
}
