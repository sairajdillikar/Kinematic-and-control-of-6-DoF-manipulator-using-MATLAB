% Sairaj R Dillikar (S361102)
% Robotics Control Assignment

% Inverse Kinematics Main Code

%Clear the Command Window; Clear the Variables from workspace; 
clc; clearvars;

%DH values
a2 = 270;
a3 = 200;
d4 = 240;
NOSOLUTION=1000; 

Px = input ('ENTER THE GOAL POSTION X = '); 
Py = input ('ENTER THE GOAL POSTION Y = '); 
Pz = input ('ENTER THE GOAL POSTION Z = ');  
alpha= input ('ENTER THE VALUE OF alpha IN DEGREE = '); 
beta = input ('ENTER THE VALUE OF beta IN DEGREE  = '); 
gamma = input ('ENTER THE VALUE OF gama IN DEGREE  = ');

% Inverse calculation for the D1
D1 = Py;

% % Inverse calculation for the Theta2
h = sqrt((Pz-a2)^2+Px^2);
rho = atan2d(Pz-a2, Px);
gam = acosd((h^2+a3^2-d4^2)/(2*h*a3));
theta2 = 90 - (rho+gam);
theta21 = 90 - (rho-gam); 

if isreal(theta2) 
THETA2 = conversion(theta2,135,0); 
THETA21 = conversion(theta21,135,0); 
else 
theta2 = NOSOLUTION; 
theta21= NOSOLUTION; 
THETA2 = ('GOAL IS OUT OF WORKSPACE, THERE IS NO VAILD VALUES FOR THETA2'); 
THETA21 = ('GOAL IS OUT OF WORKSPACE, THERE IS NO VAILD VALUES FOR THETA21'); 
end

% % Inverse calculation for the Theta3
S3 = ((Px^2)+(Pz-a2)^2-(d4^2)-(a3^2))/(-2*d4*a3);
C3 = (sqrt(1-S3^2));
C31 = -(sqrt(1-S3^2));

% SINGULARTIY CONDTION, CHECK IF THE POSTION WITHIN THE WORKSPACE OR NOT 

if isreal(C3) 
    theta3 = (atan2d(S3, C3));
    theta31 = (atan2d(S3, C31));
    THETA3 = conversion(theta3,67.5,-180); 
    THETA31 = conversion(theta31,67.5,-180); 
else 
theta3 = NOSOLUTION; 
theta31= NOSOLUTION; 
THETA3 = ('GOAL IS OUT OF WORKSPACE, THERE IS NO VAILD VALUES FOR THETA3'); 
THETA31 = ('GOAL IS OUT OF WORKSPACE, THERE IS NO VAILD VALUES FOR THETA31'); 
end

disp ( ' D1, THETA 2,3 SOLUTIONS') 
Solution_1 =[ D1, THETA2, THETA3] 
Solution_2 =[ D1, THETA21, THETA31] 


% THETA 4,5,6 CALCULATION 

alpha = alpha * pi/180; 
beta = beta * pi/180; 
gamma = gamma * pi/180; 

R03 = [sin(theta2 + theta3), cos(theta2 + theta3), 0;
    0, 0, 1;
    cos(theta2 + theta3), -sin(theta2 + theta3), 0];
 
Rz_alpha = [cos(alpha) -sin(alpha) 0;
    sin(alpha) cos(alpha) 0;
    0 0 1];

Ry_beta =[cos(beta) 0 sin(beta);
    0 1 0;
    -sin(beta) 0 cos(beta)];

Rx_gamma = [1 0 0;
    0 cos(gamma) -sin(gamma);
    0 sin(gamma) cos(gamma)];

Rzyx = Rz_alpha*Ry_beta*Rx_gamma;

R36_ZYX_Mat = transpose(R03)*Rzyx;

g13 = R36_ZYX_Mat(1,3);
g21 = R36_ZYX_Mat(2,1);
g22 = R36_ZYX_Mat(2,2);
g23 = R36_ZYX_Mat(2,3);
g31 = R36_ZYX_Mat(3,1);
g32 = R36_ZYX_Mat(3,2);
g33 = R36_ZYX_Mat(3,3);
  
theta5 = atan2 ( sqrt((g21)^2 +(g22)^2), g23); 
if(theta5 == 0) 
THETA4=  0 ;
THETA5=  0 ;
theta6 = atan2 (-g22, g21); 
THETA6=  theta6*180/pi ;
elseif (theta5 == pi) 
THETA4=  0 ;
THETA5=  0 ;
theta6 = atan2 (g22,-g21); 
THETA6=  theta6*180/pi ;
else 
theta4 = atan2 (g33/ sin (theta5), - g13/ sin (theta5)); 
theta6 = atan2 (g22/ sin (theta5), g21/ sin (theta5)); 
THETA4=  conversion( theta4,180,0)*(180/pi); 
THETA5=  conversion( theta5,180,0)*(180/pi); 
THETA6=  conversion( theta6,180,0)*(180/pi); 

% FLIPPED POSTION 
  
theta44 = (theta4 + pi)*(180/pi); 
theta55 = -theta5*(180/pi); 
theta66 = theta6+pi*(180/pi); 
THETA41=  conversion( theta44,180,0); 
THETA51=  conversion( theta55,180,0); 
THETA61=  conversion( theta66,180,0); 

disp ( ' THETA 4,5,6 SOLUTIONS') 
Solution_1 = [THETA4,THETA5,THETA6] 
Solution_2 = [THETA41,THETA51,THETA61]  
end 