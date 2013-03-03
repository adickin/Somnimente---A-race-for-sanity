#version 330 

in vec3 inPosition;

uniform mat4 mvpMatrix;

out vec3 passTexCoord;

void main()
{
    vec4 WVP_Pos = mvpMatrix * vec4(inPosition, 1.0);
    passTexCoord = inPosition;
    gl_Position = WVP_Pos.xyww;
}
