function re = HP_simulation(par, T)
% Input: parameters of Hawkes process and the event time interval [0,T]
mu = par(1);
a = par(2);
b = par(3);
epsilon = 10^(-7);
% Denote epsilon to be a small time increment
u = rand;
time = -log(u)/mu;
t = time;
% Generate the first event
while t < T
    lambda = compute_lambda(mu,a,b,t + epsilon,time);
    r = rand;
    tau = -log(r)/lambda;
    t = t + tau;
    s = rand;
    if s <= compute_lambda(mu,a,b,t,time)/lambda
        time = [time,t];
%       Select a new event based on thinning algorithm
    end
end

re = time';
end