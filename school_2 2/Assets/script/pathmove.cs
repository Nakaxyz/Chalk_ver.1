using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using UnityEngine.SceneManagement;
namespace _Pathmove { 

public class Pathmove : MonoBehaviour
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
                _position += 0.1f;
                _dolly.m_PathPosition = _position;

        }
			if (_dolly.m_PathPosition >= 32f)
			{
                underplaybutton = false;
                SceneManager.LoadScene("Game");
			}
    }
} }