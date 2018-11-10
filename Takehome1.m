clc;
close all;
clear;
N = 100;
w = [0.2;0.3;0.6;0.8;1.2;1.1;0.7;0.3;0.1;0.1;0.2];
x = [-1,-1;-1,1;1,-1;1,1];
n = 0.01;

%hyperbolic tangent  1-y^2
%sigmoid y(1-y)

for i = 1:10000
  u1 = w(1) + x(1,1)*w(2)...
       + x(2,1)*w(2)...
       + x(3,1)*w(2)...
       + x(4,1)*w(2)...
       + x(1,2)*w(4)...
       + x(2,2)*w(4)...
       + x(3,2)*w(4)...
       + x(4,2)*w(4);
   y1 = tanh(u1);
   H1 = 1-y1.^2;
   %w = w(1,1)+n*((1-y.^2)*x); 
   
   u2 = w(6) + x(1,1)*w(3)...
        + x(2,1)*w(3)...
        + x(3,1)*w(3)...
        + x(4,1)*w(3)...
        + x(1,2)*w(5)...
        + x(2,2)*w(5)...
        + x(3,2)*w(5)...
        + x(4,2)*w(5); 
    y2 = logsig(u2);
    H2 = y2*(1-y2);
    
    u3 = w(9) + w(7)*H1 ...
        + w(7)*H2;
    y3 = logsig(u3);
    H3 = y3*(1-y3);
    
    % Output layer
    u4 = w(11)+w(10)*H3;
    y4 = logsig(u4);
    H4 = y4*(1-y4);
end
 H1
 H2
 H3
 H4
 w