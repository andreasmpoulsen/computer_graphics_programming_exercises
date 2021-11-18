# Exercises - Scripting Orientations

## Task 1 - Transformation Matrix:

Code to show a GameObject's transformation matrix:

```
using UnityEngine;
[ExecuteInEditMode]
public class Transformation_Matrix : MonoBehaviour{
    public Vector3 row0, row1, row2, row3, column3;
    void Update () {
        Matrix4x4 m = transform.localToWorldMatrix;
        row0 = m.GetRow (0);
        row1 = m.GetRow (1);
        row2 = m.GetRow (2);
        row3 = m.GetRow (3);
        column3 = m.GetColumn (3);
    }
}
```

1. Where is the "Position" vector? Where is the "Scale"?

## Task 2 - Euler Angles in Unity

[Wiki entry](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Rotations)

1. Create a cube and scale it with factors 4 (along x), 1 (along y), and 9 (along z). (It should represent an airplane heading in the direction of the z axis.)
2. In the Inspector set the z rotation (in degrees) for bank, the x rotation for elevation, and the y rotation for heading for the "airplane".
3. For which angles is the "airplane" pointing straight up?
4. Use the script below to control the rotations about fixed axes by name:

```
using UnityEngine;
[ExecuteInEditMode]
public class Extrinsic_Rotations : MonoBehaviour{
    public float bankZ , elevationX , headingY;
    void Update () {
        transform.localEulerAngles = new Vector3(elevationX, headingY, bankZ);
    }
}
```

5. Use “Global” gizmos and choose the translate tool: which axis is always aligned to a rotation axis? Why is it this axis?
6. Create another cube with the script below to control rotations about rotating axes:

```
using UnityEngine;
[ExecuteInEditMode]
public class Intrinsic_Rotations : MonoBehaviour{
    public float yawY , pitchX , rollZ;
    void Update() {
        transform.localEulerAngles = new Vector3(pitchX, yawY, rollZ);
    }
}
```

7. Now use “Local” gizmos and the translate tool: which local axis is always aligned to a rotation axis? Why?

## Task 3 - Gimbal Lock

A gimbal lock describes a situation when two of the three Euler angles specify rotations around the same (rotated) axis.  
This is particularly problematic if a user interface only allows users to control these two angles.

8. Use the script from (7) to create such a situation.
   - For which rotation angle of which axis does it occur?

## Task 4 - Roll, Pitch & Yaw in Aviation

1. Use this script on the scaled cube (the "plane"):

```
using UnityEngine;
[ExecuteInEditMode]
public class Angle_Axis_Rotating : MonoBehaviour{
    public float degreesPerSecond; // angular speed
    public Vector3 axis;
    void Update() {
        transform.Rotate(axis, degreesPerSecond * Time.deltaTime, Space.Self);
    }
}
```

2. What are the axes for roll, pitch, and yaw rotations? Do these axes change?
