function abcd = y2abcd(y)
% abcd = y2abcd(y)
%
% Y-matrix to ABCD transformation
%
% input:
%   y:    Y-matrix matrix 2Nx2Nxf   (f: number of frequencies)
%
% output:
%   abcd: ABCD 2Nx2Nxf

abcd = z2abcd(y2z(y));
