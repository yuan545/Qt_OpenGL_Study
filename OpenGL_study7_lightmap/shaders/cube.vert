#version 330
layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 texCoord;

out vec3 vNormal;
out vec3 vFragPos;
out vec2 vTexCoord;

uniform mat4 modelMat;
uniform mat4 viewMat;
uniform mat4 projMat;

void main() {
    gl_Position = projMat * viewMat * modelMat * vec4(position, 1.0f);
    vFragPos = vec3(modelMat * vec4(position, 1.0f));
    vNormal = vec3(modelMat * vec4(normal, 1.0f));
    vTexCoord = texCoord;
}
