#version 330

smooth in vec2 passTexCoord;

layout(location = 0) out vec4 color;

float threshold = 0.3;

uniform sampler2D renderedTexture;

void main()
{
	color = texture(renderedTexture, passTexCoord);
	
	color.r = clamp((color.r - threshold) / (1.0 - threshold), 0.0, 1.0);
	color.g = clamp((color.g - threshold) / (1.0 - threshold), 0.0, 1.0);
	color.b = clamp((color.b - threshold) / (1.0 - threshold), 0.0, 1.0);
}