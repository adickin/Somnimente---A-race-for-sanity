#version 330

out vec4 outColor;
in vec4 passPosition;

void main()
{
	outColor = passPosition.zzzw;
}