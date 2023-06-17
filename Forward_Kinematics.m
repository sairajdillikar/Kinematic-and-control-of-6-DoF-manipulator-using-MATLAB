% Sairaj R Dillikar (S361102)
% Robotics Control Assignment

% Forward Kinematics Main Code

%Clear the Command Window; Clear the Variables from workspace; 
 clc; clearvars; 
 
%Data according to the design dimensions
a2 = 270;
a3 = 200;
d4 = 240;

d1=input ('Enter value for d1 = ');
theta2=input ('Enter value for t2 = ');
theta3=input ('Enter value for t3 = ');
theta4=input ('Enter value for t4 = ');
theta5=input ('Enter value for t5 = ');
theta6=input ('Enter value for t6 = ');

% DH Parameters defined in order to obtain Transformation functions for the
% individual frames.

T01 = (DHFUNCTION(0, -90, d1, -90));
T12 = (DHFUNCTION(a2, 0, 0, theta2*180/pi));
T23 = (DHFUNCTION(a3, 0, 0, theta3*180/pi));
T34 = (DHFUNCTION(0, -90, d4, theta4*180/pi));
T45 = (DHFUNCTION(0, 90, 0, theta5*180/pi));
T56 = (DHFUNCTION(0, -90, 0, theta6*180/pi));

T01;
T02 = (T01*T12);
T03 = (T02*T23);
T04 = (T03*T34);
T05 = (T04*T45);
T06 = (T05*T56); 

%Extract the 4th coloumn from T06 which represents the Tool Centre Point
P6 = T06*[0; 0; 0; 1]