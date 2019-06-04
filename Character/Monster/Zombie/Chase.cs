using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BehaviorDesigner.Runtime.Tasks;


//脚本作用：控制物体追逐Player
public class Chase : Action {
	protected Animator animator;

    public GameObject target;
	public float Distance=0.5f;
	float SqrDistance;
	public float Speed;
	public Transform AI;



	public override void OnStart()
	{
        
        animator = GetComponent<Animator>();
		SqrDistance = Distance * Distance;

        target = GameObject.Find("AnimationCamera");
        

    }


	public override TaskStatus OnUpdate()
	{     
        if (target == null) 
		{
			return TaskStatus.Failure;
		}

        transform.LookAt(new Vector3(target.transform.position.x, AI.transform.position.y, target.transform.position.z));

        animator.SetBool("IsMove", true);
		animator.SetFloat("Speed", Speed);

        
        if ((AI.transform.position - target.transform.position).sqrMagnitude < SqrDistance)
        {
			return TaskStatus.Success;
		} 
		else 
		{
			return TaskStatus.Running;
		}



	}


	public override void OnEnd()
	{
		animator.SetBool("IsMove", false);
	}








}
