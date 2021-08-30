function re = velocity(N)
S = zeros(6,N);
for i = 1:N
    S(1,i) = i/(1 + 1*i);
    S(2,i) = i/(1 + 2*i);
    S(3,i) = i/(1 + 3*i);
    S(6,i) = i/(i*i/1000 + i + 1);
end
re = S;
end