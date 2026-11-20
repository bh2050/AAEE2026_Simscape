classdef bh_joint_CLS
    properties
        theta         (1,1) {isnumeric} =   0;  % (rad)
        theta_dot     (1,1) {isnumeric} =   0;  % (rad/sec)
        Damp          (1,1) {isnumeric, mustBeNonnegative} =   1e-3;   % (N.m/(rad/sec));
    end
end     % classdef