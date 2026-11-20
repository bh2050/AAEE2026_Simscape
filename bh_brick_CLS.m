classdef bh_brick_CLS
    properties
        Length     (1,1) {isnumeric, mustBePositive} =   30/100;  % (m)
        Height     (1,1) {isnumeric, mustBePositive} =   5/100;   % (m)
        Thickness  (1,1) {isnumeric, mustBePositive} =   1/100;   % (m)
        Mass       (1,1) {isnumeric, mustBePositive} =   0.1875;  % (kg)

        LHT_body_axes (1,1) string {mustBeMember(LHT_body_axes,["XYZ", "YZX"])} = "YZX"'
    end

    properties (Dependent=true)
      vec_XYZ
    end
    %----------------------------------------
    methods
        function obj = bh_brick_CLS()
        end
    %----------------------------------------
        function val = get.vec_XYZ(OBJ)
           % say we have a Body fixed frame attached to the Brick
           % What are the X,Y,Z dimensions of the brick ?
           % - these dimensions should consist of the 
           %    LENGTH, HEIGHT and THICKNESS of the Brick

            switch OBJ.LHT_body_axes
                case "YZX"
                 val =  [ OBJ.Thickness,  OBJ.Length, OBJ.Height ];
                case "XYZ"
                    val =  [ OBJ.Length, OBJ.Height, OBJ.Thickness];
                otherwise
                    error("###_ERROR:  UNknown Body fixed frame convention");
            end

        end
    %----------------------------------------
    end % methods
end     % classdef