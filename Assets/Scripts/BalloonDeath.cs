using UnityEngine;
using System.Collections;

public class BalloonDeath : MonoBehaviour {

	public AudioSource source;
	public AudioSource music;

	// collision detection with cactus
	void OnCollisionEnter(Collision col) {
		if (col.other.tag == "Cactus") {
			Camera.main.transform.parent = null;
			Destroy(this.gameObject);

			source.transform.position = transform.position;
			source.Play();
			music.Stop();
			/*
			MeshRenderer balloonMesh = GetComponentInChildren<MeshRenderer>();
			balloonMesh.enabled = false;
			gameObject.GetComponent<MovementBalloon>().enabled = false;
			*/
		}
	}
}
