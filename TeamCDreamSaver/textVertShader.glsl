#version 330

uniform mat4 projectionMatrix;
uniform mat4 mvMatrix;

in vec4 inColor;
in vec3 inPosition;
in vec2 inTexCoord;

smooth out vec4 passColor;
smooth out vec2 passTexCoord;
out vec3 passPosition;


/*
	EVERYTHING IS DONE IN EYE SPACE
*/

void main()
{
	passPosition = (mvMatrix * vec4(inPosition, 1.0)).xyz;
	
	passTexCoord = inTexCoord;

	passColor = inColor;

	gl_Position = projectionMatrix * mvMatrix * vec4(inPosition, 1.0);
}
