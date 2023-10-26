#version 330 es

in vec3 position;
in vec3 uNormals;

layout(location =0) out vec4 FragColor;

uniform vec3 cameraPos;
uniform float roughness;

#define NUM_LIGHTS 2
#define PI 3.1514

struct LightSource{
     vec3 Position;
     vec3 Color;
     float specularCoefficient; //intensity of specular lighting

}

uniform LightSource Light[NUM_LIGHTS];
float ambientCofficient = 0.01

float fresnelSchlick(f0, HdotV){
     return f0 + (1.0-f0)*pow((1.0-HdotV), 5.0);
}

vec3 metallicBRDF(){
     // compute f0 and HdotV
     vec3 V = vec3();
     vec3 n = vec3();
     vec3 L = vec3();
     // reflectance at normal incidence
     vec3 f0 = ((n- vec3(1.0))*(n- vec3(1.0)))/((n+vec3(1.0))*(n + vec3(1.0)));
     vec3 F0 = vec3(fresnelSchlick(f0, HdotV));
     F0 = mix(F0, surfaceColor.rgb, metalness);
     // doing F0 for the dielectric and metal
     // normal distribution: 
     float a2 = a*a;
     float NdotH = dot(n,h);
     float denom = ((NdotH*NdotH)*(a2-1.0) + 1.0);
     float denom2 = denom*denom;
     float D = a2/(PI*denom2)
     // geometry function
     // find k 
     float NdotV = max(0.0, dot(n, V));
     float NdotL = max(0.0, dot(n, L));
     // for direct lighting
     float k = (a+1)*(a+1)/8.0;
     float Gs = NdotV/(NdotV(1.0-k) + k);
     float Go = NdotL/(NdotL(1.0-k)+ k);
     float G = Gs*Go;

     //--------------------
     float rs = D*f*g
}

 void main(){
     float count = 5;

}