function re = HP_estimation(event, N)
% Input: the event time sequence and the length of event used in this
% program
par_0 = [0.5, 0.5, 1];
% In the beginning, we should give these three parameters the initial value
if numel(event) > N
    E = event(1:N);
else
    E = event;
end
% In order to ensure the speed of this program, we may choose smaller event
% sequence
n = numel(E);
P = zeros(n);
% contruct a zero matrix in order to store the value of probability
for k = 1:50
%   50 times iterations is enough for convergence
    for i = 1:n
        for j = 1:i
            P(i,j) = compute_P(i,j,par_0(1),par_0(3),par_0(2),event);
        end
    end
%   This is for E step, that is, compute the components of probability matrix
%   Below is for M step, that is, using the probability matrix to give the
%   estimation of these three parameters
    x = 0;
    for i = 1:n
        x = x + P(i,i);
    end
%   lambda_0 = x/time(n,1);
%   This is the estimation of lambda_0 = (sum Pii from 1 to n)/final time
    y = 0;
    for i = 1:n
        for j = 1:(i - 1)
            y = y + P(i,j);
        end
    end
%   alpha_ = (y)/n;
%   This is the estimation of alpha = (sum Pij for all j < i)/n
    z = 0;
    for i = 1:n
        for j = 1:(i - 1)
            z = z + (event(i) - event(j))*P(i,j);
        end
    end
    z = z + alpha_*B(event,par_0(3),n);
    par_0(1) = x/event(n);
    par_0(2) = y/(n - A(event,par_0(3),n));
    par_0(4) = y/z;
%   This is the estimation of omega = (sum Pij for all j < i)/(sum (ti - tj)Pij for all j < i)
%   omega = y/z;
end

re = par_0;
end