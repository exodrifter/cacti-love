// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-5197-OUT,spec-358-OUT,gloss-1813-OUT,normal-5964-RGB;n:type:ShaderForge.SFN_Multiply,id:6343,x:31576,y:32737,varname:node_6343,prsc:2|A-7917-RGB,B-2640-RGB;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32407,y:32978,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:32250,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Time,id:958,x:30731,y:32873,varname:node_958,prsc:2;n:type:ShaderForge.SFN_Add,id:6920,x:31044,y:32794,varname:node_6920,prsc:2|A-5816-Y,B-5879-OUT;n:type:ShaderForge.SFN_Sin,id:2564,x:31227,y:32794,varname:node_2564,prsc:2|IN-4878-OUT;n:type:ShaderForge.SFN_Tex2d,id:7917,x:31387,y:32720,ptovrint:False,ptlb:node_7917,ptin:_node_7917,varname:node_7917,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-2564-OUT;n:type:ShaderForge.SFN_Multiply,id:5879,x:30897,y:32929,varname:node_5879,prsc:2|A-958-T,B-8137-OUT;n:type:ShaderForge.SFN_Vector1,id:8137,x:30731,y:32997,varname:node_8137,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Append,id:4878,x:31126,y:32648,varname:node_4878,prsc:2|A-5816-X,B-6920-OUT;n:type:ShaderForge.SFN_Posterize,id:3790,x:31665,y:32615,varname:node_3790,prsc:2|IN-6343-OUT,STPS-1045-OUT;n:type:ShaderForge.SFN_Vector1,id:1045,x:31424,y:32594,varname:node_1045,prsc:2,v1:4;n:type:ShaderForge.SFN_Step,id:969,x:31913,y:32027,varname:node_969,prsc:2|A-3790-OUT,B-4467-OUT;n:type:ShaderForge.SFN_Vector1,id:5035,x:31565,y:32037,varname:node_5035,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:4467,x:31744,y:32027,varname:node_4467,prsc:2|A-5035-OUT,B-1045-OUT;n:type:ShaderForge.SFN_Step,id:1936,x:31913,y:32152,varname:node_1936,prsc:2|A-3790-OUT,B-4334-OUT;n:type:ShaderForge.SFN_Vector1,id:5487,x:31565,y:32177,varname:node_5487,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:4334,x:31744,y:32177,varname:node_4334,prsc:2|A-5487-OUT,B-1045-OUT;n:type:ShaderForge.SFN_Step,id:4269,x:31913,y:32306,varname:node_4269,prsc:2|A-3790-OUT,B-6664-OUT;n:type:ShaderForge.SFN_Vector1,id:4036,x:31565,y:32331,varname:node_4036,prsc:2,v1:3;n:type:ShaderForge.SFN_Divide,id:6664,x:31744,y:32331,varname:node_6664,prsc:2|A-4036-OUT,B-1045-OUT;n:type:ShaderForge.SFN_OneMinus,id:2349,x:32078,y:32306,varname:node_2349,prsc:2|IN-4269-OUT;n:type:ShaderForge.SFN_OneMinus,id:8506,x:32078,y:32152,varname:node_8506,prsc:2|IN-1936-OUT;n:type:ShaderForge.SFN_Multiply,id:930,x:32232,y:32152,varname:node_930,prsc:2|A-8506-OUT,B-4269-OUT;n:type:ShaderForge.SFN_OneMinus,id:4966,x:32078,y:32027,varname:node_4966,prsc:2|IN-969-OUT;n:type:ShaderForge.SFN_Multiply,id:7688,x:32232,y:32027,varname:node_7688,prsc:2|A-4966-OUT,B-1936-OUT;n:type:ShaderForge.SFN_Step,id:4864,x:31913,y:31892,varname:node_4864,prsc:2|A-3790-OUT,B-9669-OUT;n:type:ShaderForge.SFN_Vector1,id:9297,x:31565,y:31892,varname:node_9297,prsc:2,v1:0;n:type:ShaderForge.SFN_Divide,id:9669,x:31744,y:31882,varname:node_9669,prsc:2|A-9297-OUT,B-1045-OUT;n:type:ShaderForge.SFN_Relay,id:2060,x:32291,y:31903,varname:node_2060,prsc:2|IN-4864-OUT;n:type:ShaderForge.SFN_Color,id:9094,x:32366,y:31950,ptovrint:False,ptlb:Color 1,ptin:_Color1,varname:node_9094,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0.8482761,c4:1;n:type:ShaderForge.SFN_Multiply,id:5190,x:32549,y:31903,varname:node_5190,prsc:2|A-2060-OUT,B-9094-RGB;n:type:ShaderForge.SFN_Color,id:6930,x:32366,y:32117,ptovrint:False,ptlb:Color 2,ptin:_Color2,varname:node_6930,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1294118,c2:1,c3:0.3882353,c4:1;n:type:ShaderForge.SFN_Multiply,id:134,x:32549,y:32029,varname:node_134,prsc:2|A-7688-OUT,B-6930-RGB;n:type:ShaderForge.SFN_Multiply,id:6505,x:32553,y:32305,varname:node_6505,prsc:2|A-4122-OUT,B-4130-RGB;n:type:ShaderForge.SFN_Color,id:4130,x:32366,y:32306,ptovrint:False,ptlb:Color 3,ptin:_Color3,varname:node_4130,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4039216,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:8552,x:32816,y:32176,varname:node_8552,prsc:2|A-5190-OUT,B-134-OUT,C-6505-OUT;n:type:ShaderForge.SFN_Relay,id:4122,x:32291,y:32306,varname:node_4122,prsc:2|IN-2349-OUT;n:type:ShaderForge.SFN_If,id:2200,x:33171,y:32176,varname:node_2200,prsc:2|A-8552-OUT,B-3995-OUT,GT-3995-OUT,EQ-6085-OUT,LT-3995-OUT;n:type:ShaderForge.SFN_Vector1,id:3995,x:32929,y:32280,varname:node_3995,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6085,x:32929,y:32337,varname:node_6085,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:8744,x:32984,y:32124,ptovrint:False,ptlb:Color 4,ptin:_Color4,varname:node_8744,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5586207,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7364,x:33344,y:32129,varname:node_7364,prsc:2|A-8744-RGB,B-2200-OUT;n:type:ShaderForge.SFN_Add,id:5197,x:32940,y:32479,varname:node_5197,prsc:2|A-8552-OUT,B-7364-OUT;n:type:ShaderForge.SFN_Tex2d,id:2640,x:31387,y:32923,ptovrint:False,ptlb:node_2640,ptin:_node_2640,varname:node_2640,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6134-OUT;n:type:ShaderForge.SFN_Add,id:6134,x:31164,y:32923,varname:node_6134,prsc:2|A-2340-OUT,B-5879-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5816,x:30698,y:32643,varname:node_5816,prsc:2;n:type:ShaderForge.SFN_Append,id:2340,x:30864,y:32681,varname:node_2340,prsc:2|A-5816-Y,B-5816-Z;proporder:5964-358-1813-7917-9094-6930-4130-8744-2640;pass:END;sub:END;*/

