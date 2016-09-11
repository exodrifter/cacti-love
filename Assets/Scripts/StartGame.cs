using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class StartGame : MonoBehaviour {

	public Fade fade;

	// Use this for initialization
	void Start () {
		fade.FadeIn();
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.Space))
        {
			fade.FadeOut(() => SceneManager.LoadScene("Level"));
        }
	}
}
