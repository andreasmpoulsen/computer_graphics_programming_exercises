# Exercises - Texturing

## Task 1 - Textured Sphere:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Textured_Spheres)

1. Implement the second shader and change the tiling and offset of the texture.
2. Use world coordinates as texture coordinates.

## Task 2 - Lighting Textured Spheres:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Lighting_Textured_Surfaces)

1. Implement the shader.
2. Change the shader to use the color of the texture as the color of specular highlights.

## Task 3 - Glossy Textures:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Glossy_Textures)

1. Implement the shader.
2. Change the shader to give the non glossy regions a minimum amount of gloss.

## Task 4 - Transparent Textures:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Transparent_Textures)

1. Implement the first shader using discard and the second shader using blending.
2. Compare the two shaders side by side. What is the difference? What might be the reason for the difference?

## Task 5 - Layers of Textures:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Layers_of_Textures)

1. Implement the shader.
2. Change the shader to blend a texture with alpha channel over another texture.
3. Implement a shader property that allows users to continuously blend between the two textures.

## Task 6 - Normal Mapping:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Lighting_of_Bumpy_Surfaces)

1. Follow the tutorial to implement the shader.
2. Move the computation of the "binormalWorld" vector from the vertex shader to the fragment shader.
3. Create your own normal map from a gray scale image using Unity's texture import settings.

## Task 7 - Displacement Mapping:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Displacement_Maps)

1. Follow the tutorial to implement the shader.
2. Use the alpha channel of the texture for the displacement.
3. Optional: Color the surface with the RGB color of the texture.

## Task 8 - Reflection Mapping:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Reflecting_Surfaces)

1. Implement the shader.
2. Find appropriate textures for a cube map (e.g. in Unity's Asset Store), create a cube map and use it for the shader.
3. Move the computation of the “ reflectedDir ” vector to the vertex shader.

## Task 9 - Refraction Mapping:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Curved_Glass)

1. Implement the shader.
2. Add a shader property to control the refractive index.
3. Experiment with different refractive indices and shapes to fake the appearance of solid glass balls and thin glass spheres. (Note that the refraction is only applied to the front face in this shader.)

## Task 10 - Skyboxes:

[Tutorial](https://en.wikibooks.org/wiki/Cg_Programming/Unity/Skyboxes)

1. Implement the first shader.
2. Try different shapes for the skybox: cube, sphere (i.e. a skydome), with and without front face culling.
3. Implement and apply the second shader for Unity's skybox mechanism.
