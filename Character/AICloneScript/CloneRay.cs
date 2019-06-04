using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class CloneRay : MonoBehaviour {
    public TOD_Sky WorldTime;
    public GameObject Father;
    public float Moring;
    public float Night;
    public GameObject FPSCamera;
    public GameObject RayArray;
    private Ray ray;
    public int AiNum=4;
    public GameObject PreEnemy;
    GameObject Enemy;
    [System.Serializable]
    public struct Animal
    {
        public GameObject Leader;
        public GameObject Member;
        public int GroupNumMin;
        public int GroupNumMax;
        public float GroupRandom;


        public int ActionMoring;
        public int ActionNight;

        public float BrithNear;
        public float BrithFar;

        public int BrithMoring;
        public int BrithNight;

        public float RefreshTimeMin;
        public float RefreshTimeMax;
        public float RefreshTime;
        public float TempTime;

        public bool IsRefresh;

    }
    public Animal[] Animals;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame




	void Update () {        
		RayArray.transform.position = new Vector3(FPSCamera.transform.position.x, RayArray.transform.position.y, FPSCamera.transform.position.z);
        //float Times = TOD_Sky.SunRoung;
        float Times = WorldTime.Cycle.Hour;

        for (int i = 0; i < Animals.Length; i++)
        {
            bool IsInstance=false;

            if (Animals[i].BrithMoring < Animals[i].BrithNight)
                IsInstance = Times >= Animals[i].BrithMoring && Times <= Animals[i].BrithNight;
            else
                IsInstance = Times >= Animals[i].BrithMoring || Times <= Animals[i].BrithNight;

            if (IsInstance)
            {
                if (Animals[i].IsRefresh)
                {
                    Animals[i].RefreshTime = Random.Range(Animals[i].RefreshTimeMin, Animals[i].RefreshTimeMax);
                    Animals[i].TempTime = Time.time;
                    Animals[i].IsRefresh = false;
                }
                else
                {
                    if (Time.time - Animals[i].TempTime > Animals[i].RefreshTime)
                    {
                        Animals[i].IsRefresh = true;

                        int GroupNum = Random.Range(Animals[i].GroupNumMin, Animals[i].GroupNumMax);
                                                
                        float r = Random.Range(Animals[i].BrithNear, Animals[i].BrithFar);
                        float Rot = Random.Range(0,360);
                        float x = Mathf.Sin(Rot)* r;
                        float y = Mathf.Cos(Rot)* r;
                        Vector3 GropPoint = this.transform.position + new Vector3(x, this.transform.position.z + 10, y);

                        for (int j = 0; j < GroupNum; j++)
                        {
                            if (j == 0)
                                Brith(Animals[i].Leader, GropPoint + new Vector3(Random.Range(-Animals[i].GroupRandom, Animals[i].GroupRandom), 0, Random.Range(-Animals[i].GroupRandom, Animals[i].GroupRandom)));
                            else
                                Brith(Animals[i].Member, GropPoint + new Vector3(Random.Range(-Animals[i].GroupRandom, Animals[i].GroupRandom), 0, Random.Range(-Animals[i].GroupRandom, Animals[i].GroupRandom)));
                        }
                    }
                }
            }
        }
    }

    public void Brith(GameObject Object, Vector3 Point)
    {

        ray = new Ray(Point, -transform.up);
        RaycastHit hit;
        //int mask = 0;

        if (Physics.Raycast(ray, out hit, 500))
        {

            if (hit.collider.name.Contains("Chunk"))
            {

                Enemy = Instantiate(Object) as GameObject;
                Enemy.transform.position = new Vector3(hit.point.x, hit.point.y + 0.1f, hit.point.z);
                //Enemy.name = "enemy";
                Debug.DrawLine(this.transform.position, hit.point, Color.red, 100);
                Debug.DrawLine(Point, hit.point, Color.red, 100);
            }
        }
    }







}
