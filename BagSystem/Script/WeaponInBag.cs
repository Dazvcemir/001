using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VoxelandDemo;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;
//using VoxelandDemo;

public class WeaponInBag : MonoBehaviour
{
    public RigidbodyFirstPersonController Player;
    
    public VoxelandController VoxelandObject;

    public GameObject UITransform;

    public bool UIActive;
    public GameObject Heightlight;

    public Color Color_Select;

    public Color TempColor;

    [System.Serializable]
    public struct IntalItem
    {
        public ItemClass item;
        public int Number;
    }

    public IntalItem[] IntalItems;

    [System.Serializable]
    public struct IntRange
    {
        public int Start;
        public int Length;
    }

    [System.Serializable]
    public struct RawUI
    {
        public GameObject Father;
        public GameObject[] Kindden;
        public Text[] Texts;
        public float Temptime;
        public Vector3 AddPosition;
        public float ShowTime;
    }
    public RawUI RawUIObject;

    [System.Serializable]
    public struct ReporterUIs
    {
        public Image Fater;
        public Image UI;
        public Text Name;
        public Text Number;
    }

    public ReporterUIs ReporterUI;

    public void ShowRaw(int ShowType)
    {
        //print(ShowType);
        //RawUIObject.Father.GetComponent<RectTransform>().position = Dictionary_Button.Button[ShowType].GetComponent<RectTransform>().position + RawUIObject.AddPosition;
        for (int i = 0; i < RawUIObject.Kindden.Length; i++)
        {
            if (i < DictionaryArrays[(int)Click].Dictionary[ShowType].GetComponent<ItemClass>().Raws.Length)
            {
                RawUIObject.Kindden[i].GetComponent<Image>().sprite = DictionaryArrays[(int)Click].Dictionary[ShowType].GetComponent<ItemClass>().Raws[i].Type.UI;
                RawUIObject.Texts[i].text = DictionaryArrays[(int)Click].Dictionary[ShowType].GetComponent<ItemClass>().Raws[i].Num.ToString();
            }
            else
            {
                RawUIObject.Kindden[i].GetComponent<Image>().sprite = EmptyItem.UI;
                RawUIObject.Texts[i].text = "";
            }
        }
        RawUIObject.Temptime = Time.time;
    }

    public void ShowRaw_Update()
    {
        RawUIObject.Father.SetActive(Time.time - RawUIObject.Temptime < RawUIObject.ShowTime&& Time.time> RawUIObject.ShowTime);
    }

    public void FreshUI(int Type,bool CanClick)
    {
        if (Items[Type].Type>=0 && Items[Type].GroupInBag > 0)
        {
            Items_Button[Type].GetComponent<ButtonLattice>().image.sprite = Items[Type].UI;
            Items_Button[Type].GetComponent<ButtonLattice>().Text.text = "(" + Items[Type].GroupInBag.ToString() + "/" + Items[Type].MaxGroupInBag.ToString() + ")" + "  " + Dictionary[Items[Type].Type].name;
        }
        else
        {
            if(Items[Type]!=EmptyItem)
            Destroy(Items[Type].gameObject);

            Items[Type] = EmptyItem;

            Items_Button[Type].GetComponent<ButtonLattice>().image.sprite = EmptyItem.UI;
            Items_Button[Type].GetComponent<ButtonLattice>().Text.text = EmptyItem.Text;

        }
    }

    public GameObject Buttons;

    public GameObject Dictionary_Buttons;
    
    public Transform WeaponParent;
    
    public Vector3 Size;

    public GameObject HeigtLight;

    public GameObject Hand;
    public Image UI_HandShow;
    public Image UI_PreAmmo;
    public Image UI_Ammo0;
    public Text UI_AmmoText;
    public Text UI_Name;


