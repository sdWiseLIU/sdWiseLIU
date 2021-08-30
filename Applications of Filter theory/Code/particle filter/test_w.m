function re = test_w(y,particles)
N = numel(particles);
w = zeros(N,1);
D = zeros(N,1);
sum = 0;
for i = 1:N
    w(i) = normpdf(y,0.001*(0.1 - particles(i)/2),sqrt(sqrt(0.001*particles(i))));
    sum = sum + w(i);
    if i == 1
        D(i) = w(i);
    else
        D(i) = D(i - 1) + w(i);
    end
end
re = [w/sum,D/sum];
end