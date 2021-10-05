# Function to compute Fourier Coefficients of given signal

This function computes the Fourier series coefficients for a given periodic signal $x(t)$.

Here,

-   `t` is the symbolic variable for integration
-   `xt` is the signal as a function of variable t
-   `T` is the time period of given signal
-   `t1`, `t2` are left and right limits of the signal `xt` where it is valid, outside these bounds it is defined as zero.
-   `N` is the number of coefficients to be computed
-   `F` is the vector which contains the coefficients $\{a_{-N},...,a_{-1}, a_0, a_1,..., a_N\}$
