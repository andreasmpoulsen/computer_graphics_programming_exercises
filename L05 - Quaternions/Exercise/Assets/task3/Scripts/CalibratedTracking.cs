using UnityEngine;
[ExecuteInEditMode]
public class CalibratedTracking : MonoBehaviour
{
    public GameObject calibrationPose;
    public GameObject trackerWhenCalibrating, currentTracker;
    void Update()
    {
        transform.rotation = currentTracker.transform.rotation * Quaternion.Inverse(trackerWhenCalibrating.transform.rotation) * calibrationPose.transform.rotation;
        // fill
        // multiply with inverse quaternion of trackerWhenCalibrating
        // and the quaternion of calibrationPose
    }
}