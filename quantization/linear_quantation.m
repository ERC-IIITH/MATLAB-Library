function Y = linear_quantation(x,B,a) 

len = length(x) ;  %% calucates the length of input
Y = zeros(1,len);  %% output of quantized input-intialized here
r = linspace(0,a,B+1) ;  %% creates equally spaced intervals of (B+1) in [0,a) 

for v = 1:B             %% it is for checking for each level
  for h = 1:len         %% it is for checking every input
      if ( x(h)<((-a)*r(v)) && x(h)>=((-a)*r(v+1)) ) %% cheks the condition
          Y(h) = ((-a)*r(v)+(-a)*r(v+1))/2 ;         %% takes the mean
      end
  end
    
    for h = 1:len        %% it is for checking every input
      if ( x(h)>=(a*r(v)) && x(h)<(a*r(v+1)) )       %% cheks the condition
          Y(h) = (a*r(v)+a*r(v+1))/2 ;      %% takes the mean
      end
    end
  
end

 
  
end