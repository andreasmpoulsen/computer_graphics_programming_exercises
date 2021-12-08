Shader "Custom/DebuggingShaders"
{
	SubShader{
	  Pass {
		 CGPROGRAM

		 #pragma vertex vert  
		 #pragma fragment frag 
		 #include "UnityCG.cginc"

		 struct vertexOutput {
			float4 pos : SV_POSITION;
			float4 col : TEXCOORD0;
		 };

		 vertexOutput vert(appdata_full input)
		 {
			vertexOutput output;

			output.pos = UnityObjectToClipPos(input.vertex);
			// First line: Subtracting more than 1 in each color, resulting in no color (Black)
			//output.col = input.texcoord - float4(1.5, 2.3, 1.1, 0.0);
			// Second line: Texture coordinates exist in 2D space, thus they only have X and Y and Z would be 0.
			// This results in float4(0, 0, 0, 0)
			//output.col = input.texcoord.zzzz;
			// Third line: Division by 0 results in 0.
			//output.col = input.texcoord / tan(0.0);
			// Fourth line: Dot product returns 0 for vectors that are orthogonal, which is the case with the tangent and the normal.
			//output.col = dot(input.normal, input.tangent.xyz) *
				//input.texcoord;
			// Fifth line: Same as the previous, the cross product produces a vector that is orthogonal to the two input vectors, and 
			//since one of those input vectors is used in the dot product, it will, by definition be orthogonal and result in 0
			//output.col = dot(cross(input.normal, input.tangent.xyz),
				//input.normal) * input.texcoord;
			// Sixth line: The cross product of two parallel vectors is a zero vector 
			//output.col = float4(cross(input.normal, input.normal), 1.0);
			// Seventh line: Same as the previous, cross product between something parallel results in 0
			//output.col = float4(cross(input.normal, 
			//input.vertex.xyz), 1.0);
				// only for a sphere!
			// Eigth line: This is not a bug, but the radians functions takes in degrees, and since the texcoord ranges from 0 to 1, this 
			//will results in very small radian values and thus the colors will be so small that they appear completely black
			output.col = radians(input.texcoord);

			return output;
		 }

		 float4 frag(vertexOutput input) : COLOR
		 {
			return input.col;
		 }

		 ENDCG
	  }
	}
}
