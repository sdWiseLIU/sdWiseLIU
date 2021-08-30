function re = EM_update(par,S,y)
N = numel(y) - 1;
a = par(1);
b = par(2);
c = par(3);
a_up = (sum(mean(S(:,2:N + 1))) - b*sum(mean(S(:,2:N))))/N;
b_up = (sum(mean(S(:,2:N + 1).*S(:,1:N))) - a*sum(mean(S(:,2:N))))/(N*sum(mean(S(:,1:N).^2)));
c_up = (sum(mean((S(:,2:N + 1) - (a + b*S(:,1:N))).^2))/N)^0.5;
re = [a_up,b_up,c_up];
end