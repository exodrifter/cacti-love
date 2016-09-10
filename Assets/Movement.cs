using UnityEngine;
using System.Collections;

public class Movement : MonoBehaviour {
    //Variables for rotation
    public float SpeedH = 4.0f;
    public float SpeedV = 4.0f;
    public float yaw = 0.0f;
    public float pitch = 0.0f;

    // Use this for initialization
    void Start ()
    {
	
	}
	
	// Update is called once per frame
	void Update ()
    {
        TheMovement();
	}

    void TheMovement()
    {
        //Rotating the camera
        yaw += SpeedH * Input.GetAxis("Mouse X");
        pitch -= SpeedH * Input.GetAxis("Mouse Y");
        transform.eulerAngles = new Vector3(pitch, yaw, 0.0f);
    }
}
