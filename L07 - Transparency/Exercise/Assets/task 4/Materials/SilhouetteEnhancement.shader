Shader "Custom/SilhouetteEnhancement"
{
    Properties{
          _Color("Color", Color) = (1, 1, 1, 0.5)
          // user-specified RGBA color including opacity
          _Exponent("Exponent Factor", float) = 10
    }
        SubShader{
           Tags { "Queue" = "Transparent" }
           // draw after all opaque geometry has been drawn
        Pass {
           ZWrite Off // don't occlude other objects
           //Blend SrcAlpha OneMinusSrcAlpha // standard alpha blending
           Blend One OneMinusSrcAlpha // Premultiplied alpha blending

           CGPROGRAM

           #pragma vertex vert  
           #pragma fragment frag 

           #include "UnityCG.cginc"

           uniform float4 _Color; // define shader property for shaders
           uniform float _Exponent;

           struct vertexInput {
              float4 vertex : POSITION;
              float3 normal : NORMAL;
           };
           struct vertexOutput {
              float4 pos : SV_POSITION;
              float3 normal : TEXCOORD0;
              float3 viewDir : TEXCOORD1;
           };

           vertexOutput vert(vertexInput input)
           {
              vertexOutput output;

              float4x4 modelMatrix = unity_ObjectToWorld;
              float4x4 modelMatrixInverse = unity_WorldToObject;

              output.normal = normalize(
                 mul(float4(input.normal, 0.0), modelMatrixInverse).xyz);
              output.viewDir = normalize(_WorldSpaceCameraPos
                 - mul(modelMatrix, input.vertex).xyz);

              output.pos = UnityObjectToClipPos(input.vertex);
              return output;
           }

           float4 frag(vertexOutput input) : COLOR
           {
              float3 normalDirection = normalize(input.normal);
              float3 viewDirection = normalize(input.viewDir);

              float newOpacity = min(1.0, _Color.a
                 / abs(pow(dot(viewDirection, normalDirection), _Exponent)));
              return float4(_Color.rgb, newOpacity)*_Color.a;
           }

           ENDCG
        }
    }
}
