float fresnelSchlick(f0, HdotV){
     return f0 + (1.0-f0)*pow((1.0-HdotV), 5.0);
}

vec3 metallicBRDF(){
     // compute f0 and HdotV
     vec3 F0 = vec3(fresnelSchlick(f0, HdotV));
     // doing F0 for the dielectric and metal
     // normal distribution: 
     float a2 = a*a;
     float NdotH = dot(n,h);
     float D = 
}

 void main(){
     float count = 5;

}