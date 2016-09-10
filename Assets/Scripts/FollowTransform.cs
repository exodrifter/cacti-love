using UnityEngine;
using System.Collections;

public class FollowTransform : MonoBehaviour {
    Transform target;
    public Transform eye;
    public float rotationSpeed = 3f;
    public float launchForce = 5f;
    public float jumpWaitTime = 1f;

    float elapsedTime = 0f; 
    new Rigidbody rigidbody;

	// Use this for initialization
	void Start () {
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        target = player.GetComponent<Transform>();
        rigidbody = GetComponent<Rigidbody>();

	}
	
	// Update is called once per frame
	void Update () {
        //Use an eye sub object to look at the balloon and get a vector for launching the cactus.
        eye.rotation = Quaternion.Slerp(eye.rotation, Quaternion.LookRotation(target.position - transform.position), rotationSpeed * Time.deltaTime);    
        
        //Rotate the cactus to face the balloon  
        transform.LookAt(new Vector3(target.position.x, transform.position.y, target.position.z));

        //Keep track of time
        elapsedTime += Time.deltaTime;

        //Enough time has elapsed, then the cactus hsould jump towards the balloon
        if (elapsedTime >= jumpWaitTime)
        {
            //Reset the elapsed time
            elapsedTime -= jumpWaitTime;

            //launch the cactus rigidbody using the eye's forward vector.
            rigidbody.AddForce(eye.forward * launchForce, ForceMode.Impulse);
        }
    }
}
