#version 330

layout(location = 0) in vec3 inPosition;

smooth out vec2 passTexCoord;
out vec3 passPosition;


/*
	EVERYTHING IS DONE IN EYE SPACE
*/

void main()
{
	passPosition = inPosition;

	passTexCoord = (inPosition.xy + vec2(1.0, 1.0)) / 2.0;

	gl_Position = vec4(inPosition, 1.0);
}
