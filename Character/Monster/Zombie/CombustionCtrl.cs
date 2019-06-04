using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CombustionCtrl : MonoBehaviour {

    public MirPlayer Player;

    protected Animator animator;

    public GameObject PreFire;

    GameObject Fire;


    bool IsCombustion;
    bool IsAttack;
    bool IsBite;


    public float Moring;

    public float Night;

    public bool TriggerCanUse;


    // Use this for initialization
    void Start () {

        Player = GameObject.Find("Camera_Direction").GetComponent<MirPlayer>();

        animator = GetComponent<Animator>();

        Fire = Instantiate(PreFire) as GameObject;


       IsCombustion = false;
    }
	
	// Update is called once per frame
	void Update () {



        AnimatorStateInfo stateinfo = animator.GetCurrentAnimatorStateInfo(0);


        if (Vector3.Distance(Player.transform.position, this.transform.position) < 2)
        {
            animator.SetBool("Attack", true);
        }
        else
        {/*
            RaycastHit hit;
            bool grounded = Physics.Raycast(transform.position + new Vector3(0, 1, 0), transform.forward, out hit);
            if (grounded && hit.distance < 1)
            {
                animator.SetBool("Attack", true);
                GetComponent<BoxCollider>().enabled = true;
            }
            else
            {
                animator.SetBool("Attack", false);
                GetComponent<BoxCollider>().enabled = false;
            }*/
        }

        if (Vector3.Distance(Player.transform.position, this.transform.position) >1.5 && Vector3.Distance(Player.transform.position, this.transform.position) < 50)
        {
            animator.SetBool("IsMove", true);

        }
        else
        {
            animator.SetBool("IsMove", false);
        }



        animator.SetFloat("Speed", 1-(Vector3.Distance(Player.transform.position, this.transform.position) - 20)/ 30);
               


        if (TOD_Sky.SunRoung > Moring && TOD_Sky.SunRoung < Night)
        {

            print("AAA");
            if (!stateinfo.IsName("Combustion"))
            { 
                IsCombustion = true;

                animator.SetBool("IsCombustion", true);
            }

        }

        if (!stateinfo.IsName("Combustion"))
        {
            Fire.SetActive(false);
        }


        if (stateinfo.IsName("Combustion") && stateinfo.normalizedTime <= 0.4f)
        {
            if (IsCombustion)
            {
                IsCombustion = false;
                Fire.SetActive(true);
            }
        }

        if (stateinfo.IsName("Combustion") && stateinfo.normalizedTime > 0.4f)
        {

            animator.SetBool("Die", true);

        }

        if (stateinfo.IsName("Die") && stateinfo.normalizedTime > 0.9f)
        {  
            Fire.SetActive(false);
        }

        Fire.transform.position = this.transform.position;



        if (!stateinfo.IsName("Die"))
        {
            this.transform.LookAt(new Vector3(Player.transform.position.x, this.transform.position.y, Player.transform.position.z));
        }



 





        if (stateinfo.IsName("Attack") && stateinfo.normalizedTime >= 0.4f)
        {
            if (!IsAttack)
            {
                IsAttack = true;
                TriggerCanUse = true;
            }
        }

        if (stateinfo.IsName("Attack") && stateinfo.normalizedTime < 0.4f)
        {
            IsAttack = false;
            animator.SetBool("Attack", false);
        }



        if (stateinfo.IsName("Bite") && stateinfo.normalizedTime >= 0.4f)
        {
            RaycastHit hit;
            bool grounded = Physics.Raycast(transform.position + new Vector3(0, 1, 0), transform.forward, out hit);


            if (!IsBite && grounded && hit.distance < 1 && hit.transform.GetComponent<ObjectBreak>())
            {
                IsBite = true;

                print("AI Attack");
                if (hit.transform.GetComponent<ObjectBreak>().Break(20)&& hit.transform.GetComponent<ObjectBreak>().BreakObjects.Length > 0)
                {
                    Destroy(hit.transform.gameObject);
                }
            }
        }

        if (stateinfo.IsName("Bite") && stateinfo.normalizedTime < 0.4f)
        {
            IsBite = false;
        }


    }

    public void Die()
    {
        animator.SetBool("Die", true);
    }

    private void OnTriggerEnter(Collider other)
    {

    }
    private void OnTriggerStay(Collider other)
    {
        if (TriggerCanUse)
        {
            TriggerCanUse = false;
            if (other.transform.GetComponent<ObjectBreak>())
            {
                if (other.transform.GetComponent<ObjectBreak>().Break(20) && other.transform.GetComponent<ObjectBreak>().BreakObjects.Length > 0)
                {
                    Destroy(other.transform.gameObject);
                }
            }
            else
            {
                if (other.transform.parent != null && other.transform.parent.GetComponent<ObjectBreak>())
                {
                    if (other.transform.parent.GetComponent<ObjectBreak>().Break(20) && other.transform.parent.GetComponent<ObjectBreak>().BreakObjects.Length > 0)
                    {
                        Destroy(other.transform.parent.gameObject);
                    }
                }
            }
        }
        if ((other.transform.parent!=null && other.transform.parent.GetComponent<ObjectBreak>()) || other.transform.GetComponent<ObjectBreak>())
        {
            animator.SetBool("Attack", true);
        }

    }
    private void OnTriggerExit(Collider other)
    {
        
    }




}
