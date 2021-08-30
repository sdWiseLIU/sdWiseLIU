function re = ad_se3(vec)
vec1 = vec(1:3);
vec2 = vec(4:6);
Z = zeros(3,3);
M = [wedge_so3(vec2),wedge_so3(vec1);
     Z,wedge_so3(vec2)];
re = M;
end