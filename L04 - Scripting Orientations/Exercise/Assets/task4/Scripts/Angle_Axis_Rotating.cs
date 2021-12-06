using UnityEngine;
[ExecuteInEditMode]
public class Angle_Axis_Rotating : MonoBehaviour
{
    public float degreesPerSecond; // angular speed
    public Vector3 axis;
    void Update()
    {
        transform.Rotate(axis, degreesPerSecond * Time.deltaTime, Space.Self);
    }
}