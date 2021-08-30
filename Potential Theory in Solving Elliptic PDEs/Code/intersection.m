function re = intersection(x,B)
y_1 = [x(1),B(2,1)];
y_2 = [x(1),B(2,2)];
y_3 = [B(1,1),x(2)];
y_4 = [B(1,2),x(2)];
y = [y_1;y_2;y_3;y_4];
s = zeros(4,1);

for i = 1:4
    s(i) = sum((y(i,:) - x).^2);
end

[m,j] = min(s);
re = y(j,:);
end