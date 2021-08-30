function re = GradDes_mu(y,par_,N)
mu_ = par_(1);
sigma_ = par_(2);
Y_es = mu_ + sigma_*randn(N,1);
d_mu = 0;
d_sigma = 0;
for i = 1:N
    d_mu = d_mu -((Y_es(i) - mu_)/sigma_^2)*(y - Y_es(i))^2;
    d_sigma = d_sigma + ((Y_es(i) - mu_)^2/sigma_^3 - 1/sigma_)*(y - Y_es(i))^2;
end
re = [d_mu;d_sigma]/N;
end