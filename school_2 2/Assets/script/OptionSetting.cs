using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace option
{

public class OptionSetting :MonoBehaviour 
{
    public GameObject Option;
    // Start is called before the first frame update
    void Start()
    {

    }

		  void Update()
		{
			if (Input.GetKeyDown(KeyCode.Escape))
			{
				Debug.Log("�����Ă��");

				if (Option.activeSelf == true)
				{
					Option.SetActive(false);
					Debug.Log("Active" + Option.activeSelf);
				}

				else//(Option.activeSelf == false)
				{
					Option.SetActive(true);
					Debug.Log("Active" + Option.activeSelf);
				}
			}
		}

		public void _OptionOpen()
		{
            Option.SetActive(true);
            Debug.Log("Active" + Option.activeSelf);

        }
        public void _OptionClose()
		{
            Option.SetActive(false);
            Debug.Log("Active" + Option.activeSelf);

        }



    }

}
