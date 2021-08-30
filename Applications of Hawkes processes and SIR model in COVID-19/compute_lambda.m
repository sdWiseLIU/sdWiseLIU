function re = compute_lambda(mu,a,b,t,time)
lambda = mu;
n = numel(time);
for i = 1:n
    if t <= time(i)
        break;
    else
        lambda = lambda + a*exp(-b*(t - time(i)));
    end
end

re = lambda;
end