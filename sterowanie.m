function [P1,L1] = sterowanie(a)
s=sin(a);
c=cos(a);
P=s-c;
L=s+c;
P1=(P/2)+0.5;
L1=(L/2)+0.5;