Shader "Shader Forge/Broken Rainbow" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _node_7917 ("node_7917", 2D) = "white" {}
        _Color1 ("Color 1", Color) = (1,0,0.8482761,1)
        _Color2 ("Color 2", Color) = (0.1294118,1,0.3882353,1)
        _Color3 ("Color 3", Color) = (0.4039216,1,1,1)
        _Color4 ("Color 4", Color) = (1,0.5586207,0,1)
        _node_2640 ("node_2640", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _node_7917; uniform float4 _node_7917_ST;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float4 _Color4;
            uniform sampler2D _node_2640; uniform float4 _node_2640_ST;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
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
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 node_958 = _Time + _TimeEditor;
                float node_5879 = (node_958.g*0.5);
                float2 node_2564 = sin(float2(i.posWorld.r,(i.posWorld.g+node_5879)));
                float4 _node_7917_var = tex2D(_node_7917,TRANSFORM_TEX(node_2564, _node_7917));
                float2 node_6134 = (float2(i.posWorld.g,i.posWorld.b)+node_5879);
                float4 _node_2640_var = tex2D(_node_2640,TRANSFORM_TEX(node_6134, _node_2640));
                float node_1045 = 4.0;
                float3 node_3790 = floor((_node_7917_var.rgb*_node_2640_var.rgb) * node_1045) / (node_1045 - 1);
                float3 node_1936 = step(node_3790,(2.0/node_1045));
                float3 node_4269 = step(node_3790,(3.0/node_1045));
                float3 node_8552 = ((step(node_3790,(0.0/node_1045))*_Color1.rgb)+(((1.0 - step(node_3790,(1.0/node_1045)))*node_1936)*_Color2.rgb)+((1.0 - node_4269)*_Color3.rgb));
                float node_3995 = 0.0;
                float node_2200_if_leA = step(node_8552,node_3995);
                float node_2200_if_leB = step(node_3995,node_8552);
                float3 diffuseColor = (node_8552+(_Color4.rgb*lerp((node_2200_if_leA*node_3995)+(node_2200_if_leB*node_3995),1.0,node_2200_if_leA*node_2200_if_leB))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
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
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _node_7917; uniform float4 _node_7917_ST;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float4 _Color4;
            uniform sampler2D _node_2640; uniform float4 _node_2640_ST;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 node_958 = _Time + _TimeEditor;
                float node_5879 = (node_958.g*0.5);
                float2 node_2564 = sin(float2(i.posWorld.r,(i.posWorld.g+node_5879)));
                float4 _node_7917_var = tex2D(_node_7917,TRANSFORM_TEX(node_2564, _node_7917));
                float2 node_6134 = (float2(i.posWorld.g,i.posWorld.b)+node_5879);
                float4 _node_2640_var = tex2D(_node_2640,TRANSFORM_TEX(node_6134, _node_2640));
                float node_1045 = 4.0;
                float3 node_3790 = floor((_node_7917_var.rgb*_node_2640_var.rgb) * node_1045) / (node_1045 - 1);
                float3 node_1936 = step(node_3790,(2.0/node_1045));
                float3 node_4269 = step(node_3790,(3.0/node_1045));
                float3 node_8552 = ((step(node_3790,(0.0/node_1045))*_Color1.rgb)+(((1.0 - step(node_3790,(1.0/node_1045)))*node_1936)*_Color2.rgb)+((1.0 - node_4269)*_Color3.rgb));
                float node_3995 = 0.0;
                float node_2200_if_leA = step(node_8552,node_3995);
                float node_2200_if_leB = step(node_3995,node_8552);
                float3 diffuseColor = (node_8552+(_Color4.rgb*lerp((node_2200_if_leA*node_3995)+(node_2200_if_leB*node_3995),1.0,node_2200_if_leA*node_2200_if_leB))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _node_7917; uniform float4 _node_7917_ST;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float4 _Color4;
            uniform sampler2D _node_2640; uniform float4 _node_2640_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 node_958 = _Time + _TimeEditor;
                float node_5879 = (node_958.g*0.5);
                float2 node_2564 = sin(float2(i.posWorld.r,(i.posWorld.g+node_5879)));
                float4 _node_7917_var = tex2D(_node_7917,TRANSFORM_TEX(node_2564, _node_7917));
                float2 node_6134 = (float2(i.posWorld.g,i.posWorld.b)+node_5879);
                float4 _node_2640_var = tex2D(_node_2640,TRANSFORM_TEX(node_6134, _node_2640));
                float node_1045 = 4.0;
                float3 node_3790 = floor((_node_7917_var.rgb*_node_2640_var.rgb) * node_1045) / (node_1045 - 1);
                float3 node_1936 = step(node_3790,(2.0/node_1045));
                float3 node_4269 = step(node_3790,(3.0/node_1045));
                float3 node_8552 = ((step(node_3790,(0.0/node_1045))*_Color1.rgb)+(((1.0 - step(node_3790,(1.0/node_1045)))*node_1936)*_Color2.rgb)+((1.0 - node_4269)*_Color3.rgb));
                float node_3995 = 0.0;
                float node_2200_if_leA = step(node_8552,node_3995);
                float node_2200_if_leB = step(node_3995,node_8552);
                float3 diffColor = (node_8552+(_Color4.rgb*lerp((node_2200_if_leA*node_3995)+(node_2200_if_leB*node_3995),1.0,node_2200_if_leA*node_2200_if_leB)));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
