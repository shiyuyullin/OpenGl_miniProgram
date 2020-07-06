#version 330 core
out vec4 FragColor;  
in vec3 ourColor;
in vec2 TexCoord;
//in vec4 position;
 
uniform sampler2D texture1;
uniform sampler2D texture2;
uniform float visibility;

void main()
{
    //FragColor = position;
	//FragColor = vec4(ourColor,1.0);
	//FragColor = texture(texture1, TexCoord) * vec4(ourColor,1.0);

	//built-in function mix(), takes 2 arguments, the third argument will decide how much 
	//the first argument is used and how much the second is used.
	//if 0.0, it returns first one, if 1.0 it returns second one.
	//only the awesome face is in the other direction
	//FragColor = mix(texture(texture1, TexCoord), texture(texture2, vec2(-TexCoord.x,TexCoord.y)), 0.2); 
	FragColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), visibility);
}