using UnityEngine;
using System.Collections;

public class AutoFloat : MonoBehaviour
{
	public float speed = 1f;
	public float distance = 1;

	private Vector3 start;
	private float offset;


	void Start()
	{
		start = transform.position;
		offset = Random.Range(0, Mathf.PI);
	}

	void Update()
	{
		var delta = new Vector3();
		delta.y += Mathf.Sin(Time.timeSinceLevelLoad + offset) * distance;
		transform.position = start + delta;
	}
}
