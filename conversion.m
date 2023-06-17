% Sairaj R Dillikar (S361102)
% Robotics Control Assignment

% JOINT ANGLES LIMIT FUNCTION  
function OUT = conversion( theta,upperlimit,lowerlimit) 
                    upperlimit = upperlimit ; 
                    lowerlimit = lowerlimit; 
                if (theta > upperlimit) 
                    OUT = (' THE SOLUTION OUT OF JOINT ANGLE LIMIT '); 
                elseif (theta < lowerlimit) 
                    OUT = (' THE SOLUTION OUT OF JOINT ANGLE LIMIT '); 
                else  
                    OUT = theta; 
                end 
end 