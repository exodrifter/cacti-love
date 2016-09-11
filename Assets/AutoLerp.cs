using UnityEngine;
using System.Collections;

public class AutoLerp : MonoBehaviour {

	public Vector3 offset;
	private Vector3 start;

	public float time;

	void Start ()
	{
		start = transform.position;
		StartCoroutine(Move());
	}

	IEnumerator Move()
	{
		float elapsed = 0;

		var begin = start + offset;
		while (elapsed < time) {
			var t = elapsed / time;
			transform.position = Vector3.Lerp(begin, start, t);

			yield return new WaitForEndOfFrame();
			elapsed += Time.deltaTime;
		}

		transform.position = start;
	}
}
