using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DieClearCtrl : MonoBehaviour {
    public GameObject[] Zombie;

    protected Animator[] animator;

    int ArrayNum;


    AnimatorStateInfo[] stateinfo;

    // Use this for initialization
    void Start () {
       // animator = Zombie.GetComponent<Animator>();

    }

    // Update is called once per frame
    void Update () {
        ArrayNum = this.transform.childCount;


        Zombie = new GameObject[ArrayNum];

        animator = new Animator[ArrayNum];

        stateinfo= new AnimatorStateInfo[ArrayNum];

        for (int i = 0; i < ArrayNum; i++)
        {
            Zombie[i] = this.transform.GetChild(i).gameObject;
            animator[i]=this.transform.GetChild(i).gameObject.GetComponent<Animator>();
            stateinfo[i]= animator[i].GetCurrentAnimatorStateInfo(1);

            if (stateinfo[i].IsName("Die") && stateinfo[i].normalizedTime > 0.9f)
            {
                AiNumCtrl.AiNum--;
                Destroy(Zombie[i], 2);


                print("AAAAA");
            }

        }












        //AnimatorStateInfo stateinfo = animator.GetCurrentAnimatorStateInfo(0);


    }
}
