using UnityEngine;
using UnityEngine.UI;

public class Hueshift : MonoBehaviour {

	void Update () {
		var text = GetComponent<Text>();
		var h = Mathf.Sin(Time.timeSinceLevelLoad);
		text.color = new HSBColor(h, 1, 1, 1).ToColor();
	}
}
