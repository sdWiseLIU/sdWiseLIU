function re = dot_se3(vec)
Z = zeros(1,6);
M = [vec(4)*eye(3),-wedge_so3(vec(1:3))];
re = [M;Z];
end