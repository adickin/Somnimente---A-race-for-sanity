#version 330

uniform mat4 projectionMatrix;
uniform mat4 mvMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

in vec3 inPosition;

smooth out vec2 passTexCoord;


/*
	EVERYTHING IS DONE IN EYE SPACE
*/

void main()
{
	gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(inPosition, 1.0);

	passTexCoord = (inPosition.xy + vec2(1.0, 1.0)) / 2.0;
}
