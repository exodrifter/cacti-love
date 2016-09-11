using UnityEngine;
using System.Collections;

public class TextLife : MonoBehaviour {

    float lifeSpan = 3f;
    float elapsedTime;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        transform.position += transform.up * Time.deltaTime * 3f + transform.right * Mathf.Sin(elapsedTime*2f) * Time.deltaTime;
        elapsedTime += Time.deltaTime;
        if(elapsedTime >= lifeSpan)
        {
            Destroy(gameObject);
        }
	}
}
