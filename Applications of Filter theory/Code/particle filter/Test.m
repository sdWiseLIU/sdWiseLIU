function re = Test(y,T,N)
result = zeros(T + 1,1);
particles = randn([N, 1]);
weight = test_w(y(1),particles);
result(1) = sum(particles.*weight(:,1));
for t = 1:T
    RA = resampling(weight);
    particles = test_x(t + 1,RA,particles);
    weight = test_w(y(t + 1),particles);
    result(t + 1) = sum(particles.*weight(:,1));
end
re = result;
end