// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34341,y:32931,varname:node_2865,prsc:2|diff-6343-OUT,spec-8496-OUT,gloss-6962-OUT,normal-8482-OUT,emission-391-OUT,clip-5367-OUT,voffset-3455-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32206,y:32456,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31379,y:32226,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31379,y:32418,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32196,y:32957,ptovrint:True,ptlb:NormalTex,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:4265,x:32025,y:32572,ptovrint:False,ptlb:MetallicTex,ptin:_MetallicTex,varname:node_4265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7210,x:32026,y:32820,ptovrint:False,ptlb:GlossTex,ptin:_GlossTex,varname:node_7210,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:8429,x:31869,y:32720,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_8429,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3423,x:31869,y:32968,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_3423,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7435898,max:1;n:type:ShaderForge.SFN_Multiply,id:8496,x:32292,y:32682,varname:node_8496,prsc:2|A-4265-R,B-8429-OUT;n:type:ShaderForge.SFN_Multiply,id:6962,x:32292,y:32824,varname:node_6962,prsc:2|A-7210-R,B-3423-OUT;n:type:ShaderForge.SFN_Slider,id:6426,x:32018,y:33126,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_6426,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:8482,x:32408,y:32994,varname:node_8482,prsc:2|A-5964-RGB,B-6426-OUT;n:type:ShaderForge.SFN_Tex2d,id:5373,x:32555,y:33354,ptovrint:False,ptlb:Wind Noise,ptin:_WindNoise,varname:node_5373,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1171-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4434,x:32242,y:33354,varname:node_4434,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:1171,x:32399,y:33354,varname:node_1171,prsc:2,spu:0,spv:0.1|UVIN-4434-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4792,x:32166,y:31851,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_4792,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7236,x:32367,y:32364,ptovrint:False,ptlb:SSSSteep,ptin:_SSSSteep,varname:node_7236,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_LightColor,id:9453,x:32524,y:32136,varname:node_9453,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9485,x:32802,y:31967,varname:node_9485,prsc:2|A-7931-OUT,B-7736-RGB;n:type:ShaderForge.SFN_Multiply,id:7931,x:32456,y:31954,varname:node_7931,prsc:2|A-4792-RGB,B-2674-OUT;n:type:ShaderForge.SFN_Slider,id:2674,x:31817,y:32073,ptovrint:False,ptlb:SSSLight,ptin:_SSSLight,varname:node_2674,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2182,x:32555,y:32957,ptovrint:False,ptlb:AlphaBlend,ptin:_AlphaBlend,varname:node_2182,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:5367,x:32989,y:32799,varname:node_5367,prsc:2|A-7736-A,B-2182-OUT;n:type:ShaderForge.SFN_Multiply,id:6181,x:33328,y:33684,varname:node_6181,prsc:2|A-4244-OUT,B-5622-OUT;n:type:ShaderForge.SFN_Tex2d,id:8029,x:33328,y:33505,ptovrint:False,ptlb:WindNoiseAlpha,ptin:_WindNoiseAlpha,varname:node_8029,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ObjectPosition,id:8421,x:32196,y:34489,varname:node_8421,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:5285,x:32196,y:34341,varname:node_5285,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7648,x:32396,y:34408,varname:node_7648,prsc:2|A-5285-Y,B-8421-Y;n:type:ShaderForge.SFN_Add,id:1348,x:33718,y:33706,varname:node_1348,prsc:2|A-2024-OUT,B-8400-OUT;n:type:ShaderForge.SFN_Append,id:2947,x:33221,y:33964,varname:node_2947,prsc:2|A-3556-OUT,B-9405-OUT,C-3556-OUT;n:type:ShaderForge.SFN_Slider,id:455,x:32385,y:33875,ptovrint:False,ptlb:WindBlendA,ptin:_WindBlendA,varname:node_455,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:430,x:32246,y:33546,ptovrint:False,ptlb:X,ptin:_X,varname:node_430,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5246,x:32246,y:33632,ptovrint:False,ptlb:Y,ptin:_Y,varname:node_5246,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4031,x:32246,y:33719,ptovrint:False,ptlb:Z,ptin:_Z,varname:node_4031,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_NormalVector,id:816,x:33328,y:33320,prsc:2,pt:True;n:type:ShaderForge.SFN_Power,id:5622,x:33104,y:33733,varname:node_5622,prsc:2|VAL-5594-OUT,EXP-9983-OUT;n:type:ShaderForge.SFN_Exp,id:9983,x:32817,y:33789,varname:node_9983,prsc:2,et:0|IN-455-OUT;n:type:ShaderForge.SFN_Slider,id:4244,x:32242,y:33243,ptovrint:False,ptlb:WindBlendB,ptin:_WindBlendB,varname:node_4244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Append,id:1752,x:32600,y:33611,varname:node_1752,prsc:2|A-430-OUT,B-5246-OUT,C-4031-OUT;n:type:ShaderForge.SFN_Subtract,id:5594,x:32859,y:33589,varname:node_5594,prsc:2|A-5373-RGB,B-1752-OUT;n:type:ShaderForge.SFN_Power,id:391,x:33068,y:32193,varname:node_391,prsc:2|VAL-9485-OUT,EXP-1063-OUT;n:type:ShaderForge.SFN_Exp,id:1063,x:32821,y:32193,varname:node_1063,prsc:2,et:0|IN-7236-OUT;n:type:ShaderForge.SFN_Multiply,id:2024,x:33534,y:33480,varname:node_2024,prsc:2|A-816-OUT,B-8029-RGB,C-6181-OUT;n:type:ShaderForge.SFN_Multiply,id:8400,x:33519,y:33963,varname:node_8400,prsc:2|A-2947-OUT,B-4087-RGB;n:type:ShaderForge.SFN_Tex2d,id:4087,x:33221,y:34127,ptovrint:False,ptlb:WindAlpha,ptin:_WindAlpha,varname:node_4087,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3556,x:32986,y:34283,varname:node_3556,prsc:2|A-7509-OUT,B-5870-OUT,C-9132-OUT;n:type:ShaderForge.SFN_Subtract,id:7509,x:32784,y:34148,varname:node_7509,prsc:2|A-5373-G,B-3181-OUT;n:type:ShaderForge.SFN_Slider,id:3181,x:32361,y:34132,ptovrint:False,ptlb:MoveSen,ptin:_MoveSen,varname:node_3181,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1530,x:32147,y:34745,ptovrint:False,ptlb:MoveYStart,ptin:_MoveYStart,varname:node_1530,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:30;n:type:ShaderForge.SFN_Vector1,id:9405,x:32963,y:33992,varname:node_9405,prsc:2,v1:0;n:type:ShaderForge.SFN_If,id:5870,x:32752,y:34530,varname:node_5870,prsc:2|A-7648-OUT,B-1530-OUT,GT-8360-OUT,EQ-5981-OUT,LT-5981-OUT;n:type:ShaderForge.SFN_Add,id:8360,x:32567,y:34568,varname:node_8360,prsc:2|A-7648-OUT,B-1530-OUT;n:type:ShaderForge.SFN_Vector1,id:5981,x:32435,y:34812,varname:node_5981,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:9132,x:32644,y:34765,ptovrint:False,ptlb:MoveYStenthg,ptin:_MoveYStenthg,varname:_MoveYStart_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0,max:10;n:type:ShaderForge.SFN_Tex2d,id:8438,x:33635,y:34336,ptovrint:False,ptlb:Wind Noise_copy,ptin:_WindNoise_copy,varname:_WindNoise_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1415-UVOUT;n:type:ShaderForge.SFN_Panner,id:1415,x:33488,y:34453,varname:node_1415,prsc:2,spu:0,spv:0.1|UVIN-7240-OUT;n:type:ShaderForge.SFN_Multiply,id:3455,x:34010,y:33796,varname:node_3455,prsc:2|A-1348-OUT,B-8438-G;n:type:ShaderForge.SFN_FragmentPosition,id:4713,x:33095,y:34424,varname:node_4713,prsc:2;n:type:ShaderForge.SFN_Append,id:7240,x:33292,y:34453,varname:node_7240,prsc:2|A-4713-X,B-4713-Z;proporder:5964-6665-7736-4265-7210-8429-3423-6426-5373-4792-7236-2674-2182-8029-4087-455-4244-430-5246-4031-3181-1530-9132-8438;pass:END;sub:END;*/

