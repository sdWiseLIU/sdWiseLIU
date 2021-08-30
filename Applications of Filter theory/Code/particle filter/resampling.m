function re = resampling(weight)
D = weight(:,2);
N = size(weight,1);
RA = zeros(N,1);
for i = 1:N
    r = rand;
    j = 1;
    while r >= D(j)
        j = j + 1;
    end
    RA(i) = j;
end
re = RA;
end