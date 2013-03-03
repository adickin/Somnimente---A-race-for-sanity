#version 330

uniform mat4 mvpMatrix;

layout(location = 0) in vec3 inPosition;
out vec4 passPosition;

/*
	EVERYTHING IS DONE IN EYE SPACE
*/

void main()
{
	passPosition = mvpMatrix * vec4(inPosition, 1.0);
	gl_Position = passPosition;
}
