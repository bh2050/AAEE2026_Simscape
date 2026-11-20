% Gearbox ratio DEFINITION:
%     N =   w_IN / w_OUT
%     N = tq_OUT / tq_IN 

classdef bh_Gearbox_CLS
    properties
        N_gear     (1,1) {isnumeric, mustBeNonnegative} =   10;      % (-) w_IN/w_OUT
    end
end     % classdef