using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AiNumCtrl : MonoBehaviour {
    public static int AiNum;




    // Use this for initialization
    void Start ()
    {
        AiNum = 0;
        }
	
	// Update is called once per frame
	void Update () {
       // print(AiNum);
	}

    private void OnTriggerEnter(Collider other)
    {
        if (other.name.Contains("enemy"))
        {
            AiNum++;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.name.Contains("enemy"))
        {
            AiNum--;
        }
    }














}
