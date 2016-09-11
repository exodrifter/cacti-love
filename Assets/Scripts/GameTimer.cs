using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameTimer : MonoBehaviour
{
	private static float highscore = 0;

	Text text;

	public bool record = true;
	public bool best = false;

	private float time = 0;

	// Use this for initialization
	void Start()
	{
		text = GetComponent<Text>();
	}

	// Update is called once per frame
	void Update()
	{
		if (best) {
			text.text = "HIGH SCORE: " + highscore.ToString("n2");
		}
		else if (record) {
			time = Time.timeSinceLevelLoad;
			text.text = time.ToString("n2");
		}
		else {
			highscore = Mathf.Max(highscore, time);
		}
	}
}
