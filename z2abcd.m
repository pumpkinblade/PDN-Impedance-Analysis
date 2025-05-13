function abcd = z2abcd(z)
% abcd = z2abcd(z)
%
% Z-matrix to ABCD transformation
%
% input:
%   z:   Z-matrix matrix 2x2xf   (f: number of frequencies)
%
% output:
%   abcd:   ABCD 2x2xf
%
% Reference: http://qucs.sourceforge.net/tech/node98.html
%
% Thorsten Liebig <thorsten.liebig@gmx.de>
% (c) 2013

N = size(z, 1) / 2;
Nf = size(z, 3);
abcd = z * 0;
for f=1:Nf
  Z11 = z(1:N,1:N,f);
  Z12 = z(1:N,N+1:end,f);
  Z21 = z(N+1:end,1:N,f);
  Z22 = z(N+1:end,N+1:end,f);

  Z21_inv = inv(Z21);

  C = Z21_inv;
  A = Z11 * Z21_inv;
  D = -Z21_inv * Z22;
  B = Z12 - Z11 * Z21_inv * Z22;

  abcd(:,:,f) = [A B; C D];
end
