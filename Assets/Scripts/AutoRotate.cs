using UnityEngine;
using System.Collections;

public class AutoRotate : MonoBehaviour
{
	public float speed = 1f;

	private Quaternion delta;

	void Start()
	{
		delta = Random.rotationUniform;
	}
	
	void Update()
	{
		var euler = delta.eulerAngles;
		transform.Rotate(euler * Time.deltaTime * speed);
	}
}
