# Exercises - Lighting

## Task 1 - Diffuse Reflection:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Diffuse_Reflection)

1. Follow the tutorial to implement the first shader.
2. Make sure to understand the transformation of the normal vector.
3. Change the shader to perform the light computation in object space.
4. Change it to perform the light computation in view space.
5. Implement the final shader.
6. Experiment with different attenuation functions (constant, linear, quadratic).
7. Try exponential attenuation (exp(-distance)).

## Task 2 - Specular Highlights:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Specular_Highlights)

1. Implement the shader.
2. Look at the effect of different light and material parameters: diffuse color, specular color, shininess, ambient light, colored light source

## Task 3 - Two-Sided Lighting

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Two-Sided_Surfaces)

1. Implement the shader.
2. Create a scene that shows front and back faces of one mesh (e.g. by using the default Plane mesh)
3. Use another mesh and the discard command to see front and back faces.

# Task 4 - Smooth Spec. Highlights

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Smooth_Specular_Highlights)

1. Implement the shader.
2. Create a scene to compare per vertex lighting and per pixel lighting.
3. Experiment with removing some of the normalization functions. When do you see rendering artifacts?

# Task 5 - Multiple Lights

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Multiple_Lights)

1. Implement the shader.
2. Try to use uniforms or local variables to specify the limits of the for loop. Does it work?
3. Make sure you understand how Unity decides whether to implement a light source as pixel light or as vertex light. See [here](https://docs.unity3d.com/Manual/RenderTech-ForwardRendering.html)
