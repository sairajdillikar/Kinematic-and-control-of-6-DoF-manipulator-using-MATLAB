% Sairaj R Dillikar (S361102)
% Robotics Control Assignment

% Jacobians

%Clear the Command Window; Clear the Variables from workspace; Clear the Figures;
 clc; clearvars; %clf;

%Defining the Symbolic Variables
syms d1 a2 a3 d4 t2 t3 t4 t5 t6 Px Py Pz
syms Dd1 Dt2 Dt3 Dt4 Dt5 Dt6

%Input Datasets

Dd1 = 0;
a2 = 270;
a3 = 200;
d4 = 240;
t1 = -90;
Dt2 = 90;
Dt3 = -90;
Dt4 = 0;
Dt5 = 0;
Dt6 = 0;

% DH Parameters defined in order to obtain Transformation functions for the
% individual frames.

T01 = (DHFUNCTION(0, -90, d1, t1));
T12 = (DHFUNCTION(a2, 0, 0, t2*180/pi));
T23 = (DHFUNCTION(a3, 0, 0, t3*180/pi));
T34 = (DHFUNCTION(0, -90, d4, t4*180/pi));
T45 = (DHFUNCTION(0, 90, 0, t5*180/pi));
T56 = (DHFUNCTION(0, -90, 0, t6*180/pi));

T01;
T02 = (T01*T12);
T03 = (T02*T23);
T04 = (T03*T34);
T05 = (T04*T45);
T06 = (T05*T56);

%Extract the 4th coloumn from T06
Px= T06(1,4);
Py= T06(2,4);
Pz= T06(3,4);

DThetas = [Dd1; Dt2; Dt3; Dt4; Dt5; Dt6];

% Calculation of the Linear Velocities using Jacobian Function
JMat = ([Px,Py,Pz]);
thetas = [d1, t2, t3, t4, t5, t6];
Linear_Velocity = (jacobian(JMat, thetas));

% Calculation of the Angular Velocities using Jacobian Function
kPriMat = [0;0;0];
kRevMat = [0 0 0; 0 0 0; 0 0 1];
Angular_Velocity = ([kPriMat,T02(1:3,3),T03(1:3,3),T04(1:3,3),T05(1:3,3),T06(1:3,3)]);
% kAngular_Velocity = simplify([kPriMat,kRevMat*T02(1:3,3),kRevMat*T03(1:3,3),kRevMat*T04(1:3,3),kRevMat*T05(1:3,3),kRevMat*T06(1:3,3)]);

Jacobian_Matrix = [Linear_Velocity; Angular_Velocity];
d1=input ('Enter value for d1 = ');
t2=input ('Enter value for t2 = ');
t3=input ('Enter value for t3 = ');
t4=input ('Enter value for t4 = ');
t5=input ('Enter value for t5 = ');
t6=input ('Enter value for t6 = ');

Px_dot=input ('Enter value for Px_dot = ');
Py_dot=input ('Enter value for Py_dot = ');
Pz_dot=input ('Enter value for Pz_dot = ');
Wx_dot=input ('Enter value for Wx_dot = ');
Wy_dot=input ('Enter value for Wy_dot = ');
Wz_dot=input ('Enter value for Wz_dot = ');

Ddtheta = eval(inv(Jacobian_Matrix)*[Px_dot;Py_dot;Pz_dot;Wx_dot;Wy_dot;Wz_dot])

% Calculation of the Linear Velocities with the values
V06 = (Linear_Velocity*DThetas);
% Calculation of the Angular Velocities with the values
W06 = (Angular_Velocity*DThetas);
% Calculation of the Jacobian Matrix with the values
J06 = [V06; W06];