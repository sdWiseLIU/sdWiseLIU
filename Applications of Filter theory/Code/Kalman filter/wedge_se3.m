function re = wedge_se3(vec)
vec1 = vec(1:3);
vec2 = vec(4:6);
Z = zeros(1,3);
M = [wedge_so3(vec2),vec1;
     Z,0];
re = M;
end