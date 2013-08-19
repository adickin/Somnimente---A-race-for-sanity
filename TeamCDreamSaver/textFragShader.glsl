#version 330

uniform mat4 mvMatrix;
uniform mat4 viewMatrix;
uniform sampler2D textureMap;
uniform float alpha;

smooth in vec4 passColor;
in vec3 passPosition;
in vec2 inTexCoord;

smooth in vec2 passTexCoord;

out vec4 outColor;

/*
	EVERYTHING IS DONE IN EYE SPACE
*/

void main()
{
	vec4 texel = texture(textureMap, passTexCoord);
	vec4 color = texel + passColor;
	
	outColor = color;
	outColor.a = texel.a;
	outColor.a = outColor.a * alpha;
}