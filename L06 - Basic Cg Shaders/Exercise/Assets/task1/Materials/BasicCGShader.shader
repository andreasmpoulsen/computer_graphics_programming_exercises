Shader "Custom/BasicCGShader"
{
	SubShader{ // Unity chooses the subshader that fits the GPU best
	   Pass { // some shaders require multiple passes
		  CGPROGRAM // here begins the part in Unity's Cg

		  #pragma vertex vert 
			 // this specifies the vert function as the vertex shader 
		  #pragma fragment frag
			 // this specifies the frag function as the fragment shader

		  float4 vert(float4 vertexPos : POSITION) : SV_POSITION
		// vertex shader 
	 {
		float x = vertexPos[0];
		float y = vertexPos[1];
		float z = vertexPos[2];
		float w = vertexPos[3];
		float4 new_vector = float4(x, y, z, w);
		return UnityObjectToClipPos(new_vector);

}

float4 frag(void) : COLOR // fragment shader
{
   return float4(0.5,0.7,0.5, 1.0) + float4(1.0,1.0,0.0, 1.0);
// this fragment shader returns a nameless fragment
// output parameter (with semantic COLOR) that is set to
// opaque red (red = 1, green = 0, blue = 0, alpha = 1)
}

ENDCG // here ends the part in Cg 
}
	}
}
