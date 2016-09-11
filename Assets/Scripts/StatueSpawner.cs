using UnityEngine;
using System.Collections;
using Kino;

public class StatueSpawner : MonoBehaviour {
    public GameObject prefab;
    public BoxCollider collider;
    public AudioSource sound;
    public AnalogGlitch ag;

	// Use this for initialization
	void Start () {
        StartCoroutine(SpawnStatues());
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    IEnumerator SpawnStatues()
    {
        sound.Play();

        yield return new WaitForSeconds(5);
        
        for (int i = 0; i < 45; i++)
        {
            SpawnOneStatue();
            ag.verticalJump += 0.007F;
            ag.scanLineJitter += 0.007F;
            ag.colorDrift += 0.007F;

			ag.verticalJump = Mathf.Clamp(ag.verticalJump, 0, 0.05f);
			ag.scanLineJitter = Mathf.Clamp(ag.scanLineJitter, 0, 0.17f);
			ag.colorDrift = Mathf.Clamp(ag.colorDrift, 0, 0.25f);

            yield return new WaitForSeconds(0.5F);
        }
        
        for (int i = 0; i < 10; i++)
        {
            ag.verticalJump -= 0.0315F;
            ag.scanLineJitter -= 0.0315F;
            ag.colorDrift -= 0.0315F;

			ag.verticalJump = Mathf.Clamp(ag.verticalJump, 0, 0.05f);
			ag.scanLineJitter = Mathf.Clamp(ag.scanLineJitter, 0, 0.17f);
			ag.colorDrift = Mathf.Clamp(ag.colorDrift, 0, 0.25f);

            yield return new WaitForSeconds(0.5F);
        }

    }

    void SpawnOneStatue()
    {
        var newStatue = GameObject.Instantiate(prefab);
        var position = new Vector3();
        var bounds = this.collider.bounds;
        position.x = Random.Range(bounds.min.x, bounds.max.x);
        position.y = Random.Range(bounds.min.y, bounds.max.y);
        position.z = Random.Range(bounds.min.z, bounds.max.z);
        newStatue.transform.position = position;
        newStatue.transform.rotation = Random.rotationUniform;

    }
}
