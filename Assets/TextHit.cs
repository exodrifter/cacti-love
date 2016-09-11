using UnityEngine;
using System.Collections;

public class TextHit : MonoBehaviour {

    public GameObject[] library;

    void OnCollisionEnter(Collision col)
    {
        SpawnText();
    }

    // Use this for initialization
    void SpawnText () {
        GameObject text = (GameObject) Instantiate(library[Random.Range(0, library.Length)], transform.position, Quaternion.identity);
        TextMesh tm = text.GetComponent<TextMesh>();
        tm.color = Random.ColorHSV();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
