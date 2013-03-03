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

    passBlurTexCoord[ 0] = passTexCoord + vec2(-0.028, 0.0);
    passBlurTexCoord[ 1] = passTexCoord + vec2(-0.024, 0.0);
    passBlurTexCoord[ 2] = passTexCoord + vec2(-0.020, 0.0);
    passBlurTexCoord[ 3] = passTexCoord + vec2(-0.016, 0.0);
    passBlurTexCoord[ 4] = passTexCoord + vec2(-0.012, 0.0);
    passBlurTexCoord[ 5] = passTexCoord + vec2(-0.008, 0.0);
    passBlurTexCoord[ 6] = passTexCoord + vec2(-0.004, 0.0);
    passBlurTexCoord[ 7] = passTexCoord + vec2( 0.004, 0.0);
    passBlurTexCoord[ 8] = passTexCoord + vec2( 0.008, 0.0);
    passBlurTexCoord[ 9] = passTexCoord + vec2( 0.012, 0.0);
    passBlurTexCoord[10] = passTexCoord + vec2( 0.016, 0.0);
    passBlurTexCoord[11] = passTexCoord + vec2( 0.020, 0.0);
    passBlurTexCoord[12] = passTexCoord + vec2( 0.024, 0.0);
    passBlurTexCoord[13] = passTexCoord + vec2( 0.028, 0.0);

	gl_Position = vec4(inPosition, 1.0);
}
