Quantization

It is a process which makes the input into discrete and maps to some limited discrete values
The method goes like this
Function Y = linear_quantation(x,B,a)
    x - input
    B - number of bits used to quantization levels
    a - poistive real number [-a,+a) forms the range of qunatization

let's have a example and it is linear quantization
For the range [0,a): To implement this above function, divide the interval [0,1] into L = 2^(B-1)
0 = r0 < r1 < r3 .... < rL = 1 Then we compare with [a*ri, a*r(i+1) ) input at a point then 
If exists then we take midpoint of above interval.