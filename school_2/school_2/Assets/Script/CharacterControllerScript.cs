using System.Collections;
using System.Collections.Generic;
using UnityEngine;
 
namespace CharatcorController
{
public class CharacterControllerScript : MonoBehaviour
{
    public float speed;
    public float right_Rotate;
    public float left_Rotate;

    public float jumpPower;
    private Rigidbody rb;

    void Start()
    {
        speed = 0.5f;
        right_Rotate = 50.0f;
        left_Rotate = -50.0f;
        jumpPower = 5.0f;
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (Input.GetKey(KeyCode.D))
        {
            transform.Rotate( right_Rotate * Time.deltaTime,0,0);
        }
        if (Input.GetKey(KeyCode.A))
        {
            transform.Rotate( left_Rotate * Time.deltaTime,0,0);
        }
        if (Input.GetKey(KeyCode.W))
        {
            transform.position -= transform.forward * speed * Time.deltaTime;
        }
        if (Input.GetKey(KeyCode.S))
        {
            transform.position += transform.forward * speed * Time.deltaTime;
        }
        if (Input.GetKeyDown(KeyCode.Space))
        {
            rb.velocity = Vector3.up * jumpPower;
        }

    }

}
}