function [x, P]= update_D(x,P,z,R,idf, batch)
% function [x,P]= update(x,P,z,R,idf, batch)
%
% Inputs:
%   x, P - SLAM state and covariance
%   z, R - range-bearing measurements and covariances
%   idf - feature index for each z
%   batch - switch to specify whether to process measurements together or sequentially
%
% Outputs:
%   x, P - updated state and covariance

if batch == 1
    [x,P]= batch_update(x,P,z,R,idf);
else
    [x,P]= single_update(x,P,z,R,idf);
end

end