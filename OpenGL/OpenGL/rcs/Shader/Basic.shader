#shader Vertex
#version 330 core

layout(location = 0) in vec4 position;
layout(location = 2) in vec2 texCoord;

out	vec2 v_TexCoord;

void main()
{
	gl_Position = position;
	v_TexCoord = texCoord;
};

#shader Fragment
#version 330 core

layout(location = 0) out vec4 color;

in vec2 v_TexCoord;

uniform vec4 u_Color;
uniform sampler2D u_Texture;

void main()
{
	//vec4 texColor = texture(u_Texture,v_TexCoord); 
	//color = u_Color;
	//color = texColor;
	color = texture(u_Texture,v_TexCoord); 
}