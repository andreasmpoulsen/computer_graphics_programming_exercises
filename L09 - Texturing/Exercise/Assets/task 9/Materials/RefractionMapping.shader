Shader "Custom/RefractionMapping"
{
	Properties{
	  _Cube("Reflection Map", Cube) = "" {}
	  _Refract("Refractive Index", float) = 1.5
	}
		SubShader{
		   Pass {
			  CGPROGRAM

			  #pragma vertex vert  
			  #pragma fragment frag 

			  #include "UnityCG.cginc"

			  // User-specified uniforms
			  uniform samplerCUBE _Cube;
	  uniform float _Refract;

			  struct vertexInput {
				 float4 vertex : POSITION;
				 float3 normal : NORMAL;
			  };
			  struct vertexOutput {
				 float4 pos : SV_POSITION;
				 float3 normalDir : TEXCOORD0;
				 float3 viewDir : TEXCOORD1;
			  };

			  vertexOutput vert(vertexInput input)
			  {
				 vertexOutput output;

				 float4x4 modelMatrix = unity_ObjectToWorld;
				 float4x4 modelMatrixInverse = unity_WorldToObject;

				 output.viewDir = mul(modelMatrix, input.vertex).xyz
					- _WorldSpaceCameraPos;
				 output.normalDir = normalize(
					mul(float4(input.normal, 0.0), modelMatrixInverse).xyz);
				 output.pos = UnityObjectToClipPos(input.vertex);
				 return output;
			  }

			  float4 frag(vertexOutput input) : COLOR
			  {
				 float refractiveIndex = _Refract;
				 float3 refractedDir = refract(normalize(input.viewDir),
					normalize(input.normalDir), 1.0 / refractiveIndex);
				 return texCUBE(_Cube, refractedDir);
			  }

			  ENDCG
		   }
	  }
}
