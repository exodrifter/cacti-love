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
        //transform.LookAt(target);
        eye.rotation = Quaternion.Slerp(eye.rotation, Quaternion.LookRotation(target.position - transform.position), rotationSpeed * Time.deltaTime);      
        transform.LookAt(new Vector3(target.position.x, transform.position.y, target.position.z));
        elapsedTime += Time.deltaTime;
        //transform.position += transform.forward * speed * Time.deltaTime; 
        if (elapsedTime >= jumpWaitTime)
        {
            elapsedTime -= jumpWaitTime;
            rigidbody.AddForce(eye.forward * launchForce, ForceMode.Impulse);
        }
    }
}
