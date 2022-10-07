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
        //�z��Ɋi�[�Ń��[�v������
        _updateFunc = new Action[]
        {
           UpdateReset,
           UpdateBreak
        };
    }

    private void Update() 
    {
        //��������
        y = this.transform.position.y;
        if (y <= breakheight) 
        {
            Debug.Log("���肵����");
            _Count++;
            var func = _updateFunc[(int)_change];
            func.Invoke();
            Debug.Log(_Count);
        }
    }
    private void UpdateReset()
    {

        SceneManager.LoadScene("Game");
        //Rigidbody rb = this.GetComponent<Rigidbody>();  // rigidbody���擾
        //this.transform.position = StartPoint;
        //this.transform.rotation = Quaternion.Euler(0.0f, 0.0f, z);
        //rb.velocity = StopVelocity;

        //Debug.Log("�ړ�������");
        //_change = CHANGE.BREAK;
    }

    // Update is called once per frame
    private void UpdateBreak() 
    {
        //object��j�󂵂Ď��̏���
        //Debug.Log("�j�󂵂���");
        //_change = CHANGE.RESTART;
    }

}
