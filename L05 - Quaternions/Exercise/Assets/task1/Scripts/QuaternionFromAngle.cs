using UnityEngine;
[ExecuteInEditMode]
public class QuaternionFromAngle : MonoBehaviour
{
    public float angle;
    public Vector3 axis;
    void Update()
    {
        transform.localRotation = Quaternion.AngleAxis(angle, axis);
    }
}