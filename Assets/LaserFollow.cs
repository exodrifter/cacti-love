using UnityEngine;
using System.Collections;

public class LaserFollow : MonoBehaviour
{

	public float speed = 4;

	public Transform origin;

	GameObject player;
	LineRenderer lines;

	void Start()
	{
		player = GameObject.FindGameObjectWithTag("Player");
		lines = GetComponent<LineRenderer>();
	}

	void Update()
	{
		var target = player.transform.position;
		var pos = this.transform.position;

		var dir = (target - pos).normalized;
		this.transform.position += dir * Time.deltaTime * speed;

		RaycastHit hit;
		var ray = new Ray(origin.transform.position, this.transform.position - origin.transform.position);
		if (Physics.Raycast(ray, out hit)) {
			lines.SetVertexCount(2);
			lines.SetPositions(new Vector3[] {
				origin.transform.position,
				hit.point
			});

			if (hit.transform.tag == "Player") {
				hit.transform.GetComponent<BalloonDeath>().Kill();
			}
		}

		// Check if player is dead
	}
}
