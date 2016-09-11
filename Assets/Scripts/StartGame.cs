using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class StartGame : MonoBehaviour
{

	public Fade fade;
	public AudioSource[] sources;

	public AudioSource start;

	// Use this for initialization
	void Start()
	{
		fade.FadeIn();
	}

	// Update is called once per frame
	void Update()
	{
		if (Input.GetKeyDown(KeyCode.Space)) {
			fade.FadeOut(() => SceneManager.LoadScene("Level"));
			StartCoroutine(FadeOut());
			start.Play();
		}
	}

	IEnumerator FadeOut()
	{
		float time = fade.time;
		float elapsed = 0;

		float[] starts = new float[sources.Length];
		for(int i = 0; i < sources.Length; ++i) {
			starts[i] = sources[i].volume;
		}

		while (elapsed < time) {

			var t = elapsed / time;
			
			for(int i = 0; i < sources.Length; ++i) {
				sources[i].volume = starts[i] * (1 - t);
			}

			yield return new WaitForEndOfFrame();
			elapsed += Time.deltaTime;
		}
	}
}
