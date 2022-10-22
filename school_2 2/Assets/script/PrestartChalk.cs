using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

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

    [SerializeField] public float breakheight= 0.025f;

    void Start()
    {
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
            var func = _updateFunc[(int)_change];
            func.Invoke();
        }
    }
    private void UpdateReset()
    {

        Rigidbody rb = this.GetComponent<Rigidbody>();  // rigidbody���擾
        this.transform.position = StartPoint;
        this.transform.rotation = Quaternion.Euler(0.0f, 0.0f, z);
        rb.velocity = StopVelocity;

        Debug.Log("�ړ�������");
        _change = CHANGE.BREAK;
    }

    // Update is called once per frame
    private void UpdateBreak() 
    {
        //object��j�󂵂Ď��̏���
        Debug.Log("�j�󂵂���");
        _change = CHANGE.RESTART;
    }

}
