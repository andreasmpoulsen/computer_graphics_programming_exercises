using UnityEngine;
[ExecuteInEditMode]
public class Extrinsic_Rotations : MonoBehaviour
{
    public float bankZ, elevationX, headingY;
    void Update()
    {
        transform.localEulerAngles = new Vector3(elevationX, headingY, bankZ);
    }
}