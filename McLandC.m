clear;clc;
x = [ 1 1 1 1 1 -1 -1 1 1 1;
     1 1 1 1 1 -1 1 1 -1 1;
     1 1 1 1 -1 -1 1 1 1 1;
     1 1 -1 1 1 -1 1 1 1 1;
      1 1 -1 -1 1 -1 -1 1 1 -1; %L
      1 1 1 1 1 -1 -1 -1 -1 -1; %L ->
      1 -1 1 1 -1 -1 1 -1 -1 1; %L ->>
      1 -1 -1 -1 -1 -1 1 1 1 1]; %L ->>>
     
w = [0;0;0;0;0;0;0;0;0;0];

t = [1;
     1;
     1;
     1
     -1;
     -1;
     -1;
     -1];
 
for i = 1:size(x, 1)
    y = t;
    for j = 1:size(w, 1)
        w(j) = w(j) + x(i,j) * y(i);
    end
end
w

for j = 1:8
    sum=0;
    for k = 1:10
        sum = sum + (x(j,k)*w(k,1));
    end
    u(j) = sum;
end


for i = 1:8
    if(u(i)>=10)
        y = 'This is C'
    elseif(u(i)<10)
        y = 'This is L'
    end
end