    public void FreshHandUI()
    {
        if (Hand != null)
        {
            UI_Name.text = Hand.name;
            switch (Hand.GetComponent<ItemClass>().Category)
            {
                case ItemClass.Categorys.Null:
                    break;
                case ItemClass.Categorys.General:
                    break;
                case ItemClass.Categorys.Gun:
                    /*if (Hand.GetComponent<Weaponclass>().Prelaunch != null)
                        UI_PreAmmo.sprite = Items[Hand.GetComponent<Weaponclass>().Prelaunch].UI;
                    else
                        UI_PreAmmo.sprite = EmptyItem.UI;*/


                    if (Hand.GetComponent<Weaponclass>().MagazineOnGun != null && Hand.GetComponent<Weaponclass>().MagazineOnGun.Type >= 0)
                        UI_Ammo0.sprite = Items[Hand.GetComponent<Weaponclass>().MagazineOnGun.Type].UI;
                    else
                        UI_Ammo0.sprite = EmptyItem.UI;


                    if (Hand.GetComponent<Weaponclass>().MagazineOnGun != null && Hand.GetComponent<Weaponclass>().MagazineOnGun.Type >= 0)
                        UI_AmmoText.text = Items[Hand.GetComponent<Weaponclass>().MagazineOnGun.Type].name;
                    else
                        UI_AmmoText.text = null;



                    break;
                case ItemClass.Categorys.Cold:
                    break;
                case ItemClass.Categorys.Building:
                    break;
                case ItemClass.Categorys.Ammo:
                    break;
                case ItemClass.Categorys.Magazine:
                    break;
            }
            if (Hand.GetComponent<ItemClass>().UI_PV != null)
            {
                UI_HandShow.sprite = Hand.GetComponent<ItemClass>().UI_PV;
            }
            else
            {
                UI_HandShow.sprite = Hand.GetComponent<ItemClass>().UI;
            }
        }
        else
        {
            UI_Name.text =null;
            UI_HandShow.sprite = EmptyItem.UI;
        }        
    }

    public int SelectType;
    public int SelectTarget;
    public GameObject[] Dictionary;//字典（物品目录，按照数组角标查找物品）

    public ItemClass[] Items;

    public ItemClass EmptyItem;

    public GameObject[] Items_Button;

    public GameObject HeightLight;

    public enum Categorys
    {
        Weapon = 0, Tools = 1, Material = 2, Builder = 3
    };
    public Categorys Click;

    [System.Serializable]
    public struct Button_Father
    {
        public GameObject PreButton;
        public bool IsAwake;
        public float Width;
        public float Height;
        public float Distance;
        public int Num;
        public int NumX;
        public int NumY;
        public Transform Father;
        public GameObject[] Button;
    }

    public Button_Father[] button_Father;

    public Button_Father Dictionary_Button;

    [System.Serializable]
    public struct Dictionary_Array
    {
        public GameObject[] Dictionary;
    }

    public Dictionary_Array[] DictionaryArrays;
    
    public ItemClass[] Box;

    public Button_Father Box_Button;

    public void Initialization_Box()
    {
        float SenX = 0;
        float SenY = 0;

        SenX = Box_Button.Father.GetComponent<RectTransform>().sizeDelta.x / 2;
        SenY = Box_Button.Father.GetComponent<RectTransform>().sizeDelta.y / 2-10;

        Box_Button.Button = new GameObject[Box_Button.Num];
        for (int i = 0; i < Box_Button.Num; i++)
        {
            Box_Button.Button[i] = Instantiate(Box_Button.PreButton, Box_Button.Father);

            int X = i % Box_Button.NumX;
            int Y = i / Box_Button.NumX;

            Box_Button.Button[i].GetComponent<RectTransform>().localPosition = new Vector2((X + 1) * Box_Button.Distance + (X + 0.5f) * Box_Button.Width - SenX, SenY - ((Y + 1) * Box_Button.Distance + (Y + 0.5f) * Box_Button.Height));
            Box_Button.Button[i].name = Box_Button.Father.name + "(" + i.ToString() + ")";
            Box_Button.Button[i].GetComponent<ButtonLattice>().ClickType = i;
            Box_Button.Button[i].GetComponent<ButtonLattice>().weaponInBag = this;
        }

        Box = new ItemClass[Box_Button.Num];

        for (int i = 0; i < Box_Button.Num; i++)
        {
            Box[i] = EmptyItem;
        }


    }

    public void ChangeUIActive()
    {
        FreshHandUI();
    }

    public bool Magazine_Judge(int Type,ItemClass Content)
    {
        bool Returne = false;

        for (int i=0;i< Content.Contents.Length;i++)
        {
            if (Type == Content.Contents[i])
            {
                Returne = true;
            }
        }

        return Returne;

    }

