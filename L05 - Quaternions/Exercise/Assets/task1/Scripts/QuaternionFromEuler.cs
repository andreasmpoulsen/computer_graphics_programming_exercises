using UnityEngine;
[ExecuteInEditMode]
public class QuaternionFromEuler : MonoBehaviour
{
    public float xAngle, yAngle, zAngle;
    void Update()
    {
        transform.localRotation = Quaternion.Euler(xAngle, yAngle,zAngle);
    }
}