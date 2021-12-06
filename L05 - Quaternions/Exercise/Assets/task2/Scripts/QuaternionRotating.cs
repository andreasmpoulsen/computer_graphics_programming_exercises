using UnityEngine;
[ExecuteInEditMode]
public class QuaternionRotating : MonoBehaviour
{
    public float degreesPerSecond; // angular speed
    public Vector3 axis;
    void Update()
    {
        Quaternion q = Quaternion.AngleAxis(degreesPerSecond * Time.deltaTime, axis);
        transform.localRotation = transform.localRotation * q;
    }
}