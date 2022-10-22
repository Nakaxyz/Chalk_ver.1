using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
namespace Pathmove { 

public class pathmove : MonoBehaviour
{
    [SerializeField]
    private CinemachineVirtualCamera _virtualCamera;
    [SerializeField]
    private float _position;
    public bool underplaybutton = false;

    private CinemachineTrackedDolly _dolly;

    // Start is called before the first frame update
    void Start()
    {
        _dolly = _virtualCamera.GetCinemachineComponent<CinemachineTrackedDolly>();
    }

    // Update is called once per frame
    void Update()
    {
        if (underplaybutton == true)
        {
            _dolly.m_PathPosition += 0.1f;

        }
			if (_dolly.m_PathPosition >= 35f)
			{
                underplaybutton = false;
                
			}
    }
} }