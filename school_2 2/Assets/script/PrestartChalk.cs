using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System;
using TMPro;

public class PrestartChalk: MonoBehaviour
{

    private enum CHANGE
    {
        RESTART,
        BREAK
    };

    private bool isFirst = true;
    private CHANGE _change;
    private Action[] _updateFunc;
    private float y,z=90;
    private Vector3 StartPoint =new Vector3 (-2.69f, 1.09f, -2.903f);
    private Vector3 StopVelocity = new Vector3(0f,0f,0f);
    private static int _Count;
    [SerializeField] private TextMeshProUGUI _Text;

    [SerializeField] public float breakheight= 0.025f;

    void Start()
    {

        _Text.text = _Count.ToString("00");
        breakheight = 0.025f;
        //”z—ñ‚ÉŠi”[‚Åƒ‹[ƒv‚³‚¹‚é
        _updateFunc = new Action[]
        {
           UpdateReset,
           UpdateBreak
        };
    }

    private void Update() 
    {
        //‚‚³”»’è
        y = this.transform.position.y;
        if (y <= breakheight) 
        {
            Debug.Log("”»’è‚µ‚½‚æ");
            _Count++;
            var func = _updateFunc[(int)_change];
            func.Invoke();
            Debug.Log(_Count);
        }
    }
    private void UpdateReset()
    {

        SceneManager.LoadScene("Game");
        //Rigidbody rb = this.GetComponent<Rigidbody>();  // rigidbody‚ğæ“¾
        //this.transform.position = StartPoint;
        //this.transform.rotation = Quaternion.Euler(0.0f, 0.0f, z);
        //rb.velocity = StopVelocity;

        //Debug.Log("ˆÚ“®‚µ‚½‚æ");
        //_change = CHANGE.BREAK;
    }

    // Update is called once per frame
    private void UpdateBreak() 
    {
        //object‚ğ”j‰ó‚µ‚ÄŸ‚Ìˆ—
        //Debug.Log("”j‰ó‚µ‚½‚æ");
        //_change = CHANGE.RESTART;
    }

}
