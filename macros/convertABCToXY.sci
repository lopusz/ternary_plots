function [x,y]=convertABCToXY(A,B,C);
    // x=B + 0.5*C;
	x=0.5 + -0.5*A + 0.5*B;  
    y=0.5*sqrt(3)*(1.0-A-B);
endfunction

