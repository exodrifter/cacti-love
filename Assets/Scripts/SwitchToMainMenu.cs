﻿using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class SwitchToMainMenu : MonoBehaviour {
    
    void Start ()
    {
        StartCoroutine(LoadStart());
    }

    IEnumerator LoadStart()
    {
        yield return new WaitForSeconds(4);
        SceneManager.LoadScene("Main");
    }
}
