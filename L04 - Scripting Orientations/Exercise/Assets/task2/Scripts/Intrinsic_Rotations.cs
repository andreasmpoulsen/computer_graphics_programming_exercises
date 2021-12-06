using UnityEngine;
[ExecuteInEditMode]
public class Intrinsic_Rotations : MonoBehaviour
{
    public float yawY, pitchX, rollZ;
    void Update()
    {
        transform.localEulerAngles = new Vector3(pitchX, yawY, rollZ);
    }
}