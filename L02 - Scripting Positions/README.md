# Exercises - Scripting Positions

## Task 1 - Scripting Straight Motions:

1. Create a script in C# (in the Project window: Create > C# Script) and rename it to "ExampleScript"
2. Open it in an editor by double clicking it.
3. Delete the default content and copy the script below into it.

```
using UnityEngine;
public class ExampleScript : MonoBehaviour{
    void Update() {
        transform.position = transform.position + new Vector3(0.1f, 0.0f, 0.0f);
    }
}
```

4. Attach it to an object by dragging the script over the object.
5. Run the program.

Better version would allow the user to change the increment per frame with a variable:

```
using UnityEngine;
public class ExampleScript : MonoBehaviour{
    public Vector3 increment = Vector3.zero;
    void Update() {
        transform.position = transform.position + increment;
    }
}
```

Problem with this version: the velocity of the object depends on the frame rate (if the frame rate is higher, the object moves faster).

An improved version that works independently of the frame rate by using the time between two frames  
_Time.deltaTime_

```
using UnityEngine;
public class ExampleScript : MonoBehaviour{
    public Vector3 velocity = Vector3.zero;
    void Update() {
        transform.position += velocity * Time.deltaTime;
    }
}
```

Since positions are specified in meters and Time.deltaTime is specified seconds, the velocity is specified in meters per second.

6. Copy the code above and try it out.

Another example for using a velocity (or a rate of change) for animating independently of the frame rate:

```
using UnityEngine;
public class ExampleScript : MonoBehaviour {
public Vector4 colorChange = Vector4.zero;
    void Update() {
        Color diff = colorChange * Time.deltaTime;
        GetComponent<Renderer>().sharedMaterial.color += diff;
    }
}
```

Let's specify the position of an object as an affine linear combination of two points:

```
using UnityEngine;
public class ExampleScript : MonoBehaviour{
    public float t;
    public Vector3 first, second;
    void Update() {
        transform.position = (1 - t) * first + t * second;
    }
}
```

For an "affine linear combination" the sum of all scalar factors ( i.e. the weights) is 1.  
Here: (1 - t) + t = 1.

Let's make an animation:

```
using UnityEngine;
public class ExampleScript : MonoBehaviour {
    public float t = 0.0f, velocity = 0.0f;
    public Vector3 first, second;
    void Update() {
        t += velocity * Time.deltaTime;
        if (t > 1.0) { t = 1.0f; }
        if (t < 0.0) { t = 0.0f; }
        transform.position = (1 - t) * first + t * second;
    }
}
```

7. Change the code above to make the object continuously bounce between the two points by changing the sign of the velocity whenever the object reaches one of the points.
8. Use Mathf.Sin(Time.time) to animate t smoothly between 0 and 1. (Time.time is the time in seconds since the game was started.)

## Task 2 - Scripting Curved Motions:

A quadratic Bezier curve uses an affine linear combination of three points P0, P1, and P2:
<img src="https://render.githubusercontent.com/render/math?math=B(t) = (1 - t)^2P_0 %2B 2(1 - t)tP_1 %2B t^2P_2">

1. Complete the implementation (and animate t):

```
using UnityEngine;
public class ExampleScript : MonoBehaviour {
    public float t = 0.0f;
    public Vector3 P0, P1, P2;
    void Update() {
        transform.position = (1.0f - t) * (1.0f - t) * P0 +
        // insert code here!!!
```

Instead of specifying points by Vector3, we can also use other game objects:

```
using UnityEngine;
public class ExampleScript : MonoBehaviour{
    public float t = 0.0f;
    public GameObject P0, P1, P2;
    void Update() {
        transform.position(1.0f - t) * (1.0f - t) * P0.transform.position +
        ...
```

2. Create 3 other objects and use them to define the positions.
3. Make sure you understand all the code.
