function re = generate_G(T,P)
N = size(P,2);
M = T*P;
D = [eye(3),zeros(3,1)];
H = [];
for i = 1:N
    H = [H;D*dot_se3(M(:,i))];
end
re = H;
end