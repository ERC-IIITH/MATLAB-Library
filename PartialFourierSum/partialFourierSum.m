function y = partialFourierSum (A, T,time_grid)
% A is the Vector of FS coeffients [coefficents of exponential terms]
% T is the Time period of the given signal
% Time grid is the region and precision specified for time axis

sz=length(A);
if mod(sz,2)==0
   error('Error.\n Ivalind length of vector of Fourier coefficients :%d',sz);
end

N=(sz-1)/2;
y = zeros(size(time_grid));
    for k=-N:N
        y = y + A(N+1+k)*exp((1i)*k*(2*(pi)/T)*time_grid);
    end
end