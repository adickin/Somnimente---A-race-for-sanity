#version 330

smooth in vec2 passTexCoord;
smooth in vec2 passBlurTexCoord[14];

out vec4 color;

uniform sampler2D renderedTexture;

void main()
{
	color = vec4(0.0);
	//color += texture(renderedTexture, passBlurTexCoord[ 0])*0.0044299121055113265;
    //color += texture(renderedTexture, passBlurTexCoord[ 1])*0.00895781211794;
    //color += texture(renderedTexture, passBlurTexCoord[ 2])*0.0215963866053;
    //color += texture(renderedTexture, passBlurTexCoord[ 3])*0.0443683338718;
    color += texture(renderedTexture, passBlurTexCoord[ 4])*0.0776744219933;
    color += texture(renderedTexture, passBlurTexCoord[ 5])*0.115876621105;
    color += texture(renderedTexture, passBlurTexCoord[ 6])*0.147308056121;
    color += texture(renderedTexture, passTexCoord        )*0.159576912161;
    color += texture(renderedTexture, passBlurTexCoord[ 7])*0.147308056121;
    color += texture(renderedTexture, passBlurTexCoord[ 8])*0.115876621105;
    color += texture(renderedTexture, passBlurTexCoord[ 9])*0.0776744219933;
    //color += texture(renderedTexture, passBlurTexCoord[10])*0.0443683338718;
    //color += texture(renderedTexture, passBlurTexCoord[11])*0.0215963866053;
    //color += texture(renderedTexture, passBlurTexCoord[12])*0.00895781211794;
    //color += texture(renderedTexture, passBlurTexCoord[13])*0.0044299121055113265;
}