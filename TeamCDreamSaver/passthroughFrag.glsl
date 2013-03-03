#version 330

smooth in vec2 passTexCoord;

out vec4 color;

uniform sampler2D renderedTexture;

void main()
{
	color = texture( renderedTexture, passTexCoord);
}