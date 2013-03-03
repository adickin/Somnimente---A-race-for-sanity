#version 330

const float LOG2 = 1.442695;

uniform mat4 projectionMatrix;
uniform mat4 mvMatrix;
uniform float fogDensity;
uniform mat4 mvpDepth;

in vec4 inColor;
layout(location = 0) in vec3 inPosition;
in vec3 inNormal;
in vec2 inTexCoord;

smooth out vec4 passColor;
smooth out vec2 passTexCoord;
out vec3 passPosition;
out vec4 passShadowPos;
out vec3 passNormal;
out float fogFactor;


/*
	EVERYTHING IS DONE IN EYE SPACE
*/

void main()
{
	passPosition = (mvMatrix * vec4(inPosition, 1.0)).xyz;

	passNormal = vec3(mvMatrix * vec4(inNormal, 0.0));
	
	passTexCoord = inTexCoord;

	passColor = inColor;


	float z = length(passPosition);

	fogFactor = exp2( - (fogDensity * fogDensity * z * z * LOG2));
	//fogFactor = exp( - (fogDensity * fogDensity * z * z));

	fogFactor = clamp(fogFactor, 0.0, 1.0);
	fogFactor = (1.0 - fogFactor);

	//Linear.
	//fogFactor = ( 750 - z ) / ( 750 - 1);

	passShadowPos = mvpDepth * vec4(inPosition, 1.0);

	gl_Position = projectionMatrix * mvMatrix * vec4(inPosition, 1.0);
}
