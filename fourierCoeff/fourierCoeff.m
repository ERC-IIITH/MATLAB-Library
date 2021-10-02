% Function to find the first N fourier coefficients of given function x(t)
function F = fourierCoeff(t, xt, T, t1, t2, N)
	w0 = 2 * pi / T;

	% This array contains the coefficients in the order
	% a_{-N}, a_{-(N-1)}, ... a_{-1}, a_0, a_{1}, ... , a_{N-1}, a_{N}
	F = zeros(2 * N + 1, 1);

	% Calculating a_0 and storing it in middle of the array
	F(N + 1) = (1 / T) * int(xt, t, t1, t2);

	% for-loop to calculate the coefficients
	for n = 1 : N
		exprR = xt * exp(-1i * (n) * w0 * t);
		exprL = xt * exp(-1i * (-n) * w0 * t);

		% coefficients for a_{-n} and a_{n}
		coeffR = (1 / T) * int(exprR, t, t1, t2);
		coeffL = (1 / T) * int(exprL, t, t1, t2);

		r = N + 1 + n;
		l = N + 1 - n;

		F(r) = coeffR;
		F(l) = coeffL;
	end
end