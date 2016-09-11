using UnityEngine;
using System.Collections;

public class MeltEffect : MonoBehaviour {

    public float elapsedTime = 0f;
    public float lifeTime = 15f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        elapsedTime += Time.deltaTime;

        if(elapsedTime >= lifeTime)
        {
            melt();
        }
	}

    void melt()
    {
        GetComponentInChildren<BoxCollider>().enabled = false;
        GetComponentInChildren<Rigidbody>().detectCollisions = false;
        Debug.Log("Melting " + gameObject.name);
        transform.position = Vector3.Lerp(transform.position, transform.position - Vector3.up * 2.5f, .5f * Time.deltaTime);
        if(elapsedTime >= lifeTime + 5f)
        {
            Destroy(gameObject);
        }
    }
}
