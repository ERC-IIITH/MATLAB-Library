% Function to find the first N fourier coefficients of given function x(t)
function F = fourierCoeff(t, xt, T, t1, t2, N)
	wo = 2 * pi / T;

	% This array contains the coefficients in the order
	% a_{-N}, a_{-(N-1)}, ... a_{-1}, a_0, a_{1}, ... , a_{N-1}, a_{N}
	F = zeros(2 * N + 1, 1);

	for k = 1:2*N+1
    		F(k) = 1/T * int(xt * exp(-1i*(k-N-1)*wo*t),t,[t1 t2]);   %expression for calculating FS coeff.
	end
end
