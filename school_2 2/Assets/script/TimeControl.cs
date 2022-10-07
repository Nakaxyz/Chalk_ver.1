using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using CharatcorController;
using TMPro;

public class TimeControl : MonoBehaviour
{
	// Start is called before the first frame update
	public GameObject PlayerControl, Option;
	public TextMeshProUGUI _Text;
	[SerializeField] private static float _Time;

	void Start()
	{

	}

	public void TimeCount()
	{
		_Text.text = _Time.ToString("00");

	}

	// Update is called once per frame
	void Update()
	{
		if (Option.activeSelf)
		{
			if (_Text == null)
			{
				PlayerControl.GetComponent<CharacterControllerScript>().speed = 0;
			}
		}
		else
		{

			_Time += Time.deltaTime;
			PlayerControl.GetComponent<CharacterControllerScript>().speed = 0.7f;
		}
		_Text.text = _Time.ToString("00");

	}


}
