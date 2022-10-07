using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using option;
using _Pathmove;

public class TitleSetting : MonoBehaviour
{
 
    public GameObject Title;
    public GameObject Option;
    OptionSetting optionSetting;

	// Start is called before the first frame update
	public void Awake()
	{
        Pathmove pathmove = GetComponent<Pathmove>();
	}
	public void OptionOpen()
	{
        var optionSetting = Option.gameObject.GetComponent<OptionSetting>();
        optionSetting._OptionOpen();
        Debug.Log("呼び出せる？");
        Title.SetActive(false);
    }
    public void OptionClose()
    {
        OptionSetting optionsetting = GetComponent<OptionSetting>();
        optionsetting._OptionClose();
        Debug.Log("呼び出せる？");
        Title.SetActive(false);
    }

    public void PlayingGame(Pathmove pathmove)
	{
        pathmove.underplaybutton = true;
        Title.SetActive(false);
	}
}

