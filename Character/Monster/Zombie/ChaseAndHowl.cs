using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BehaviorDesigner.Runtime.Tasks;


//脚本作用：控制物体追逐Player
public class ChaseAndHowl : Action {
    public GameObject target;
    protected Animator animator;
	public float Speed;
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

		animator.SetBool("Howl", true);

		if (stateinfo.IsName ("Howl") && stateinfo.normalizedTime > 0.85f) 
		{
			return TaskStatus.Success;
		} else 
		{
			return TaskStatus.Running;
		}







	}


	public override void OnEnd()
	{
		animator.SetBool("Howl", false);
	}








}
