using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections;

public class Fade : MonoBehaviour
{
	public float time = 3;

	Image image;

	void Start()
	{
		image = GetComponent<Image>();
	}

	public void FadeOut(Action action = null)
	{
		StartCoroutine(DoFade(1, action));
	}

	public void FadeIn(Action action = null)
	{
		StartCoroutine(DoFade(0, action));
	}

	IEnumerator DoFade(float target, Action action)
	{
		var color = image.color;
		var alpha = color.a;
		var elapsed = 0f;


		while (elapsed < time) {
			var t = elapsed / time;

			color.a = Mathf.Lerp(alpha, target, t);
			image.color = color;
			yield return new WaitForEndOfFrame();
			elapsed += Time.deltaTime;
		}

		color.a = target;
		image.color = color;

		if (action != null) {
			action();
		}
	}
}
