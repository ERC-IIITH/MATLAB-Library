%Function to perform discrete fourier transform of an input sequence x[n] without using inbuilt functions

function X = DFT(x) 
N = length(x);
X = zeros(N,1);
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-1j*pi/2*n*k);   %generating DFT
    end
end
end
