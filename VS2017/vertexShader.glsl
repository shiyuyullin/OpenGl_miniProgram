#version 330 core
layout (location = 0) in vec3 aPos;   // the position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
layout (location = 2) in vec2 aTexCoord;//texture coordinates has attribute position 2
  
out vec3 ourColor; // output a color to the fragment shader
//out vec4 position;
out vec2 TexCoord;

uniform float offsetRight = 0.0;
uniform mat4 transform;

void main()
{
	if(offsetRight < 0)
	{
		gl_Position = transform * vec4(aPos.x-offsetRight,aPos.y,aPos.z, 1.0);
		//position = vec4(aPos.x-offsetRight,aPos.y,aPos.z, 1.0);
	}
	else
	{
		gl_Position = transform * vec4(aPos.x+offsetRight,aPos.y,aPos.z, 1.0);
		//position = vec4(aPos.x-offsetRight,aPos.y,aPos.z, 1.0);
	}
    ourColor = aColor; // set ourColor to the input color we got from the vertex data
	TexCoord = aTexCoord;
}   