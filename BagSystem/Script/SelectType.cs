using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectType : MonoBehaviour {
    //public WeaponInBag BagObject;

    public GameObject[] Selects;

    public static int SelectNumber;

    float Xnumber;

    float Ynumber;

    // Use this for initialization
    void Start () {
        SelectNumber = -1;

        //BagObject.SelectToObject = 0;

    }
	
	// Update is called once per frame
	void Update ()
    {
        /*
        print(Input.mousePosition);

        print(Screen.width.ToString() + ':' + Screen.height.ToString()+":0");
        */

        Xnumber = Input.mousePosition.x - Screen.width / 2;

        Ynumber = (Input.mousePosition.y - Screen.height /2)-20;

        //print(Xnumber.ToString() + ':' + Ynumber.ToString() + ":0");



        if (Mathf.Sqrt(Xnumber * Xnumber + Ynumber * Ynumber) > 50)
        { 
            float angle = Mathf.Atan2(Xnumber, Ynumber) * Mathf.Rad2Deg;
            SelectNumber = ((int)((-angle + 180) / 36) + 1) % 10;
        }
        else
            SelectNumber = -1;




        //print(SelectNumber);

        for (int i = 0; i < 10; i++)
        {
            if (i != SelectNumber)
                Selects[i].transform.localScale = Vector3.Lerp(Selects[i].transform.localScale, new Vector3(1, 1, 1), 0.5f);
            else
            {
                Selects[i].transform.localScale = Vector3.Lerp(Selects[i].transform.localScale, new Vector3(1.1f, 1.1f, 1.1f), 0.5f);
                //BagObject.SelectToObject = SelectNumber;
            }
        }








    }


    public void Select()
    {



    }
    
}
