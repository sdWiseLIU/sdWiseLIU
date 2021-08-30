function re = simulation_kinematics(T_0,N,delta_t)
T_all = zeros(4,4,N + 1);
T_all(:,:,1) = T_0;
T = T_0;
V = velocity(N);
Corr = diag([0.1^2,0.1^2,0.1^2,0.05^2,0.05^2,0.05^2]);
delta_xi = chol(Corr)*randn(6,1);
for i = 1:N
    T = expm(delta_t*wedge_se3(V(:,i)))*T;
    delta_xi = expm(delta_t*ad_se3(V(:,i)))*delta_xi + chol(Corr)*randn(6,1);
    T_all(:,:,i + 1) = expm(wedge_se3(delta_xi))*T;
end
re = T_all;
end