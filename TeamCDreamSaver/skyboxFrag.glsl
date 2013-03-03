#version 330

in vec3 passTexCoord;

out vec4 FragColor;

uniform samplerCube cubeMap;

void main()
{
    FragColor = texture(cubeMap, passTexCoord);
}