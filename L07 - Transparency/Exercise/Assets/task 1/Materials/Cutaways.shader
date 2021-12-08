Shader "Custom/Cutaways"
{
	SubShader{

		// first pass (is executed before the second pass)
		Pass {
		   Cull Front // cull only front faces

		   CGPROGRAM

		   #pragma vertex vert  
		   #pragma fragment frag 

		   struct vertexInput {
			  float4 vertex : POSITION;
		   };
		   struct vertexOutput {
			  float4 pos : SV_POSITION;
			  float4 posInObjectCoords : TEXCOORD0;
			  float4 posInWorldCoords: TEXCOORD1;
		   };

		   vertexOutput vert(vertexInput input)
		   {
			  vertexOutput output;

			  output.pos = UnityObjectToClipPos(input.vertex);
			  output.posInObjectCoords = input.vertex;
			  output.posInWorldCoords = mul(unity_ObjectToWorld, input.vertex);

			  return output;
		   }

		   float4 frag(vertexOutput input) : COLOR
		   {
			   //if (input.posInWorldCoords.y > 0.0)
			   //{
			   //   discard; // drop the fragment if y coordinate > 0
			   //}

			   if (sqrt((input.posInWorldCoords.x * input.posInWorldCoords.x) + (input.posInWorldCoords.y * input.posInWorldCoords.y) + (input.posInWorldCoords.z * input.posInWorldCoords.z)) > 0.5)
			   {
				   discard;
			   }
			   return float4(1.0, 0.0, 0.0, 1.0); // red
			}

			ENDCG
		 }

		// second pass (is executed after the first pass)
		Pass {
		   Cull Back // cull only back faces

		   CGPROGRAM

		   #pragma vertex vert  
		   #pragma fragment frag 

		   struct vertexInput {
			  float4 vertex : POSITION;
		   };
		   struct vertexOutput {
			  float4 pos : SV_POSITION;
			  float4 posInObjectCoords : TEXCOORD0;
			  float4 posInWorldCoords: TEXCOORD1;
		   };

		   vertexOutput vert(vertexInput input)
		   {
			  vertexOutput output;

			  output.pos = UnityObjectToClipPos(input.vertex);
			  output.posInObjectCoords = input.vertex;
			  output.posInWorldCoords = mul(unity_ObjectToWorld, input.vertex);

			  return output;
		   }

		   float4 frag(vertexOutput input) : COLOR
		   {
			  //if (input.posInObjectCoords.y > 0.0)
			  //{
				 //discard; // drop the fragment if y coordinate > 0
			  //}
			  if (sqrt((input.posInWorldCoords.x * input.posInWorldCoords.x) + (input.posInWorldCoords.y * input.posInWorldCoords.y) + (input.posInWorldCoords.z * input.posInWorldCoords.z)) > 0.5)
			  {
				 discard;
			  }
			  return float4(0.0, 1.0, 0.0, 1.0); // green
		   }

		   ENDCG
		}
	}
}
