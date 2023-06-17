% Simscape(TM) Multibody(TM) version: 7.5

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(13).translation = [0.0 0.0 0.0];
smiData.RigidTransform(13).angle = 0.0;
smiData.RigidTransform(13).axis = [0.0 0.0 0.0];
smiData.RigidTransform(13).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-16.000000000001457 5000 -16.000000000000458];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = "B[Base-1:-:Joint1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [15.999999999987722 15.999999999993179 2356.7459769286879];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897909;  % rad
smiData.RigidTransform(2).axis = [6.10622663543836e-16 1 1.9428902930940235e-16];
smiData.RigidTransform(2).ID = "F[Base-1:-:Joint1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [270.00000000000091 3.3306690738754696e-13 49.999999999999822];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = "B[Joint1-1:-:Joint2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [2.0410340084708878e-11 4.460787295101909e-11 50.000000000009109];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(4).axis = [0.9751858484594973 -0.22138780672008665 -1.2212453270876722e-15];
smiData.RigidTransform(4).ID = "F[Joint1-1:-:Joint2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [200.00000000000017 -1.1102230246251565e-13 40.000000000000924];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = "B[Joint2-1:-:Joint3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-3.5662139907799428e-11 -2.55298004958604e-11 40.000000000000163];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [0.9404993621663692 -0.33979545283104179 2.2204460492503136e-16];
smiData.RigidTransform(6).ID = "F[Joint2-1:-:Joint3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 209.99999999999997 0];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(7).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(7).ID = "B[Joint3-1:-:Joint4-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [9.1837648596992949e-13 1.0036416142611415e-13 -30.000000000000103];  % mm
smiData.RigidTransform(8).angle = 7.4934400035348594e-15;  % rad
smiData.RigidTransform(8).axis = [0.25831840305373072 0.9660598338838905 9.3499784883818814e-16];
smiData.RigidTransform(8).ID = "F[Joint3-1:-:Joint4-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-12.500000000000178 4.4408920985006262e-13 0];  % mm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(9).ID = "B[Joint4-1:-:Joint5-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [1.326494469822137e-12 2.1493917756743031e-13 -12.500000000000005];  % mm
smiData.RigidTransform(10).angle = 0.025576575378928563;  % rad
smiData.RigidTransform(10).axis = [1.3022696781587368e-14 -7.5965731225926313e-15 -1];
smiData.RigidTransform(10).ID = "F[Joint4-1:-:Joint5-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 -5.0000000000003375 0];  % mm
smiData.RigidTransform(11).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(11).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(11).ID = "B[Joint5-1:-:Joint6-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [9.6367358537463588e-14 -3.4449526564728217e-13 -5.0000000000002389];  % mm
smiData.RigidTransform(12).angle = 9.5827104593837854e-16;  % rad
smiData.RigidTransform(12).axis = [-0.5866632960867092 -0.80983095583256037 2.2763637556150562e-16];
smiData.RigidTransform(12).ID = "F[Joint5-1:-:Joint6-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [721.58106725042808 183.97756120287099 4021.8153100512877];  % mm
smiData.RigidTransform(13).angle = 0.20057226385647148;  % rad
smiData.RigidTransform(13).axis = [0.42288855517750529 -0.067250821200796201 -0.90368279664255002];
smiData.RigidTransform(13).ID = "RootGround[Base-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(7).mass = 0.0;
smiData.Solid(7).CoM = [0.0 0.0 0.0];
smiData.Solid(7).MoI = [0.0 0.0 0.0];
smiData.Solid(7).PoI = [0.0 0.0 0.0];
smiData.Solid(7).color = [0.0 0.0 0.0];
smiData.Solid(7).opacity = 0.0;
smiData.Solid(7).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.3519159653067499;  % kg
smiData.Solid(1).CoM = [100.16872238547374 0 -0.049773103714752541];  % mm
smiData.Solid(1).MoI = [305.01843065542761 2139.3467323121677 1890.3695413675944];  % kg*mm^2
smiData.Solid(1).PoI = [0 -1.7545503168497991 0];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Joint2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.26636860209747687;  % kg
smiData.Solid(2).CoM = [-0.0077544529672866798 108.62186150547586 -2.212653358366895e-05];  % mm
smiData.Solid(2).MoI = [1085.6494296930059 54.959756075209647 1087.2768658398149];  % kg*mm^2
smiData.Solid(2).PoI = [-8.0249549108495541e-05 0.00010843530357966735 -0.22322217476951611];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Joint3*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.015343895273644582;  % kg
smiData.Solid(3).CoM = [6.380720595721473e-06 4.4279762984096978e-05 -17.111145603353151];  % mm
smiData.Solid(3).MoI = [3.266915524740313 3.8517476793687964 2.6907527506841205];  % kg*mm^2
smiData.Solid(3).PoI = [-2.150944787765103e-05 -1.2425574152379966e-05 3.3523924440260036e-05];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Joint4*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.01297836509781527;  % kg
smiData.Solid(4).CoM = [-2.875258683973492e-06 -1.1377814455412885 -0.19065506071631988];  % mm
smiData.Solid(4).MoI = [2.7239587534410639 2.7774798122280218 1.0193546044372692];  % kg*mm^2
smiData.Solid(4).PoI = [0.0028168992484734379 3.0057254208416998e-06 1.4544532979477902e-06];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Joint5*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 7.5587323098104386;  % kg
smiData.Solid(5).CoM = [5.6655331725667495e-12 2500.7276070799116 5.567469779761872];  % mm
smiData.Solid(5).MoI = [26530824.617213618 6704.4916877861897 26531158.284246325];  % kg*mm^2
smiData.Solid(5).PoI = [121.78208567200925 -5.0696113788112091e-10 -1.1072943641802385e-07];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Base*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.41430155472415825;  % kg
smiData.Solid(6).CoM = [112.98567765847854 0.00018599532322988833 -0.013261720467188362];  % mm
smiData.Solid(6).MoI = [172.35589608460228 3569.0919902627184 3512.9722551220448];  % kg*mm^2
smiData.Solid(6).PoI = [0.00023816273917512659 -0.53159507777784087 -0.010157306604041252];  % kg*mm^2
smiData.Solid(6).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "Joint1*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.0050955718505059453;  % kg
smiData.Solid(7).CoM = [-0.12622778626334402 -1.8437017450359952e-06 3.1860821584216521];  % mm
smiData.Solid(7).MoI = [0.25018413593530714 0.24588075957579064 0.26160359487291834];  % kg*mm^2
smiData.Solid(7).PoI = [4.7778769292906789e-08 0.0048504317568580646 6.5313237760764703e-08];  % kg*mm^2
smiData.Solid(7).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "Joint6*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(1).Pz.Pos = 0.0;
smiData.PrismaticJoint(1).ID = "";

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = "[Base-1:-:Joint1-1]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 12.90006724135718;  % deg
smiData.RevoluteJoint(1).ID = "[Joint3-1:-:Joint4-1]";

smiData.RevoluteJoint(2).Rz.Pos = 91.857122338176893;  % deg
smiData.RevoluteJoint(2).ID = "[Joint5-1:-:Joint6-1]";

