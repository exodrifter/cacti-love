using UnityEngine;
using System.Collections;

public class Cactronomocon : MonoBehaviour {

    public GameObject cactus;
    public GameObject[] PortalSpawns;
    private Vector3 playerPos;

    private float elapsedTime = 0f;
    public float startDelay = 3f;
    public float startStrengthIncreaseDelay = 60f;
    float strengthIncreaseDelay = 5f;
    float nextStrengthIncrease = 0f;
    public float spawnFrequencyMinutes = 3f;
    public float nextSpawnTime = 0f;
    public int maxCacti = 100;
    public int cacti = 1;
    private float strengthCactiIncreaseCountDelay = 5f;

    // Use this for initialization
    void Start () {
        playerPos = GameObject.FindGameObjectWithTag("Player").transform.position;

    }
	
    void SummonCactus()
    {
        if(PortalSpawns.Length > 0 && cacti <= maxCacti)
        {
            int index = Random.Range(0, PortalSpawns.Length);
            GameObject spawnRegion = PortalSpawns[index];
            Transform tr = spawnRegion.GetComponent<Transform>();
            Bounds bounds = spawnRegion.GetComponent<Collider>().bounds;
            float x = Random.Range(bounds.min.x, bounds.max.x);
            float y = Random.Range(bounds.min.y, bounds.max.y);
            float z = Random.Range(bounds.min.z, bounds.max.z);
            Vector3 spawn = new Vector3(x, y, z);
            Instantiate(cactus, spawn, Quaternion.LookRotation(playerPos - spawn));
            cacti++;
        }
    }

	// Update is called once per frame
	void Update () {
        elapsedTime += Time.deltaTime;
        if(elapsedTime >= startDelay)
        {
            if(elapsedTime >= nextSpawnTime)
            {
                nextSpawnTime = elapsedTime + 60f/spawnFrequencyMinutes;
                SummonCactus();
            }      
            if(elapsedTime >= startStrengthIncreaseDelay)
            {
                if (cacti > nextStrengthIncrease && elapsedTime >= nextStrengthIncrease)
                {

                    nextStrengthIncrease = elapsedTime + strengthCactiIncreaseCountDelay;
                    FollowTransform.launchForce += 1f;
                    if (FollowTransform.launchForce > 50f)
                    {
                        FollowTransform.speed += 3f;
                        FollowTransform.rotationSpeed += 3f;
                    }
                }
            }
        }
        
	}
}
