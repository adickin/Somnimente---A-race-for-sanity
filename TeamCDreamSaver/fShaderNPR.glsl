#version 330

struct Light
{
	vec4 ambientColor;
	vec4 diffuseColor;
	vec4 specularColor;
	vec4 position;
};

vec2 poissonDisk[16] = vec2[]( 
   vec2( -0.94201624, -0.39906216 ), 
   vec2( 0.94558609, -0.76890725 ), 
   vec2( -0.094184101, -0.92938870 ), 
   vec2( 0.34495938, 0.29387760 ), 
   vec2( -0.91588581, 0.45771432 ), 
   vec2( -0.81544232, -0.87912464 ), 
   vec2( -0.38277543, 0.27676845 ), 
   vec2( 0.97484398, 0.75648379 ), 
   vec2( 0.44323325, -0.97511554 ), 
   vec2( 0.53742981, -0.47373420 ), 
   vec2( -0.26496911, -0.41893023 ), 
   vec2( 0.79197514, 0.19090188 ), 
   vec2( -0.24188840, 0.99706507 ), 
   vec2( -0.81409955, 0.91437590 ), 
   vec2( 0.19984126, 0.78641367 ), 
   vec2( 0.14383161, -0.14100790 ) 
);

uniform mat4 mvMatrix;
uniform mat4 viewMatrix;

uniform sampler2D textureMap;
uniform sampler2D depthMap;

uniform Light light1;
uniform float useLights;

uniform float useFog;
uniform vec3 fogColor;
uniform float fogDensity;
in float fogFactor;

smooth in vec4 passColor;
in vec3 passPosition;
in vec3 passNormal;
in vec2 inTexCoord;
in vec4 passShadowPos;

smooth in vec2 passTexCoord;

layout(location = 0) out vec4 outColor;

const float bias = 0.002;

void main()
{
	vec4 diffuseColor = vec4(0,0,0,0);
	vec4 ambientColor = vec4(0,0,0,0);
	vec4 specularColor = vec4(0,0,0,0);

	vec3 adjustedLightPos = (viewMatrix * light1.position).xyz;
	vec3 lightVec = normalize(adjustedLightPos - passPosition);
	vec3 viewVec = vec3(0,0,-1);		//looking from origin down -z axis (into the sceen :) )

	//////////////////////////////////////////////////////////////////////////////////////
	//
	//	Ambient Lighting
	//
	//////////////////////////////////////////////////////////////////////////////////////
	ambientColor = light1.ambientColor;


	//////////////////////////////////////////////////////////////////////////////////////
	//
	//	Diffuse Lighting
	//
	//////////////////////////////////////////////////////////////////////////////////////
	float diffuseValue = max(dot(passNormal, lightVec), 0.0);
	diffuseColor = light1.diffuseColor * diffuseValue;


	//////////////////////////////////////////////////////////////////////////////////////
	//
	//	Specular Lighting
	//
	//////////////////////////////////////////////////////////////////////////////////////
	vec3 R = -reflect(lightVec, passNormal);
	float specularValue = pow(max(dot(R, viewVec), 0.0), 1.0);
	specularColor = light1.specularColor * specularValue;
	
	vec2 tc = vec2(diffuseValue, specularValue);
	//tc = normalize(tc);
	vec4 texel = texture(textureMap, tc);
	vec4 color = texel + passColor;
	
	float inShadow = 1.0;

	if(passShadowPos.w > 0.0)
	{
		for(int i = 0; i < 4; ++i)
		{
			float dot_product = dot(vec4(passShadowPos.xyy, i), vec4(12.9898,78.233,45.164,94.673));
			int index = int( 15.0 * fract(sin(dot_product) * 43758.5453));
			
			if(texture(depthMap, passShadowPos.xy + poissonDisk[index] / 700.0 ).z < (passShadowPos.z - bias))
			{
				inShadow -= 0.2;
			}
		}
	}

	outColor = ((inShadow) * useLights * (ambientColor + specularColor + diffuseColor) * color) + (1.0 - useLights) * color;

	outColor.rgb = mix(outColor.rgb, fogColor, fogFactor * useFog);

	outColor.a = texel.a + passColor.a;
}