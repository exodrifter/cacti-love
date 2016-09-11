using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameTimer : MonoBehaviour
{
	private float highscore = 0;

	Text text;

	public bool record = true;

	// Use this for initialization
	void Start()
	{
		text = GetComponent<Text>();
	}

	// Update is called once per frame
	void Update()
	{
		var time = Time.timeSinceLevelLoad;

		if (record) {
			text.text = time.ToString("n2");
		}
		else {
			highscore = Mathf.Max(highscore, time);
		}
	}
}
