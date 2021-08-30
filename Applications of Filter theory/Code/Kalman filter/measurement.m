function re = measurement(T_all,M,P)
N = size(T_all,3) - 1;
y = zeros(3,M,N + 1);
D = [eye(3),zeros(3,1)];
for i = 1:N + 1
    y(:,:,i) = D*T_all(:,:,i)*P + 0.15*randn(3,M);
end
re = y;
end