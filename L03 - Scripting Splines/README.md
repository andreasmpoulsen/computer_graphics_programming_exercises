# Exercises - Scripting Splines

## Task 1 - Bézier Splines:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/B%C3%A9zier_Curves)

1. Copy the curve script and test it.
2. Copy the spline script (further down on the webpage) and create a closed spline as described in the text below the code.
3. Create an open spline that reaches the control points at the ends as described in the text below the code.

## Task 2 - Hermite and Catmull Rom Splines:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Hermite_Curves)

1. Copy the Hermite curve script and test it.
2. Copy the spline script (further down on the webpage) and create a closed spline. In which case is the closed spline smooth?

## Task 3 - Following:

1. Make two rigidbodies (no gravity!), assign the script below to one of them and the script Component > Scripts > UnityStandardAssets.Utility > Drag Rigidbody to the other. Then run code.

```
using UnityEngine;
public class Following_Other : MonoBehaviour{
    public GameObject followed;
    void Update() {
        GetComponent Rigidbody >().velocity = 0.95f * GetComponent Rigidbody >().velocity + 0.05f * (followed.transform.position - transform.position);
    }
}
```

## Task 4 - Swarming:

1. Assign the script below to the followed object and set "follower" to the following object:

```
using UnityEngine;
using System.Collections;
public class Followed_by_Other : MonoBehaviour{
    public GameObject follower;
    void Start() { StartCoroutine ("Spawn"); }
    IEnumerator Spawn() {
        while (true) {
            Instantiate(follower, Vector3.zero, Quaternion.identity);
            yield return new WaitForSeconds(0.1f);
        }
    }
}
```

Click [here](https://docs.unity3d.com/Manual/Coroutines.html) for more information on Coroutines.
