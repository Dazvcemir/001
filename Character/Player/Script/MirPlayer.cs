using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using UnityStandardAssets.Characters.FirstPerson;

public class MirPlayer : MonoBehaviour {
    public float HealthWalk;
    public float HealthRun;
    
    public float HungerWalk;
    public float HungerRun;


    public RigidbodyFirstPersonController Camera;
    public PostProcessProfile HealthBacis;
    public PostProcessProfile Bacis;
    public float HP;
    public float Hunge;
    [System.Serializable]
    public struct Status
    {
        public string Name;
        public PostProcessProfile sharedProfile;
    }

    public Status[] Statuses;

    public ObjectBreak ObjectBreaker;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (HP != ObjectBreaker.HP)
        {
            HP = Mathf.Lerp(HP, ObjectBreaker.HP, 0.2f);
        }


        Hunge -= Time.deltaTime*0.1f;

        Camera.movementSettings.RunMultiplier =(Hunge/100)+1;

        if (HP >=0&& Hunge <= 20)
        {
            ObjectBreaker.HP -= Time.deltaTime * 20 / (Hunge+5);
        }


        MixPost(HealthBacis, Hunge / 100, Statuses[0].sharedProfile, (100 - Hunge) / 100, Statuses[1].sharedProfile);

        if (HP >= 60)
        {
            MixPost(Bacis, 1, HealthBacis, 0, HealthBacis);
        }
        if ( HP >= 20 && HP < 60)
        {
            MixPost(Bacis, (HP-20)/40, HealthBacis, (60 - HP)/40, Statuses[3].sharedProfile);
        }
        if ( HP >= 0 && HP < 20)
        {
            MixPost(Bacis, HP / 20, Statuses[3].sharedProfile, (20 - HP) / 20, Statuses[4].sharedProfile);
        }


        if (HP <= 0)
        {
            Die();
        }

    }

    public void MixPost(PostProcessProfile Target, float Blend1,PostProcessProfile Aim1, float Blend2, PostProcessProfile Aim2)
    {
        Target.GetSetting<Vignette>().intensity.value = Blend1 * Aim1.GetSetting<Vignette>().intensity.value + Blend2 * Aim2.GetSetting<Vignette>().intensity.value;

        Target.GetSetting<Vignette>().color.value = Color.Lerp(Aim1.GetSetting<Vignette>().color.value, Aim2.GetSetting<Vignette>().color.value, Blend2);

        Target.GetSetting<ColorGrading>().saturation.value = Blend1 * Aim1.GetSetting<ColorGrading>().saturation.value + Blend2 * Aim2.GetSetting<ColorGrading>().saturation.value;

        Target.GetSetting<ColorGrading>().contrast.value = Blend1 * Aim1.GetSetting<ColorGrading>().contrast.value + Blend2 * Aim2.GetSetting<ColorGrading>().contrast.value;
        
        Target.GetSetting<ColorGrading>().mixerRedOutRedIn.value = Blend1 * Aim1.GetSetting<ColorGrading>().mixerRedOutRedIn.value + Blend2 * Aim2.GetSetting<ColorGrading>().mixerRedOutRedIn.value;

        Target.GetSetting<DepthOfField>().focusDistance.value = Blend1 * Aim1.GetSetting<DepthOfField>().focusDistance.value + Blend2 * Aim2.GetSetting<DepthOfField>().focusDistance.value;
        Target.GetSetting<DepthOfField>().aperture.value = Blend1 * Aim1.GetSetting<DepthOfField>().aperture.value + Blend2 * Aim2.GetSetting<DepthOfField>().aperture.value;
        Target.GetSetting<DepthOfField>().focalLength.value = Blend1 * Aim1.GetSetting<DepthOfField>().focalLength.value + Blend2 * Aim2.GetSetting<DepthOfField>().focalLength.value;
    }

    public void Die()
    {
        this.GetComponent<Rigidbody>().constraints = ~RigidbodyConstraints.FreezeAll;
        Destroy(GetComponent<RigidbodyFirstPersonController>());
        Destroy(GetComponent<MirPlayer>());
    }
}
