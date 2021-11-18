# Exercises - Quaternions

## Task 1 - Quaternions from Axis - Angle:

1. Use [Quaternion.AngleAxis(...)](https://docs.unity3d.com/ScriptReference/Quaternion.AngleAxis.html) to set the local rotation of an object:

```
using UnityEngine;
[ExecuteInEditMode]
public class QuaternionFromAngle : MonoBehaviour{
    public float angle;
    public Vector3 axis;
    void Update() {
        transform.localRotation = … // fill in here
    }
}
```

2. Use [Quaternion.Euler (...)](https://docs.unity3d.com/ScriptReference/Quaternion.Euler.html) to set the local rotation of an object (e.g. a scaled cube):

```
using UnityEngine;
[ExecuteInEditMode]
public class QuaternionFromEuler : MonoBehaviour {
    public float xAngle, yAngle, zAngle;
    void Update() {
        transform.localRotation = … // fill in here
    }
}
```

## Task 2 - Incremental Rotations:

1. Use the script below on an object

```
using UnityEngine;
[ExecuteInEditMode]
public class QuaternionRotating : MonoBehaviour {
    public float degreesPerSecond; // angular speed
    public Vector3 axis;
    void Update() {
        Quaternion q = Quaternion.AngleAxis(degreesPerSecond * Time.deltaTime, axis);
        transform.localRotation = transform.localRotation * q;
    }
}
```

2. Is the rotation axis defined in local or in global coordinates?
3. Use the script below on an object

```
using UnityEngine;
[ExecuteInEditMode]
public class QuaternionRotating : MonoBehaviour {
    public float degreesPerSecond; // angular speed
    public Vector3 axis;
    void Update() {
        Quaternion q = Quaternion.AngleAxis(degreesPerSecond * Time.deltaTime, axis);
        transform.localRotation = q * transform.localRotation;
    }
}
```

4. Is the rotation axis now in local or in global coordinates?

## Task 3 - Calibrated Tracking

1. Use the script below on an object

```
using UnityEngine;
[ExecuteInEditMode]
public class CalibratedTracking : MonoBehaviour {
    public GameObject calibrationPose;
    public GameObject trackerWhenCalibrating, currentTracker;
    void Update() {
        transform.rotation = currentTracker.transform.rotation * ...
        // fill
        // multiply with inverse quaternion of trackerWhenCalibrating
        // and the quaternion of calibrationPose
    }
}
```

2. Use the script below on an object

```
using UnityEngine;
[ExecuteInEditMode]
public class CalibratedTracking : MonoBehaviour {
    public GameObject calibrationPose;
    public GameObject trackerWhenCalibrating, currentTracker;
    void Update() {
        transform.rotation = currentTracker.transform.rotation * …
        transform.position = currentTracker.transform.position +...
        // fill
        // calibrated tracking for positions and rotations
    }
}
```
