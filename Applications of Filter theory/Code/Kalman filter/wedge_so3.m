function re = wedge_so3(vec)
a = vec(1);
b = vec(2);
c = vec(3);
M = [0,-c,b;
     c,0,-a;
     -b,a,0];
re = M;
end