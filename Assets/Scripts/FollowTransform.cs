using UnityEngine;
using System.Collections;

//For the A* pathfinding
using Pathfinding;

public class FollowTransform : MonoBehaviour {

    Transform target;
    public Transform eye;
    public static float rotationSpeed = 3f;
    public static float launchForce = 5f;
    float baseJumpWaitTime = 1f;
    public float jumpWaitTime = 1f;
    public static float speed = 3f;

    float elapsedTime = 0f;
    float elapsedTimeRescan = 0f;
    float rescanTime = 1f;

    AudioSource jumpSound;

    new Rigidbody rigidbody;

    //Pathfinding
    //Path
    public Path path;
    private int currentWaypoint = 0;

    //Seeker
    Seeker seeker;

    // Use this for initialization
    void Start () {
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        target = player.GetComponent<Transform>();
        rigidbody = GetComponent<Rigidbody>();
        jumpSound = GetComponent<AudioSource>();

        //Pathfinding Seeker makes the path
        seeker = GetComponent<Seeker>();

        seeker.pathCallback += OnPathComplete;

        //Pathfinding start the pathfinding;
        seeker.StartPath(transform.position, target.position);
    }
	
    void mindlessJumpBehavior()
    {
        eye.rotation = Quaternion.Slerp(eye.rotation, Quaternion.LookRotation(target.position - transform.position), rotationSpeed * Time.deltaTime);
        transform.LookAt(new Vector3(target.position.x, transform.position.y, target.position.z));
    }

    void followPathBehavior()
    {
        //Rotate cactus to face next waypoint
        transform.LookAt(new Vector3(path.vectorPath[currentWaypoint + 1].x, transform.position.y, path.vectorPath[currentWaypoint + 1].z));

        if (Vector3.Distance(new Vector3(transform.position.x, path.vectorPath[currentWaypoint + 1].y, transform.position.z), path.vectorPath[currentWaypoint + 1]) <= 3f)
        {
            Debug.Log("Increasing waypoint Index");
            currentWaypoint++;
        }
    }

    void pathJump()
    {
        jumpSound.Play();
        Vector3 force = (path.vectorPath[currentWaypoint + 1] - transform.position);
        force = Quaternion.AngleAxis(-60, transform.right) * force;
        Debug.Log(force);


        //launch the cactus rigidbody using the eye's forward vector.
        rigidbody.AddForce(force.normalized * launchForce, ForceMode.Impulse);
    }

    void mindlessJump()
    {
        jumpSound.Play();
        rigidbody.AddForce(eye.forward * launchForce, ForceMode.Impulse);
    }

	// Update is called once per frame
	void Update () {
        //Keep track of time
        elapsedTime += Time.deltaTime;
        elapsedTimeRescan += Time.deltaTime;
        if (launchForce <= 50f)
        {
            if (path != null && currentWaypoint < path.vectorPath.Count - 2)
            {
                Debug.Log("waypoint " + currentWaypoint + " of " + path.vectorPath.Count);
                followPathBehavior();

                //Enough time has elapsed, then the cactus hsould jump towards the balloon
                if (elapsedTime >= jumpWaitTime)
                {
                    //Reset the elapsed time
                    elapsedTime -= jumpWaitTime;
                    jumpWaitTime = baseJumpWaitTime + Random.Range(-0.5f, 1f);

                    Debug.Log("Jumping");
                    if (Vector3.Distance(target.position, transform.position) >= 2f)
                    {
                        pathJump();
                    }
                    else
                    {
                        mindlessJump();
                    }
                }

            }
            else
            {
                mindlessJumpBehavior();

                //Enough time has elapsed, then the cactus hsould jump towards the balloon
                if (elapsedTime >= jumpWaitTime)
                {
                    //Reset the elapsed time
                    elapsedTime -= jumpWaitTime;
                    jumpWaitTime = baseJumpWaitTime + Random.Range(-0.5f, 1f);

                    Debug.Log("Jumping");
                    mindlessJump();
                }
            }


            if (elapsedTimeRescan >= rescanTime)
            {
                elapsedTimeRescan -= rescanTime;
                if (Vector3.Distance(target.position, transform.position) >= 3f)
                {
                    seeker.StartPath(transform.position, target.position);
                }
            }
        }else
        {
            rigidbody.useGravity = false;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(target.position - transform.position), rotationSpeed * Time.deltaTime);
            transform.position += transform.forward * speed * Time.deltaTime;
        }


    }

    public void OnPathComplete(Path p)
    {
        if (!p.error)
        {
            path = p;
            currentWaypoint = 0;
            Debug.Log("Yes, path complete!");
        }
    }

}
