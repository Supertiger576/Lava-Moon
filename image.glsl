void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec3 paint = vec3(0.75, 0.0, 0.3);
    vec2 uv = fragCoord / iResolution.xy;
    vec2 center = vec2(0.5+0.25*tan(iTime), 0.5);
    vec2 point = (uv -center) * vec2(iResolution.x / iResolution.y, 1.0);
    float circle = 1.0 - smoothstep(0.24,0.24, length(point));
    fragColor = vec4(paint*circle*uv.x*uv.y,  1);
}
