#version 330

uniform mat4 mvMatrix;
uniform mat4 viewMatrix;
uniform sampler2D textureMap;

smooth in vec4 passColor;
in vec3 passPosition;
in vec2 inTexCoord;

smooth in vec2 passTexCoord;

out vec4 outColor;

/*
	EVERYTHING IS DONE IN EYE SPACE
*/
void scale(inout vec4 data)
{
	float m = max(data.r, max(data.g, data.b));
	data.r = data.r / m;
	data.g = data.g / m;
	data.b = data.b / m;
}

void main()
{
	vec4 texel = texture(textureMap, passTexCoord);
	vec4 color = texel + passColor;
	
	//scale(color);
	
	outColor = color;
	outColor.a = texel.a;
}