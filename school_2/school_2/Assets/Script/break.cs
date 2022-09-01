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
        //îzóÒÇ…äiî[Ç≈ÉãÅ[ÉvÇ≥ÇπÇÈ
        _updateFunc = new Action[]
        {
           UpdateReset,
           UpdateBreak
        };
    }

    private void Update() 
    {
        //çÇÇ≥îªíË
        y = this.transform.position.y;
        if (y <= breakheight) 
        {
            Debug.Log("îªíËÇµÇΩÇÊ");
            var func = _updateFunc[(int)_change];
            func.Invoke();
        }
    }
    private void UpdateReset()
    {
        //Ç±Ç±Ç≈GameObjectê∂ê¨
        Debug.Log("çƒê∂ÇµÇΩÇÊ");
        GameObject obj = (GameObject)Resources.Load("Cube");
        Instantiate(obj, new Vector3(0.0f, y, 0.0f), Quaternion.identity);
    }

    // Update is called once per frame
    private void UpdateBreak() 
    {
        //objectÇîjâÛÇµÇƒéüÇÃèàóù
        Debug.Log("îjâÛÇµÇΩÇÊ");
        Destroy(this.gameObject);
        _change = CHANGE.RESTART;
    }

}
