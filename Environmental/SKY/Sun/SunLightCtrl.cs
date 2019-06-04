using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SunLightCtrl : MonoBehaviour {

    public float SunwhiteNUM = 20;

    public float SunredNUM=10;

    public GameObject PreLight;

    Light SunLight;

    float Suntime;


    public Color UtraColor;

    public Color DiyniaColor;

    public Color VecheraColor;

    float Addfloat;


    public static float SunRoteX;


    // Use this for initialization
    void Start () {
        SunLight = PreLight. GetComponent<Light>();
	}
	
	// Update is called once per frame
	void Update () {

        SunRoteX = PreLight.transform.eulerAngles.x;


        //  Suntime = Math.Abs(PreLight.transform.rotation.x-0.5f)*2;


        PreLight.transform.Rotate(Vector3.right /240);  





        Suntime = PreLight.transform.eulerAngles.x/90   ;

        Suntime = (1 - Suntime) * 1.2f;



        if (PreLight.transform.eulerAngles.x >= 180 || PreLight.transform.eulerAngles.x <= 0)
        {
            PreLight.SetActive(false);
        }




            if ((PreLight.transform.eulerAngles.x < SunredNUM && PreLight.transform.eulerAngles.x >0) || (PreLight.transform.eulerAngles.x > 180- SunredNUM && PreLight.transform.eulerAngles.x < 180))
        {

            PreLight.SetActive(true);
            float VecheraFloat = PreLight.transform.eulerAngles.x / SunredNUM;

            SunLight.color = Color.Lerp(VecheraColor, DiyniaColor, VecheraFloat);
        }



        if ((PreLight.transform.eulerAngles.x < SunwhiteNUM && PreLight.transform.eulerAngles.x > SunredNUM) || (PreLight.transform.eulerAngles.x > 180 - SunwhiteNUM && PreLight.transform.eulerAngles.x < 180- SunredNUM))
        {

            PreLight.SetActive(true);
            float UtraFloat = (PreLight.transform.eulerAngles.x- SunredNUM) / (SunwhiteNUM-SunredNUM);
            SunLight.color = Color.Lerp(DiyniaColor, UtraColor, UtraFloat);

        }












        /*

        if (PreLight.transform.eulerAngles.x >= SunredNUM && PreLight.transform.eulerAngles.x <= 180- SunredNUM)
        {
            PreLight.SetActive(true);
                SunLight.color = Color.Lerp(, DiyniaColor, Suntime);
            
        }*/





        



        //print(Suntime);
	}
}
