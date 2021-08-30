function re = resampling(alpha,P)
M = numel(P);
F = zeros(M,1);
R = zeros(M,1);
R(1) = alpha(1);
index = zeros(M,1);
for i = 1:M - 1
    R(i + 1) = R(i) + alpha(i + 1);
end
R = R/sum(alpha);
for i = 1:M
    r = rand;
    j = 1;
    while R(j) < r
        j = j + 1;
    end
    F(i) = P(j);
    index(i) = j;
end
re = [F,index];
end