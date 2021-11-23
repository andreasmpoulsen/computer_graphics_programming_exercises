using UnityEngine;
public class ExampleScript : MonoBehaviour
{
    public float t = 0.0f;
    public Vector3 first, second;
    void Update()
    {
        t = (Mathf.Sin(Time.time) + 1) / 2;
        transform.position = (1 - t) * first + t * second;
    }
}