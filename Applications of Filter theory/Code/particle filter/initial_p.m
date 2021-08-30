function re = initial_p(a,delta_t,c,N)
particles = a*delta_t + c*sqrt(delta_t)*randn([N, 1]);
re = particles;
end