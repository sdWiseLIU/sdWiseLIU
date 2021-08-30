function re = B(time,omega,i)
sum = 0;
for j = 1:i
    sum = sum + (time(i,1) - time(j,1))*exp(-omega*(time(i,1) - time(j,1)));
end
re = sum;
end