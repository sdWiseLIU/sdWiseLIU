function re = in_boundary(x,B)
n = size(B,1);
s = 0;

for i = 1:n
    if x(i) < B(i,1) || x(i) > B(i,2)
        s = 1;
        break;
    end
end

re = s;
end