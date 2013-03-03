#version 330

in vec3 inPosition;

smooth out vec2 passTexCoord;
smooth out vec2 passBlurTexCoord[14];


/*
	EVERYTHING IS DONE IN EYE SPACE
*/

void main()
{
	passTexCoord = (inPosition.xy + vec2(1.0, 1.0)) / 2.0;

    passBlurTexCoord[ 0] = passTexCoord + vec2(0.0, -0.028);
    passBlurTexCoord[ 1] = passTexCoord + vec2(0.0, -0.024);
    passBlurTexCoord[ 2] = passTexCoord + vec2(0.0, -0.020);
    passBlurTexCoord[ 3] = passTexCoord + vec2(0.0, -0.016);
    passBlurTexCoord[ 4] = passTexCoord + vec2(0.0, -0.012);
    passBlurTexCoord[ 5] = passTexCoord + vec2(0.0, -0.008);
    passBlurTexCoord[ 6] = passTexCoord + vec2(0.0, -0.004);
    passBlurTexCoord[ 7] = passTexCoord + vec2(0.0,  0.004);
    passBlurTexCoord[ 8] = passTexCoord + vec2(0.0,  0.008);
    passBlurTexCoord[ 9] = passTexCoord + vec2(0.0,  0.012);
    passBlurTexCoord[10] = passTexCoord + vec2(0.0,  0.016);
    passBlurTexCoord[11] = passTexCoord + vec2(0.0,  0.020);
    passBlurTexCoord[12] = passTexCoord + vec2(0.0,  0.024);
    passBlurTexCoord[13] = passTexCoord + vec2(0.0,  0.028);

	gl_Position = vec4(inPosition, 1.0);
}
