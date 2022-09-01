using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using CharatcorController;

public class TimeControl : MonoBehaviour
{
    // Start is called before the first frame update
        public GameObject PlayerControl,Option;
        
    void Start()
    {
    
    }

    // Update is called once per frame
    void Update()
    {
		if (Option.activeSelf)
		{
            PlayerControl.GetComponent<CharacterControllerScript>().speed = 0;
        }
		else
		{
            PlayerControl.GetComponent<CharacterControllerScript>().speed = 1;
        }
        Debug.Log(Option.activeSelf);
            Debug.Log(PlayerControl.GetComponent<CharacterControllerScript>().speed);
    
    }
}
