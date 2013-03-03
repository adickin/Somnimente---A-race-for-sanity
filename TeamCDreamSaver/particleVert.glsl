#version 330

uniform mat4 projectionMatrix;
uniform mat4 mvMatrix;

in vec3 inPosition;

smooth out vec2 passTexCoord;


/*
	EVERYTHING IS DONE IN EYE SPACE
*/

void main()
{
	gl_Position = projectionMatrix * mvMatrix * vec4(inPosition, 1.0);

	passTexCoord = (inPosition.xy + vec2(1.0, 1.0)) / 2.0;
}
