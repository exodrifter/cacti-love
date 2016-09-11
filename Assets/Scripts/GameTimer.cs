using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameTimer : MonoBehaviour
{
	private static int highscore = 0;

	Text text;

	public bool record = true;
	public bool best = false;

	private int time = 0;

	// Use this for initialization
	void Start()
	{
		text = GetComponent<Text>();
	}

	// Update is called once per frame
	void Update()
	{
		if (best) {
			text.text = "HIGH SCORE: " + highscore.ToString("n0");
		}
		else if (record) {
			time = (int)(Mathf.Pow(Time.timeSinceLevelLoad, 2));
			text.text = time.ToString("n0");
		}
		else {
			highscore = Mathf.Max(highscore, time);
		}
	}
}
