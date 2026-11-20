% NOTE:
% Most of the default values have been taken from the data sheet for the 
%    Maxon DC Motor (Part number 388985):  
%    24 Volt Motor
%    https://www.maxongroup.com/maxon/view/product/motor/dcmotor/re/re65/388985 
% 
% **** ATTENTION ****
%    I have defined my own Armature RESISTANCE value though 
%--------------------------------------------------------------------------
classdef bh_DC_motor_CLS
    properties
        arm_R      (1,1) {isnumeric,mustBeNonnegative} =   1.5;      % (ohms)
        arm_L      (1,1) {isnumeric,mustBeNonnegative} =   3.1e-5;   % (H)
        K_t        (1,1) {isnumeric, mustBeNonnegative} =   0.0537;  % (N*m/A);
        rotor_I    (1,1) {isnumeric, mustBeNonnegative} =   1.29e-4; % (kg.m^2)
        rotor_damp (1,1) {isnumeric, mustBeNonnegative} =   1e-6;    % (N.m/(rad/sec))
        V_max      (1,1) {isnumeric, mustBeNonnegative} =    24;     % (V)
    end
end     % classdef