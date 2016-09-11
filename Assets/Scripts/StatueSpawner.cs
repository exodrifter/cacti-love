using UnityEngine;
using System.Collections;

public class StatueSpawner : MonoBehaviour {
    public GameObject prefab;
    public BoxCollider collider;

	// Use this for initialization
	void Start () {
        StartCoroutine(SpawnStatues());
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    IEnumerator SpawnStatues()
    {
        yield return new WaitForSeconds(5);
        for (int i = 0; i < 7; i++)
        {
            SpawnOneStatue();
            yield return new WaitForSeconds(Random.Range(0.2F, 0.5F));
        }
        
        StartCoroutine(SpawnStatues());
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