Shader "Shader Forge/Tree" {
    Properties {
        _BumpMap ("NormalTex", 2D) = "bump" {}
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _MainTex ("Base Color", 2D) = "white" {}
        _MetallicTex ("MetallicTex", 2D) = "white" {}
        _GlossTex ("GlossTex", 2D) = "white" {}
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.7435898
        _Normal ("Normal", Range(0, 1)) = 1
        _WindNoise ("Wind Noise", 2D) = "white" {}
        _Light ("Light", 2D) = "white" {}
        _SSSSteep ("SSSSteep", Range(0, 1)) = 0
        _SSSLight ("SSSLight", Range(0, 1)) = 0
        _AlphaBlend ("AlphaBlend", Range(1, 10)) = 1
        _WindNoiseAlpha ("WindNoiseAlpha", 2D) = "white" {}
        _WindAlpha ("WindAlpha", 2D) = "white" {}
        _WindBlendA ("WindBlendA", Range(0, 1)) = 0
        _WindBlendB ("WindBlendB", Range(0, 10)) = 0
        _X ("X", Range(-1, 1)) = 0
        _Y ("Y", Range(-1, 1)) = 0
        _Z ("Z", Range(-1, 1)) = 0
        _MoveSen ("MoveSen", Range(-1, 1)) = 0
        _MoveYStart ("MoveYStart", Range(0, 30)) = 0
        _MoveYStenthg ("MoveYStenthg", Range(-10, 10)) = 0
        _WindNoise_copy ("Wind Noise_copy", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _MetallicTex; uniform float4 _MetallicTex_ST;
            uniform sampler2D _GlossTex; uniform float4 _GlossTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _Normal;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform sampler2D _Light; uniform float4 _Light_ST;
            uniform float _SSSSteep;
            uniform float _SSSLight;
            uniform float _AlphaBlend;
            uniform sampler2D _WindNoiseAlpha; uniform float4 _WindNoiseAlpha_ST;
            uniform float _WindBlendA;
            uniform float _X;
            uniform float _Y;
            uniform float _Z;
            uniform float _WindBlendB;
            uniform sampler2D _WindAlpha; uniform float4 _WindAlpha_ST;
            uniform float _MoveSen;
            uniform float _MoveYStart;
            uniform float _MoveYStenthg;
            uniform sampler2D _WindNoise_copy; uniform float4 _WindNoise_copy_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _WindNoiseAlpha_var = tex2Dlod(_WindNoiseAlpha,float4(TRANSFORM_TEX(o.uv0, _WindNoiseAlpha),0.0,0));
                float4 node_4745 = _Time + _TimeEditor;
                float2 node_1171 = (o.uv0+node_4745.g*float2(0,0.1));
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_1171, _WindNoise),0.0,0));
                float node_7648 = (mul(unity_ObjectToWorld, v.vertex).g-objPos.g);
                float node_5870_if_leA = step(node_7648,_MoveYStart);
                float node_5870_if_leB = step(_MoveYStart,node_7648);
                float node_5981 = 0.0;
                float node_3556 = ((_WindNoise_var.g-_MoveSen)*lerp((node_5870_if_leA*node_5981)+(node_5870_if_leB*(node_7648+_MoveYStart)),node_5981,node_5870_if_leA*node_5870_if_leB)*_MoveYStenthg);
                float4 _WindAlpha_var = tex2Dlod(_WindAlpha,float4(TRANSFORM_TEX(o.uv0, _WindAlpha),0.0,0));
                float2 node_1415 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+node_4745.g*float2(0,0.1));
                float4 _WindNoise_copy_var = tex2Dlod(_WindNoise_copy,float4(TRANSFORM_TEX(node_1415, _WindNoise_copy),0.0,0));
                v.vertex.xyz += (((v.normal*_WindNoiseAlpha_var.rgb*(_WindBlendB*pow((_WindNoise_var.rgb-float3(_X,_Y,_Z)),exp(_WindBlendA))))+(float3(node_3556,0.0,node_3556)*_WindAlpha_var.rgb))*_WindNoise_copy_var.g);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = (_BumpMap_var.rgb*_Normal);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_AlphaBlend) - 0.5);
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _GlossTex_var = tex2D(_GlossTex,TRANSFORM_TEX(i.uv0, _GlossTex));
                float gloss = (_GlossTex_var.r*_Gloss);
                float perceptualRoughness = 1.0 - (_GlossTex_var.r*_Gloss);
                float roughness = perceptualRoughness * perceptualRoughness;
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float4 _MetallicTex_var = tex2D(_MetallicTex,TRANSFORM_TEX(i.uv0, _MetallicTex));
                float3 specularColor = (_MetallicTex_var.r*_Metallic);
                float specularMonochrome;
                float3 diffuseColor = (_MainTex_var.rgb*_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
/////// Diffuse:
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
////// Emissive:
                float4 _Light_var = tex2D(_Light,TRANSFORM_TEX(i.uv0, _Light));
                float3 emissive = pow(((_Light_var.rgb*_SSSLight)*_MainTex_var.rgb),exp(_SSSSteep));
/// Final Color:
                outDiffuse = half4( diffuseColor, 1 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( pow(((_Light_var.rgb*_SSSLight)*_MainTex_var.rgb),exp(_SSSSteep)), 1 );
                outEmission.rgb += indirectSpecular * 1;
                outEmission.rgb += indirectDiffuse * diffuseColor;
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _MetallicTex; uniform float4 _MetallicTex_ST;
            uniform sampler2D _GlossTex; uniform float4 _GlossTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _Normal;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform sampler2D _Light; uniform float4 _Light_ST;
            uniform float _SSSSteep;
            uniform float _SSSLight;
            uniform float _AlphaBlend;
            uniform sampler2D _WindNoiseAlpha; uniform float4 _WindNoiseAlpha_ST;
            uniform float _WindBlendA;
            uniform float _X;
            uniform float _Y;
            uniform float _Z;
            uniform float _WindBlendB;
            uniform sampler2D _WindAlpha; uniform float4 _WindAlpha_ST;
            uniform float _MoveSen;
            uniform float _MoveYStart;
            uniform float _MoveYStenthg;
            uniform sampler2D _WindNoise_copy; uniform float4 _WindNoise_copy_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _WindNoiseAlpha_var = tex2Dlod(_WindNoiseAlpha,float4(TRANSFORM_TEX(o.uv0, _WindNoiseAlpha),0.0,0));
                float4 node_6336 = _Time + _TimeEditor;
                float2 node_1171 = (o.uv0+node_6336.g*float2(0,0.1));
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_1171, _WindNoise),0.0,0));
                float node_7648 = (mul(unity_ObjectToWorld, v.vertex).g-objPos.g);
                float node_5870_if_leA = step(node_7648,_MoveYStart);
                float node_5870_if_leB = step(_MoveYStart,node_7648);
                float node_5981 = 0.0;
                float node_3556 = ((_WindNoise_var.g-_MoveSen)*lerp((node_5870_if_leA*node_5981)+(node_5870_if_leB*(node_7648+_MoveYStart)),node_5981,node_5870_if_leA*node_5870_if_leB)*_MoveYStenthg);
                float4 _WindAlpha_var = tex2Dlod(_WindAlpha,float4(TRANSFORM_TEX(o.uv0, _WindAlpha),0.0,0));
                float2 node_1415 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+node_6336.g*float2(0,0.1));
                float4 _WindNoise_copy_var = tex2Dlod(_WindNoise_copy,float4(TRANSFORM_TEX(node_1415, _WindNoise_copy),0.0,0));
                v.vertex.xyz += (((v.normal*_WindNoiseAlpha_var.rgb*(_WindBlendB*pow((_WindNoise_var.rgb-float3(_X,_Y,_Z)),exp(_WindBlendA))))+(float3(node_3556,0.0,node_3556)*_WindAlpha_var.rgb))*_WindNoise_copy_var.g);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = (_BumpMap_var.rgb*_Normal);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_AlphaBlend) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _GlossTex_var = tex2D(_GlossTex,TRANSFORM_TEX(i.uv0, _GlossTex));
                float gloss = (_GlossTex_var.r*_Gloss);
                float perceptualRoughness = 1.0 - (_GlossTex_var.r*_Gloss);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _MetallicTex_var = tex2D(_MetallicTex,TRANSFORM_TEX(i.uv0, _MetallicTex));
                float3 specularColor = (_MetallicTex_var.r*_Metallic);
                float specularMonochrome;
                float3 diffuseColor = (_MainTex_var.rgb*_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _Light_var = tex2D(_Light,TRANSFORM_TEX(i.uv0, _Light));
                float3 emissive = pow(((_Light_var.rgb*_SSSLight)*_MainTex_var.rgb),exp(_SSSSteep));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _MetallicTex; uniform float4 _MetallicTex_ST;
            uniform sampler2D _GlossTex; uniform float4 _GlossTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _Normal;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform sampler2D _Light; uniform float4 _Light_ST;
            uniform float _SSSSteep;
            uniform float _SSSLight;
            uniform float _AlphaBlend;
            uniform sampler2D _WindNoiseAlpha; uniform float4 _WindNoiseAlpha_ST;
            uniform float _WindBlendA;
            uniform float _X;
            uniform float _Y;
            uniform float _Z;
            uniform float _WindBlendB;
            uniform sampler2D _WindAlpha; uniform float4 _WindAlpha_ST;
            uniform float _MoveSen;
            uniform float _MoveYStart;
            uniform float _MoveYStenthg;
            uniform sampler2D _WindNoise_copy; uniform float4 _WindNoise_copy_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _WindNoiseAlpha_var = tex2Dlod(_WindNoiseAlpha,float4(TRANSFORM_TEX(o.uv0, _WindNoiseAlpha),0.0,0));
                float4 node_398 = _Time + _TimeEditor;
                float2 node_1171 = (o.uv0+node_398.g*float2(0,0.1));
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_1171, _WindNoise),0.0,0));
                float node_7648 = (mul(unity_ObjectToWorld, v.vertex).g-objPos.g);
                float node_5870_if_leA = step(node_7648,_MoveYStart);
                float node_5870_if_leB = step(_MoveYStart,node_7648);
                float node_5981 = 0.0;
                float node_3556 = ((_WindNoise_var.g-_MoveSen)*lerp((node_5870_if_leA*node_5981)+(node_5870_if_leB*(node_7648+_MoveYStart)),node_5981,node_5870_if_leA*node_5870_if_leB)*_MoveYStenthg);
                float4 _WindAlpha_var = tex2Dlod(_WindAlpha,float4(TRANSFORM_TEX(o.uv0, _WindAlpha),0.0,0));
                float2 node_1415 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+node_398.g*float2(0,0.1));
                float4 _WindNoise_copy_var = tex2Dlod(_WindNoise_copy,float4(TRANSFORM_TEX(node_1415, _WindNoise_copy),0.0,0));
                v.vertex.xyz += (((v.normal*_WindNoiseAlpha_var.rgb*(_WindBlendB*pow((_WindNoise_var.rgb-float3(_X,_Y,_Z)),exp(_WindBlendA))))+(float3(node_3556,0.0,node_3556)*_WindAlpha_var.rgb))*_WindNoise_copy_var.g);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = (_BumpMap_var.rgb*_Normal);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_AlphaBlend) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _GlossTex_var = tex2D(_GlossTex,TRANSFORM_TEX(i.uv0, _GlossTex));
                float gloss = (_GlossTex_var.r*_Gloss);
                float perceptualRoughness = 1.0 - (_GlossTex_var.r*_Gloss);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _MetallicTex_var = tex2D(_MetallicTex,TRANSFORM_TEX(i.uv0, _MetallicTex));
                float3 specularColor = (_MetallicTex_var.r*_Metallic);
                float specularMonochrome;
                float3 diffuseColor = (_MainTex_var.rgb*_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform float _AlphaBlend;
            uniform sampler2D _WindNoiseAlpha; uniform float4 _WindNoiseAlpha_ST;
            uniform float _WindBlendA;
            uniform float _X;
            uniform float _Y;
            uniform float _Z;
            uniform float _WindBlendB;
            uniform sampler2D _WindAlpha; uniform float4 _WindAlpha_ST;
            uniform float _MoveSen;
            uniform float _MoveYStart;
            uniform float _MoveYStenthg;
            uniform sampler2D _WindNoise_copy; uniform float4 _WindNoise_copy_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _WindNoiseAlpha_var = tex2Dlod(_WindNoiseAlpha,float4(TRANSFORM_TEX(o.uv0, _WindNoiseAlpha),0.0,0));
                float4 node_4697 = _Time + _TimeEditor;
                float2 node_1171 = (o.uv0+node_4697.g*float2(0,0.1));
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_1171, _WindNoise),0.0,0));
                float node_7648 = (mul(unity_ObjectToWorld, v.vertex).g-objPos.g);
                float node_5870_if_leA = step(node_7648,_MoveYStart);
                float node_5870_if_leB = step(_MoveYStart,node_7648);
                float node_5981 = 0.0;
                float node_3556 = ((_WindNoise_var.g-_MoveSen)*lerp((node_5870_if_leA*node_5981)+(node_5870_if_leB*(node_7648+_MoveYStart)),node_5981,node_5870_if_leA*node_5870_if_leB)*_MoveYStenthg);
                float4 _WindAlpha_var = tex2Dlod(_WindAlpha,float4(TRANSFORM_TEX(o.uv0, _WindAlpha),0.0,0));
                float2 node_1415 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+node_4697.g*float2(0,0.1));
                float4 _WindNoise_copy_var = tex2Dlod(_WindNoise_copy,float4(TRANSFORM_TEX(node_1415, _WindNoise_copy),0.0,0));
                v.vertex.xyz += (((v.normal*_WindNoiseAlpha_var.rgb*(_WindBlendB*pow((_WindNoise_var.rgb-float3(_X,_Y,_Z)),exp(_WindBlendA))))+(float3(node_3556,0.0,node_3556)*_WindAlpha_var.rgb))*_WindNoise_copy_var.g);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_AlphaBlend) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MetallicTex; uniform float4 _MetallicTex_ST;
            uniform sampler2D _GlossTex; uniform float4 _GlossTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform sampler2D _Light; uniform float4 _Light_ST;
            uniform float _SSSSteep;
            uniform float _SSSLight;
            uniform sampler2D _WindNoiseAlpha; uniform float4 _WindNoiseAlpha_ST;
            uniform float _WindBlendA;
            uniform float _X;
            uniform float _Y;
            uniform float _Z;
            uniform float _WindBlendB;
            uniform sampler2D _WindAlpha; uniform float4 _WindAlpha_ST;
            uniform float _MoveSen;
            uniform float _MoveYStart;
            uniform float _MoveYStenthg;
            uniform sampler2D _WindNoise_copy; uniform float4 _WindNoise_copy_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _WindNoiseAlpha_var = tex2Dlod(_WindNoiseAlpha,float4(TRANSFORM_TEX(o.uv0, _WindNoiseAlpha),0.0,0));
                float4 node_3995 = _Time + _TimeEditor;
                float2 node_1171 = (o.uv0+node_3995.g*float2(0,0.1));
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_1171, _WindNoise),0.0,0));
                float node_7648 = (mul(unity_ObjectToWorld, v.vertex).g-objPos.g);
                float node_5870_if_leA = step(node_7648,_MoveYStart);
                float node_5870_if_leB = step(_MoveYStart,node_7648);
                float node_5981 = 0.0;
                float node_3556 = ((_WindNoise_var.g-_MoveSen)*lerp((node_5870_if_leA*node_5981)+(node_5870_if_leB*(node_7648+_MoveYStart)),node_5981,node_5870_if_leA*node_5870_if_leB)*_MoveYStenthg);
                float4 _WindAlpha_var = tex2Dlod(_WindAlpha,float4(TRANSFORM_TEX(o.uv0, _WindAlpha),0.0,0));
                float2 node_1415 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+node_3995.g*float2(0,0.1));
                float4 _WindNoise_copy_var = tex2Dlod(_WindNoise_copy,float4(TRANSFORM_TEX(node_1415, _WindNoise_copy),0.0,0));
                v.vertex.xyz += (((v.normal*_WindNoiseAlpha_var.rgb*(_WindBlendB*pow((_WindNoise_var.rgb-float3(_X,_Y,_Z)),exp(_WindBlendA))))+(float3(node_3556,0.0,node_3556)*_WindAlpha_var.rgb))*_WindNoise_copy_var.g);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Light_var = tex2D(_Light,TRANSFORM_TEX(i.uv0, _Light));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                o.Emission = pow(((_Light_var.rgb*_SSSLight)*_MainTex_var.rgb),exp(_SSSSteep));
                
                float3 diffColor = (_MainTex_var.rgb*_Color.rgb);
                float specularMonochrome;
                float3 specColor;
                float4 _MetallicTex_var = tex2D(_MetallicTex,TRANSFORM_TEX(i.uv0, _MetallicTex));
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, (_MetallicTex_var.r*_Metallic), specColor, specularMonochrome );
                float4 _GlossTex_var = tex2D(_GlossTex,TRANSFORM_TEX(i.uv0, _GlossTex));
                float roughness = 1.0 - (_GlossTex_var.r*_Gloss);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
