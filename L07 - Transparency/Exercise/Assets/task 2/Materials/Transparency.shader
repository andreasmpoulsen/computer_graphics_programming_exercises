Shader "Custom/Transparency"
{
    SubShader{
          //Tags { "Queue" = "Transparent" }
          // draw after all opaque geometry has been drawn
       Pass {
          //ZWrite Off // don't write to depth buffer 
             // in order not to occlude other objects

          //Blend One One // use additive blending
          //Blend One OneMinusSrcAlpha // premultiplied alpha blending
          Blend SrcAlpha OneMinusSrcAlpha // use alpha blending

          CGPROGRAM

          #pragma vertex vert 
          #pragma fragment frag

          float4 vert(float4 vertexPos : POSITION) : SV_POSITION
          {
             return UnityObjectToClipPos(vertexPos);
          }

          float4 frag(void) : COLOR
          {
             return float4(0.0, 1.0, 0.0, 0.3);
          // the fourth component (alpha) is important: 
          // this is semitransparent green
    }

    ENDCG
 }
    }
}
