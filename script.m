clc;
x1 = [1 2 3 4];
X1 = DFT(x1);
N = length(x1);

%plotting the input sequence and the DFT
t = 0:N-1;
subplot(311)
stem(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Input sequence')
subplot(312)
stem(t,abs(X))
xlabel('Frequency');
ylabel('|X(k)|');
title('Magnitude response')
%plotting the phase response in frequency domain
subplot(313)
stem(t,angle(X))
xlabel('Frequency');
ylabel('Phase');
title('Phase response')