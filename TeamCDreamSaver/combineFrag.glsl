#version 330

smooth in vec2 passTexCoord;

out vec4 color;

uniform sampler2D renderedTexture;
uniform sampler2D bloomTexture;

uniform float bloomIntensity = 1.3;
uniform float originalIntensity = 1.0;
uniform float bloomSaturation = 1.0;
uniform float originalSaturation = 1.0;

vec4 AdjustSaturation(vec4 color, float saturation)
{
	float grey = dot(color.xyz, vec3(0.3, 0.59, 0.11));

	vec3 g = vec3(grey, grey, grey);
	
	return vec4(mix(g, color.xyz, saturation), color.a);
}

void main()
{
	vec4 bloomColor = texture(bloomTexture, passTexCoord);
	vec4 originalColor = texture(renderedTexture, passTexCoord);

	bloomColor = AdjustSaturation(bloomColor, bloomSaturation) * bloomIntensity;
	originalColor = AdjustSaturation(originalColor, originalSaturation) * originalIntensity;

	originalColor *= (1.0 - clamp(bloomColor, 0.0, 1.0));

	color = originalColor + bloomColor;

	color.a = 1.0;
}