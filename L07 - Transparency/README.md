# Exercises - Transparency

## Task 1 - Cutaways:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Cutaways)

1. Follow the tutorial to implement the second shader.
2. Change the condition for cutaways to use world coordinates.
3. Cut away everything inside a (user specified) sphere.

# Task 2 - Transparency (Blending):

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Transparency)

1. Follow the tutorial to implement the first shader.
2. Change the blending equation to additive blending.
3. Change the blending equation to alpha blending for pre multiplied colors.
4. With the original blending, remove the tag "Queue" = "Transparent" and/or remove ZWrite Off“ and create a scene that shows the resulting rendering artifacts.
5. Implement the shader for back and front faces.
6. Swap the two passes ( i.e. move the first pass after the second one), observe the difference, and find an explanation.

# Task 3 - Order-Independent Transparency:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Order-Independent_Transparency)

1. Implement the first shader.
2. Implement a shader property for the color.
3. Create a scene with two differently colored objects using this shader and confirm that rendering order doesn't matter with this shader.

# Task 4 - Silhouette Enhancement

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Silhouette_Enhancement)

1. Implement the shader.
2. Change the alpha channel of the color property. In which case is the rendered alpha value the same as the specified alpha value?
3. Multiply the output fragment color with its alpha and change the blending to use pre multiplied colors.
4. Raise the dot product to the power of 10. What is the effect?
5. Implement more artistic control by introducing a float property to let the user change the exponent.
