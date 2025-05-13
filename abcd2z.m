function z = abcd2z(abcd)
% z = abcd2z(abcd)
%
% ABCD transformation to Z-matrix
%
% input:
%   abcd:   ABCD 2Nx2Nxf   (f: number of frequencies)
%
% output:
%   z:      Z-matrix 2Nx2Nxf

N = size(abcd, 1) / 2;
Nf = size(abcd, 3);
z = abcd * 0;
for f=1:Nf
  A = abcd(1:N,1:N,f);
  B = abcd(1:N,N+1:end,f);
  C = abcd(N+1:end,1:N,f);
  D = abcd(N+1:end,N+1:end,f);

    C_inv = inv(C);
    Z11 = A * C_inv;
    Z12 = B - A * C_inv * D;
    Z21 = C_inv;
    Z22 = -C_inv * D;

  z(:,:,f) = [Z11 Z12; Z21 Z22];
end
