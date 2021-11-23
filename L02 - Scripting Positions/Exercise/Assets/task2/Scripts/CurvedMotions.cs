using UnityEngine;
public class CurvedMotions : MonoBehaviour
{
    public float t = 0.0f;
    public GameObject P0, P1, P2;
    void Update()
    {
        t = (Mathf.Sin(Time.time) + 1) / 2;
        transform.position = (1.0f - t) * (1.0f - t) * P0.transform.position + 2 * (1.0f - t) * t * P1.transform.position + t * t * P2.transform.position;
    }
}
