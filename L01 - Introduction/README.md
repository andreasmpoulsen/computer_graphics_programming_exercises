# Exercises - Introduction

## Task 1 - Introduction to Unity:

1. Create a scene with at least one plane, one sphere, two cubes, a camera, a point light, a spot light and a directional light source
2. Experiment with the field of view of a perspective camera and the size of an orthographic camera

## Task 2 - Introduction to Unity:

1. Create a sphere
2. In the Project window select Create > Material
3. Drag the new material over an object to apply it
4. Change the parameters of the shader in the Inspector view
5. Unity offers a number of built in shaders

## Task 3 - Albedo:

1. Import an image (e.g. from here wikimedia commons such as [this](https://commons.wikimedia.org/wiki/File:Land_shallow_topo_2048.jpg)) by dragging the image file into the Project window.
2. Select the material in the Project window, and in the Inspector, set the Shader to Standard.
3. Set the Albedo texture map, either by dragging the image from the Project window into the texture slot, or by clicking on the dotted circle.
4. Find out, what the Albedo color does and what Tiling and Offset is about.

## Task 4 - Rendering Mode:

Create an RGBA texture in GIMP from an RGB image in some way, e.g.:

1. Layer > Transparency > Add Alpha Channel and the Paintbrush and Eraser Tool
2. Select > By Color (with Feather edges!) and Layer > Mask > Add Layer Mask ... from Selection with Invert mask
3. Export as PNG
4. Import the RGBA texture into Unity and use it as Albedo texture. Try all Rendering Modes.

## Task 5 - Metallic:

1. Without any textures:
   - What does the Metallic slider control?
   - What does the smoothness slider control?
   - How can you control the colors of the highlights?
2. Use an RGBA texture in the Metallic texture map: explain the appearance!

## Task 6 - Specular Setup:

1. Without any textures:
   - What does the Specular color control?
   - What does the smoothness slider control?
2. Use an RGBA texture in the Specular texture map: explain the appearance!

## Task 7 - Normal Map:

1. With GIMP, create a gray scale height map, where 50% gray is normal, bumps are white, dents are black.
2. As described [here](https://docs.unity3d.com/Manual/StandardShaderMaterialParameterNormalMap.html): import the texture with Texture Type > Normal map and check Create from Grayscale and then click Apply
3. Use the texture as Normal Map

## Task 8 - Height Map:

1. Import the gray scale height map again as a usual texture and with Alpha Source set to “From Gray Scale” and click on Apply.
2. Use this texture as Height Map (together with the normal map from the previous task).
3. Change the slider value to see the effect of the parallax mapping.

## Task 9 - Occlusion:

1. Use the gray scale image from the previous slides for the occlusion.
   - Here, “occlusion” refers to “ambient occlusion” which we will discuss in rendering and animation techniques.

## Task 10 - Emission:

1. Set Albedo to black.
2. Use an RGBA texture for Emission.
3. What is the effect of the Emission color?
4. What is the effect of light sources now?

## Task 11 - Detail Albedo:

If a detail texture is a gray scale texture with a large tiling, it adds detail by darkening, see [here](https://docs.unity3d.com/Manual/StandardShaderMaterialParameterDetail.html)

1. Create a tilable detail texture in GIMP with Filters > Render > Noise > Solid Noise
2. Import the detail texture into Unity; in the Inspector, click on Generate Mip Maps and check Fadeout Mip Maps. Click on Apply.
3. In the material, add the texture as Detail Albedo and set a large tiling for it (X: 10-100, Y: 10-100).
4. Zoom in and out on the object to see the fadeout effect.

# Task 12 - Cookies:

1. Choose Edit > Project Settings > Quality and in the Inspector Window make sure that Pixel Light Count is set to 1 or higher.
2. Open the inspector for a spot light or a directional light and set the Cookie to an alpha texture (e.g. the heightmap with Alpha Source from Gray Scale).
3. For point lights, use a cube alpha texture as cookie (i.e. a cube texture with alpha textures as faces).

## Task 13 - Lightmapping:

Unity has an integrated lightmapper.

1. Build a small scene (e.g. one white cube and one red cube on a white plane) and mark all objects as Lightmap Static (in their Inspector).
2. For the light, set Mode to Mixed and Soft Shadows.
3. [Unity's documentation](https://docs.unity3d.com/Manual/GlobalIllumination.html)
