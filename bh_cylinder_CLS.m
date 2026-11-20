classdef bh_cylinder_CLS
    properties
        Radius (1,1) {isnumeric, mustBePositive} = 5/100;   % (m)
        Height (1,1) {isnumeric, mustBePositive} = 10/100;  % (m)
        Mass   (1,1) {isnumeric, mustBePositive} = 1.5708;  % (kg)
    end
end