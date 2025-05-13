function y = abcd2y(abcd)
% y = abcd2y(abcd)
%
% ABCD transformation to Y-matrix
%
% input:
%   abcd:   ABCD 2Nx2Nxf   (f: number of frequencies)
%
% output:
%   y:      Y-matrix 2Nx2Nxf

y = z2y(abcd2z(abcd));

