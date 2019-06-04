using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CreatUI : MonoBehaviour {

    public Canvas canvas;//画布
    private RectTransform rectTransform;//坐标

    public GameObject SelectLight;

    int Types;

    public Image[] SelectCube;

    public Image[] Hand;



    public Sprite[] Stelby;
    public Sprite[] Instryment;
    public Sprite[] Resurcamy;
    public Sprite[] Bostroena;

    public GameObject HandSelect;

    public GameObject BagSelect;

    GameObject SelectTempObject;

    public bool IsSeclect;

    Vector2 TempPos;
    Vector2 UIPos;

    // Use this for initialization
    void Start() {
        canvas = GameObject.Find("Canvas").GetComponent<Canvas>();
        rectTransform = canvas.transform as RectTransform; //也可以写成this.GetComponent<RectTransform>(),但是不建议；


        TransType(0);
    }


    void Update() {

        if (IsSeclect)
        {
            MouseMove();

            if (Input.GetMouseButton(0))
            {
                IsSeclect = false;


                if (true)
                {
                    SelectTempObject.GetComponent<Image>().rectTransform.anchoredPosition = UIPos;

                }
                

            }





        }





    }

    void MouseMove()
    {
        Vector2 pos;
        if (RectTransformUtility.ScreenPointToLocalPointInRectangle(rectTransform, Input.mousePosition, canvas.worldCamera, out pos))
        {
            rectTransform.anchoredPosition = pos;
            Debug.Log(pos);

            SelectTempObject.GetComponent<Image>().rectTransform.anchoredPosition = UIPos - (TempPos-pos);
        }
    }

    void MouseMoveFrist()
    {
        Vector2 pos;
        if (RectTransformUtility.ScreenPointToLocalPointInRectangle(rectTransform, Input.mousePosition, canvas.worldCamera, out pos))
        {
            rectTransform.anchoredPosition = pos;
            Debug.Log(pos);
            TempPos = pos;

        }
    }








    public void SelectClass(GameObject Select)
    {
        SelectLight.transform.position = Select.transform.position;
    }


    public void ClickBag(GameObject Select)
    {
        BagSelect = Select;
        IsSeclect = true;
        MouseMoveFrist();

        UIPos = Select.GetComponent<Image>().rectTransform.anchoredPosition;

        SelectTempObject = Select;




    }





    public void TransType(int Type)
    {
        Types = Type;

        switch (Types)
        {
            case 0:
                FreshUI(Stelby);
                break;
            case 1:
                FreshUI(Instryment);
                break;
            case 2:
                FreshUI(Resurcamy);
                break;
            case 3:
                FreshUI(Bostroena);
                break;         
        }

    }

    void FreshUI(Sprite[] FrUI)
    {
        for (int i=0; i < SelectCube.Length; i++)
        {
            if (i < FrUI.Length)
            {
                SelectCube[i].sprite = FrUI[i];
                SelectCube[i].transform.parent.gameObject.SetActive(true);
            }
            else
            {
                SelectCube[i].sprite = null;
                SelectCube[i].transform.parent.gameObject.SetActive(false);
            }




        }


    }














}
