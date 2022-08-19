using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OptionAppear : MonoBehaviour
{
    public GameObject Option;
    // Start is called before the first frame update
    void Start()
    {
            Debug.Log("スタート");
    }

    // Update is called once per frame
    void Update()
    {
		if (Input.GetKeyDown(KeyCode.Escape))
		{
            Debug.Log("押してるよ");
            
            if (Option.activeSelf==true)
            {
                Option.SetActive (false);
                Debug.Log("Active" + Option.activeSelf); 
            }
            
            else//(Option.activeSelf == false)
            {
                Option.SetActive(true);
                Debug.Log("Active" + Option.activeSelf);
            }
        }
    }
}
