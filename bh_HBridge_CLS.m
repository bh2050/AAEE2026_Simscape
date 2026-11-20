% NOTE:
%   We'll use these properties to configure the Simscape Electrical H-Bridge block
%      https://au.mathworks.com/help/releases/R2026b/simscape-electrical/ref/hbridge.html
% =========================================================================
classdef bh_HBridge_CLS
    properties
        V_max      (1,1) {isnumeric, mustBeNonnegative} =    10;     % (V)
        R          (1,1) {isnumeric, mustBeNonnegative} =    1e-3;   % (ohms)
        R_diode    (1,1) {isnumeric, mustBeNonnegative} =    5e-4;   % (ohms)
    end

methods 
    function OBJ = bh_HBridge_CLS(V_max)
             OBJ.V_max = V_max;
    end
    %----------------------------------------------------------------------
end % methods

end     % classdef