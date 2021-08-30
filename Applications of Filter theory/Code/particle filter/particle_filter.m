function re = particle_filter(par,delta_t,T,N,Y)
a = par(1);
b = par(2);
c = par(3);
mu = par(4);
result = zeros(T + 1,1);
particles = a*delta_t + c*sqrt(delta_t)*randn([N, 1]);
%weight = initial_w(Y(1),mu,delta_t,particles);
result(1) = mean(particles);
for t = 1:T
    particles = generate_x(a,b,c,delta_t,particles);
    weight = initial_w(Y(t + 1),mu,delta_t,particles);
    RA = resampling(weight);
    result(t + 1) = mean(particles(RA));
end
re = result;
end