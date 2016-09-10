using UnityEngine;
using System.Collections;

public class BalloonDeath : MonoBehaviour {

	// collision detection with cactus
	void OnCollisionEnter(Collision col) {
		if (col.other.tag == "Cactus") {
			Camera.main.transform.parent = null;
			Destroy(this.gameObject);
			/*
			MeshRenderer balloonMesh = GetComponentInChildren<MeshRenderer>();
			balloonMesh.enabled = false;
			gameObject.GetComponent<MovementBalloon>().enabled = false;
			*/
		}
	}
}