    public void Magazine_ClickButton(int ClickType)
    {
        if (Hand != null)
        {
            if (Magazine_Judge(ClickType, Hand.GetComponent<ItemClass>()))
            {
                ClickButton(ClickType);                
            }
        }

    }

    public int Add_EmptyBag(int Num, int item)
    {
        Reporter(Dictionary[item].GetComponent<ItemClass>(), Num);
        if (item >= 0)
        {
            for (int i = 8; i < Items.Length; i++)
            {
                if (Items[i].Type < 0) //Items为空
                {
                    if (Num > Dictionary[item].GetComponent<ItemClass>().MaxGroupInBag)//数量比这个格子最大容量还大
                    {
                        ItemClassAdd(i, Dictionary[item].GetComponent<ItemClass>().MaxGroupInBag, Dictionary[item].GetComponent<ItemClass>());
                        Num -= Items[i].MaxGroupInBag;
                        FreshUI(i, true);
                    }
                    else
                    {
                        ItemClassAdd(i, Num, Dictionary[item].GetComponent<ItemClass>());
                        Num = 0;
                        FreshUI(i, true);
                        break;
                        
                    }
                }
                else
                {
                    if (Items[i].Type == Dictionary[item].GetComponent<ItemClass>().Type && Items[i].GroupInBag <= Items[i].MaxGroupInBag)//Items内值与传递值同类，且，本Item数值不为满
                    {
                        if (Num > Items[i].MaxGroupInBag - Items[i].GroupInBag)//数量比这个格子剩余的容量还大
                        {
                            Num -= Items[i].MaxGroupInBag - Items[i].GroupInBag;

                            Items[i].GroupInBag = Items[i].MaxGroupInBag;
                            FreshUI(i, true);
                        }
                        else
                        {
                            Items[i].GroupInBag += Num;
                            Num = 0;
                            FreshUI(i, true);
                            break;
                        }
                    }
                }
            }
        }
        return Num;
    }

