using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class bleak : MonoBehaviour
{

    private enum CHANGE
    {
        RESTART,
        BREAK
    };

    private CHANGE _change;
    private Action[] _updateFunc;
    private float y;
    [SerializeField] public float breakheight=-10000;

    void Start()
    {
        //配列に格納でループさせる
        _updateFunc = new Action[]
        {
           UpdateReset,
           UpdateBreak
        };
    }

    private void Update() 
    {
        //高さ判定
        y = this.transform.position.y;
        if (y <= breakheight) 
        {
            Debug.Log("判定したよ");
            var func = _updateFunc[(int)_change];
            func.Invoke();
        }
    }
    private void UpdateReset()
    {
        //ここでGameObject生成
        Debug.Log("再生したよ");
        GameObject obj = (GameObject)Resources.Load("Cube");
        Instantiate(obj, new Vector3(0.0f, y, 0.0f), Quaternion.identity);
    }

    // Update is called once per frame
    private void UpdateBreak() 
    {
        //objectを破壊して次の処理
        Debug.Log("破壊したよ");
        Destroy(this.gameObject);
        _change = CHANGE.RESTART;
    }

}
