using UnityEngine;
using System.Collections;

public class BalloonDeath : MonoBehaviour
{

	public AudioSource source;
	public AudioSource music;

	public Material deathbox;
	public GameTimer timer;

	// collision detection with cactus
	void OnCollisionEnter(Collision col)
	{
		if (col.other.tag == "Cactus") {
			Kill();
		}
	}

	public void Kill()
	{
		Camera.main.transform.parent = null;
		Destroy(this.gameObject);

		source.transform.position = transform.position;
		source.Play();
		music.Stop();

		RenderSettings.skybox = deathbox;

		timer.record = false;
		new GameObject().AddComponent<SwitchToMainMenu>();

		/*
		MeshRenderer balloonMesh = GetComponentInChildren<MeshRenderer>();
		balloonMesh.enabled = false;
		gameObject.GetComponent<MovementBalloon>().enabled = false;
		*/
	}
}