    public bool Sen_Try_Bag(int Num, int Type)
    {
        if (Type >= 0)
        {
            int TempNum = Num;
            for (int i = 8; i < Items.Length; i++)
            {
                if (Items[i].Type == Type)
                {
                    if (Num >= Items[i].GroupInBag)
                    {
                        Num -= Items[i].GroupInBag;
                    }
                    else
                    {
                        Num = 0;
                        break;
                    }
                }
            }

            if (Num > 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        else
        {
            return false;
        }
    }
    
    public void Sen_Bag(int Num, int Type)
    {
        if (Type >= 0)
        {
            for (int i = 8; i < Items.Length; i++)
            {
                if (Items[i].Type == Type)
                {
                    if (Num > Items[i].GroupInBag)
                    {
                        Num -= Items[i].GroupInBag;
                        Items[i].GroupInBag = 0;
                        FreshUI(i, true);
                        print(Num);
                    }
                    else
                    {
                        Items[i].GroupInBag -= Num;
                        Num = 0;
                        FreshUI(i, true);
                        break;
                    }
                }
            }
        }
    }
    
    public int Find_Magazine(int Num, int Type)
    {
        int Returen=-1;

        for (int i = 8; i < Items.Length; i++)
        {
            if (Items[i].Type == Type&& Items[i].GroupInBag>0)
            {
                if (Items[i].GetComponent<Magazine>().Number> Num)
                {
                    Returen = i;
                    break;
                }
            }
        }

        return Returen;
    }

    public int Find_Items(int Type)
    {
        int Returen = -1;

        int ItemAtHand=-1;

        for (int i = 0; i < Items.Length; i++)
        {
            if (Items[i].Type == Type && Items[i].GroupInBag > 0)
            {
                if (i == SelectType)
                {
                    ItemAtHand = i;
                }
                else
                {
                    Returen = i;
                    break;
                }
            }
        }

        if (Returen == -1 && ItemAtHand != -1)
        {
            Returen = ItemAtHand;
        }
        return Returen;
    }

    public void InsertSen()
    {
        int InsertType = Find_Items(Items[SelectType].Type);           

        Items[InsertType].GroupInBag--;

        if (Items[InsertType].GroupInBag <= 0)
        {
            if (InsertType == SelectType)
            {
                HandOut(false);
            }
        }
        FreshUI(InsertType, true);
    }

    public void HandOut(bool IsThrow)
    {
        Destroy(Hand);
        Hand = null;
        Items[SelectType] = EmptyItem;
        FreshHandUI();
    }

    public void Initialization_Items()
    {
        int ButtonArrayLength = 0;
        int ButtoFrontLength = 0;

        WeaponInBag weaponInBag = this.GetComponent<WeaponInBag>();

        for (int i = 0; i < button_Father.Length; i++)//得到数组的长度
        {
            ButtonArrayLength += button_Father[i].Num;
        }

        Items_Button = new GameObject[ButtonArrayLength];
        Items = new ItemClass[ButtonArrayLength];

        for (int i = 0; i < ButtonArrayLength; i++)
        {
            Items[i] = EmptyItem;//空集合待初始化
        }

      


        for (int i = 0; i < button_Father.Length; i++)
        {
            if (button_Father[i].IsAwake)
            {
                button_Father[i].Button = new GameObject[button_Father[i].Num];

            }



            for (int j = 0; j < button_Father[i].Button.Length; j++)
            {

                if (button_Father[i].IsAwake)
                {
                    float SenX = 0;
                    float SenY = 0;
                    SenX = button_Father[i].Father.GetComponent<RectTransform>().sizeDelta.x / 2;
                    SenY = button_Father[i].Father.GetComponent<RectTransform>().sizeDelta.y / 2;


                    button_Father[i].Button[j] = Instantiate(button_Father[i].PreButton, button_Father[i].Father);
                    int X = j % button_Father[i].NumX;
                    int Y = j / button_Father[i].NumX;
                    
                    button_Father[i].Button[j].GetComponent<RectTransform>().localPosition = new Vector2((X + 1) * button_Father[i].Distance + (X + 0.5f) * button_Father[i].Width- SenX, SenY-((Y + 1) * button_Father[i].Distance + (Y + 0.5f) * button_Father[i].Height));
                    button_Father[i].Button[j].name = button_Father[i].Father.name + "(" + j.ToString() + ")";

                }

                Items_Button[ButtoFrontLength + j] = button_Father[i].Button[j];


                Items_Button[ButtoFrontLength + j].GetComponent<ButtonLattice>().ClickType = ButtoFrontLength + j;
                Items_Button[ButtoFrontLength + j].GetComponent<ButtonLattice>().weaponInBag = this;
            }

            ButtoFrontLength += button_Father[i].Num;
        }

    }

    public void Initialization_Dictionary()
    {     
        float SenX = 0;
        float SenY = 0;

        SenX = Dictionary_Button.Father.GetComponent<RectTransform>().sizeDelta.x / 2;
        SenY = Dictionary_Button.Father.GetComponent<RectTransform>().sizeDelta.y / 2 -70;

        Dictionary_Button.Button = new GameObject[Dictionary_Button.Num];
        for (int i = 0; i < Dictionary_Button.Num; i++)
        {
            Dictionary_Button.Button[i]= Instantiate(Dictionary_Buttons, Dictionary_Button.Father);

            int X = i % Dictionary_Button.NumX;
            int Y = i / Dictionary_Button.NumX;

            Dictionary_Button.Button[i].GetComponent<RectTransform>().localPosition = new Vector2((X + 1) * Dictionary_Button.Distance + (X + 0.5f) * Dictionary_Button.Width - SenX, SenY - ((Y + 1) * Dictionary_Button.Distance + (Y + 0.5f) * Dictionary_Button.Height));
            Dictionary_Button.Button[i].name = Dictionary_Button.Father.name + "(" + i.ToString() + ")";
            Dictionary_Button.Button[i].GetComponent<ButtonLattice>().ClickType = i;
            Dictionary_Button.Button[i].GetComponent<ButtonLattice>().weaponInBag = this;
        }

        int TempNum = 0;

        for (int i = 0; i < DictionaryArrays.Length; i++)
        {
            TempNum += DictionaryArrays[i].Dictionary.Length;
        }

        Dictionary = new GameObject[TempNum];

        TempNum = 0;

        for (int i = 0; i < DictionaryArrays.Length; i++)
        {
            for (int j = 0; j < DictionaryArrays[i].Dictionary.Length; j++)
            {
                Dictionary[TempNum+j] = DictionaryArrays[i].Dictionary[j];                
                //print();
            }

            TempNum += DictionaryArrays[i].Dictionary.Length;
        }

        for (int i = 0; i < Dictionary.Length; i++)
        {
            Dictionary[i].GetComponent<ItemClass>().Type = i;
        }



    }

    public void RefeshDictionary(int Category)
    {
        DictionaryClickFrist = false;
        Dictionary_Button.Button[SelectFrist_Type_Dictionary].GetComponent<Image>().color = TempColor;
        Click = (Categorys)Category;

        for (int i = 0; i < Dictionary_Button.Button.Length; i++)
        {
            if (i < DictionaryArrays[Category].Dictionary.Length)
            {
                Dictionary_Button.Button[i].GetComponent<ButtonLattice>().image.sprite = DictionaryArrays[(int)Category].Dictionary[i].GetComponent<ItemClass>().UI;
                Dictionary_Button.Button[i].GetComponent<ButtonLattice>().ClickSet();
            }
            else
            {
                Dictionary_Button.Button[i].GetComponent<ButtonLattice>().image.sprite =EmptyItem.UI;
                Dictionary_Button.Button[i].GetComponent<ButtonLattice>().UnclickSet();
            }
        }

        HeightLight.GetComponent<RectTransform>().localPosition = new Vector2(Category *80- 120,0 );
    }
    
    void Inpute()
    {
        if (Input.GetKeyDown("`"))
        {
            SelectTarget = 0;
        }

        for (int i = 1; i < 10; i++)
        {
            if (Input.GetKeyDown(i.ToString()))
            {
                SelectTarget = i;
            }
        }

        if (Input.GetKeyDown(KeyCode.Tab))
        {
            UIActive = !UIActive;
            Player.mouseLook.SetCursorLock(!UIActive);
            UITransform.SetActive(UIActive);
            if (UIActive)
            {
                Player.mouseLook.XSensitivity = 0;
                Player.mouseLook.YSensitivity = 0;
            }
            else
            {
                Player.mouseLook.XSensitivity = 2;
                Player.mouseLook.YSensitivity = 2;
            }

        }

    }
    
    public void DedrawHand(int SaveType)//第一次点击ItemsButton时调用
    {
        if (Hand != null)
        {
            ItemClassSave(SaveType, Hand.GetComponent<ItemClass>());//基类数据储存

            switch (Hand.GetComponent<ItemClass>().Category)//按类别储存派生数据 &&有Dedraw的将Hand调用Dedraw，无Dedraw直接Destroy           
            {
                case ItemClass.Categorys.General:
                    Destroy(Hand);
                    break;
                case ItemClass.Categorys.Gun:
                    Hand.GetComponent<Weaponclass>().TypeInBag = SaveType;
                    Hand.GetComponent<Weaponclass>().IsDedraw = true;
                    break;
                case ItemClass.Categorys.Cold:
                    Hand.GetComponent<ColdWeapon>().TypeInBag = SaveType;
                    Hand.GetComponent<ColdWeapon>().IsDedraw = true;
                    break;
                case ItemClass.Categorys.Building:
                    Hand.GetComponent<BuddingItem>().TypeInBag = SaveType;
                    Hand.GetComponent<BuddingItem>().Dedraw();
                    Destroy(Hand);
                    break;
            }
        }
        else
        {           
            GameObject TempHand = Hand;
            Hand = null;
            Destroy(TempHand);
            TempHand = null;
        }
    }

    public void DrawHand(int TargetType)
    {
        //③在数据字典中查找到对应到物体，并克隆到手里，并更新Commponent数据
        if (Items[TargetType].Type >= 0)
        {
            ItemClassInstant(TargetType);
        }
        //④Tag归位
        SelectType = TargetType;
    }
    
    public void DedrawEnd(int SaveType)//Dedraw动作结束调用(Weaponclass脚本调用)R
    {
        //①储存旧的Hand的参数//尽量不用JSon//1月4日完成//待解决:给谁？ 数据;Hand0的Component 
        if (SaveType >= 0)
        {
            print("This bug");
            if (!SelectFrist)
            {
                ItemClassSave(SelectSecend_Type, Hand.GetComponent<ItemClass>());
            }
            else
            {
                ItemClassSave(SaveType, Hand.GetComponent<ItemClass>());
            }

        }


        //②Hand设为空值
        GameObject TempHand = Hand;
        Hand = null;
        Destroy(TempHand);
        TempHand = null;
        print("DedrawEnd");

        
        
        if (!SelectFrist)
        {
            print("Dealy Draw");
            DrawHand(SelectTarget);
        }
    }
    
    public void ItemClassSave(int Target, ItemClass Components)
    {
        print(Target);
        print(Components.name);

        switch (Components.Category)
        {
            case ItemClass.Categorys.General:
                Destroy(Hand);
                break;
            case ItemClass.Categorys.Gun:
                Items[Target].GetComponent<Weaponclass>().SetComponent(Components.GetComponent<Weaponclass>());
                break;
            case ItemClass.Categorys.Cold:
                Items[Target].GetComponent<ColdWeapon>().SetComponent(Components.GetComponent<ColdWeapon>());
                break;
        }
    }
    

    public void ItemClassAdd(int Target,int Number, ItemClass Components)
    {
        if (Items[Target] = EmptyItem)
        {
            Items[Target] = Instantiate(Components);
        }
        else
        {
            Destroy(Items[Target].gameObject);
            Items[Target] = Instantiate(Components);
        }
    }

    public void ItemClassInstant( int TargetType)
    {
        GameObject TempItem = Dictionary[Items[TargetType].Type].GetComponent<ItemClass>().FPSModle;//物品字典[物品[目标编号].在数组字典中的编号].的物体        
        Hand = Instantiate(TempItem, WeaponParent);//克隆这个物体到手里
        Hand.GetComponent<ItemClass>().BagTransform = this;
        switch (Hand.GetComponent<ItemClass>().Category)
        {
            case ItemClass.Categorys.Gun:
                Hand.GetComponent<Weaponclass>().SetComponent(Items[TargetType].GetComponent<Weaponclass>());
                break;
            case ItemClass.Categorys.Cold:
                Hand.GetComponent<ColdWeapon>().SetComponent(Items[TargetType].GetComponent<ColdWeapon>());
                break;
        }
        
        TempItem = null;
        FreshHandUI();
    }
    
    public bool SelectFrist;

    public int SelectFrist_Type_Items;

    public int SelectFrist_Type_Dictionary;

    public int SelectSecend_Type;

    public ItemClass TempSelect;

    public ItemClass TempItem;

    public int TempItemNumber;

    public bool DictionaryClickFrist;
    public void ClickButton(int ClickType)
    {
        if (DictionaryClickFrist)//item→item 第二次
        {
            bool CanCreat = true;
            for (int i = 0; i < TempSelect.Raws.Length; i++)
            {
                CanCreat = Sen_Try_Bag(TempSelect.Raws[i].Num, TempSelect.Raws[i].Type.Type);
                if (CanCreat)
                { }
                else
                    break;
            }


            if (CanCreat)
            {
                Dictionary_Button.Button[SelectFrist_Type_Dictionary].GetComponent<Image>().color = TempColor;
                for (int i = 0; i < TempSelect.Raws.Length; i++)
                {
                    CanCreat = Sen_Try_Bag(TempSelect.Raws[i].Num, TempSelect.Raws[i].Type.Type);


                    if (CanCreat)
                    {
                        Sen_Bag(TempSelect.Raws[i].Num, TempSelect.Raws[i].Type.Type);
                    }
                    else
                        break;
                }

                if (Items[ClickType] == EmptyItem)
                {
                    DictionaryClickFrist = false;

                    ItemClassAdd(ClickType, TempSelect.GroupInBag, TempSelect);

                    if (ClickType == SelectType)
                    {
                        DrawHand(SelectType);
                    }

                    FreshUI(ClickType, true);
                }
                else
                {
                    if (Items[ClickType].Type == TempSelect.Type)
                    {
                        if (Items[ClickType].GroupInBag + TempItemNumber <= Items[ClickType].MaxGroupInBag)
                        {
                            DictionaryClickFrist = false;
                            Items[ClickType].GroupInBag += TempItemNumber;
                            TempItemNumber = 0;
                            FreshUI(ClickType, true);
                        }
                        else
                        {
                            TempItemNumber -= Items[ClickType].MaxGroupInBag - Items[ClickType].GroupInBag;
                            Items[ClickType].GroupInBag = Items[ClickType].MaxGroupInBag;
                            FreshUI(ClickType, true);
                        }
                    }
                }
            }
        }
        else
        {
            if (!SelectFrist)//item→item 第一次
            {
                if (Items[ClickType].Type >= 0)
                {
                    SelectFrist = true;

                    TempItemNumber = Items[ClickType].GroupInBag;
                    TempSelect = Items[ClickType];
                    SelectFrist_Type_Items = ClickType;

                    if (ClickType == SelectType)
                    {
                        DedrawHand(ClickType);
                    }

                    Items_Button[SelectFrist_Type_Items].GetComponent<Image>().color = TempColor;
                    TempColor = Dictionary_Button.Button[ClickType].GetComponent<Image>().color;
                    Items_Button[ClickType].GetComponent<Image>().color = Color_Select;
                }
            }
            else//item→item 第二次
            {
                if (Items[ClickType] == EmptyItem)
                {
                    SelectSecend_Type = ClickType;
                    SelectFrist = false;
                    if (ClickType >= 0)
                    {
                        ChangeBag(SelectFrist_Type_Items, ClickType);

                    }
                    else
                    {
                        ChangeBag(false);
                    }

                    if (ClickType == SelectType && Hand == null)
                    {
                        DrawHand(ClickType);
                    }
                    TempSelect = null;
                }
                else
                {
                    if (SelectFrist_Type_Items == ClickType)
                    {
                        SelectFrist = false;
                    }
                    else
                    {
                        if (Items[ClickType].Type == TempSelect.Type)
                        {
                            if (Items[ClickType].GroupInBag + TempItemNumber <= Items[ClickType].MaxGroupInBag)
                            {
                                SelectFrist = false;
                                Items[ClickType].GroupInBag += TempItemNumber;
                                TempSelect.GroupInBag = TempItemNumber = 0;
                                FreshUI(SelectFrist_Type_Items, true);
                                FreshUI(ClickType, true);
                            }
                            else
                            {
                                TempSelect.GroupInBag = TempItemNumber -= Items[ClickType].MaxGroupInBag - Items[ClickType].GroupInBag;
                                Items[ClickType].GroupInBag = Items[ClickType].MaxGroupInBag;
                                FreshUI(SelectFrist_Type_Items, true);
                                FreshUI(ClickType, true);
                            }
                        }
                    }
                }
            }
        }
    }
    public void DictionaryClick(int ClickType)//Dictionary→item 第一次
    {
        Dictionary_Button.Button[SelectFrist_Type_Dictionary].GetComponent<Image>().color = TempColor;
        TempColor = Dictionary_Button.Button[ClickType].GetComponent<Image>().color;
        Dictionary_Button.Button[ClickType].GetComponent<Image>().color = Color_Select;

        ItemClass Tempel= DictionaryArrays[(int)Click].Dictionary[ClickType].GetComponent<ItemClass>();
        DictionaryClickFrist = true;
        SelectFrist_Type_Dictionary = ClickType;
        TempSelect = Tempel;
        TempItemNumber = DictionaryArrays[(int)Click].Dictionary[ClickType].GetComponent<ItemClass>().GroupInBag;
    }

    public void ChangeBag(int Bag1, int Bag2)//交换
    {
        print("Change");

        Items_Button[SelectFrist_Type_Items].GetComponent<Image>().color = TempColor;

        Items[Bag1] = Items[Bag2];
        Items[Bag2] = TempSelect;
        
        Sprite TempSprite = Items_Button[Bag1].GetComponent<ButtonLattice>().image.sprite;


        FreshUI(Bag1,true);
        FreshUI(Bag2, true);

    }

    public void ChangeBag(bool Finish)
    {

    }

    public void Reporter(ItemClass Comp, int Num)
    {
        ReporterUI.Fater.color = new Color(ReporterUI.Fater.color.r, ReporterUI.Fater.color.g, ReporterUI.Fater.color.b, 1);
        ReporterUI.UI.sprite = Comp.UI;
        ReporterUI.Name.text = Comp.name;
        ReporterUI.Number.text = Comp.GroupInBag.ToString();
    }

    public void Reporter_Update()
    {
        if (ReporterUI.Fater.color.a >= 0)
        {
            ReporterUI.Name.color = 
            ReporterUI.Number.color = new Color(225, 225, 225, ReporterUI.Fater.color.a - Time.deltaTime);
            ReporterUI.Fater.color = new Color(ReporterUI.Fater.color.r, ReporterUI.Fater.color.g, ReporterUI.Fater.color.b, ReporterUI.Fater.color.a-Time.deltaTime);
        }
    }

    private void Start()
    {
        Initialization_Items();
        Initialization_Dictionary();
        RefeshDictionary(0);
        Initialization_Box();

        for (int i = 0; i < IntalItems.Length; i++)
        {
            Add_EmptyBag(IntalItems[i].Number, IntalItems[i].item.Type);
        }
    }
    
    void Update()
    {
        Inpute();
        ShowRaw_Update();
        Reporter_Update();
        //Change_trigger();
    }
    public void FixedUpdate()
    {
        Aim_Update();
    }

    public void Aim_Update()
    {
        if (Hand != null && Hand.GetComponent<Weaponclass>())
        {
            Aim(IsAim);
        }
    }
    public Vector3 AimPositionCamera;
    public Vector3 AimRotationCamera;
    public Transform MainCamera;
    public bool IsAim;
    public Vector3 TempEular;
    public Vector3 AddEular;
    public FollowCamera CameraMove;
    float BlendFloaLast;
    public AnimationCurve AimCurve;
    public void Aim(bool IsAim)
    {

        Vector3 BaciesEular = FollowCamera.MakeEular(TempEular);
        Vector3 TargetEular = FollowCamera.MakeEular(AimRotationCamera);
        

        if (BlendFloaLast ==0&& IsAim)
        {
            if (Vector3.Distance(MainCamera.localPosition, AimPositionCamera) > 0.0001f)
            {
                MainCamera.localPosition = Vector3.Lerp(MainCamera.transform.localPosition, AimPositionCamera, 0.1f);

                TempEular = Vector3.Lerp(BaciesEular, TargetEular, 0.1f);
                Hand.transform.localPosition = Vector3.Lerp(Hand.transform.localPosition, Hand.GetComponent<Weaponclass>().AimPosition, 0.1f);
            }
            else
            {
                Hand.transform.localPosition = Hand.GetComponent<Weaponclass>().AimPosition;
                MainCamera.localPosition = AimPositionCamera;
                TempEular = BaciesEular;

            }
        }
        else
        {
            if (Vector3.Distance(MainCamera.localPosition, Vector3.zero) > 0.001f)
            {
                MainCamera.localPosition = Vector3.Lerp(MainCamera.transform.localPosition, Vector3.zero, 0.1f);
                TempEular = Vector3.Lerp(BaciesEular, new Vector3(0, 0, 0), 0.1f);
                Hand.transform.localPosition = Vector3.Lerp(Hand.transform.localPosition, Vector3.zero, 0.1f);
            }
            else
            {
                if (Input.GetKey(KeyCode.LeftShift))
                {
                    if (BlendFloaLast < 1)
                        BlendFloaLast += 0.06f;
                    else
                        BlendFloaLast = 1;
                }
                else
                {
                    if (BlendFloaLast > 0)
                        BlendFloaLast -= 0.06f;
                    else
                        BlendFloaLast = 0;
                }

                Hand.transform.localPosition = Hand.GetComponent<Weaponclass>().RunPosition * AimCurve.Evaluate(BlendFloaLast);
;
                Hand.transform.localEulerAngles = Hand.GetComponent<Weaponclass>().RunRotation * AimCurve.Evaluate(BlendFloaLast);


                MainCamera.localPosition = new Vector3(0, 0, 0);
                TempEular = new Vector3(0, 0, 0);
            }
        }
        MainCamera.localEulerAngles = FollowCamera.MakeEular(AddEular+ TempEular);

    }






}

/*
 *  *
 */