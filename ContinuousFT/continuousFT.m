function [X] = continuousFT(xt,t,a,b,w)
    syms t;
    X = int(xt*exp(-1j*w*t),t,[a b]);
end
