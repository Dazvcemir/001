using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BehaviorDesigner.Runtime.Tasks;


//脚本作用：控制物体追逐Player
public class Attack : Action {
    public static GameObject target;
    protected Animator animator;
	public float Distance=0.5f;
	float SqrDistance;

	public Transform AI;


    public override void OnStart()
    {
        animator = GetComponent<Animator>();
        target = GameObject.Find("AnimationCamera");
    }

    
    public override TaskStatus OnUpdate()
	{
        transform.LookAt(new Vector3(target.transform.position.x, AI.transform.position.y, target.transform.position.z));
        AnimatorStateInfo stateinfo = animator.GetCurrentAnimatorStateInfo(0);
        	
        
		if (stateinfo.IsName ("Attack")) 
		{
            animator.SetBool("Attack", false);
            return TaskStatus.Success;
		} else 
		{
            animator.SetBool("Attack", true);
            return TaskStatus.Running;
		}
        //return TaskStatus.Success;

    }
    

	public override void OnEnd()
	{
	}








}
