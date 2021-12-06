using UnityEngine;
[ExecuteInEditMode]
public class CalibratedTracking2 : MonoBehaviour
{
    public GameObject calibrationPose;
    public GameObject trackerWhenCalibrating, currentTracker;
    void Update()
    {
        transform.rotation = currentTracker.transform.rotation * Quaternion.Inverse(trackerWhenCalibrating.transform.rotation) * calibrationPose.transform.rotation;
        transform.position = currentTracker.transform.position + trackerWhenCalibrating.transform.position + calibrationPose.transform.position;
        // fill
        // calibrated tracking for positions and rotations
    }
}