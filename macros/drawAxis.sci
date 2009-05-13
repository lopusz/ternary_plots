function drawAxis(ax,tics,fmt,fontSty,fontSiz,aw,ah)
	
	l=0.015;
    
    if ~exists("fontSty","local") then
       fontSty=6;  // Helvetica 
    end

    if ~exists("fontSiz","local") then
        fontSiz=1;
    end

	// AXES IDENTIFICATION
	z=zeros(tics);

	if (ax==1) then
		beta=-5.0*%pi/6.0;
		[x0,y0]=convertABCToXY(z,1.0-tics,tics);
        if ~exists("aw","local") then
		    aw=0.1; 
        end
        if ~exists("ah","local")
            ah=0.0;
        end
	elseif (ax==2) then
		beta=-%pi/6.0; 
		[x0,y0]=convertABCToXY(tics,z,1.0-tics);
        if ~exists("aw","local") then
		    aw=-1.2; 
        end
        if ~exists("ah","local")
            ah=0.0;
        end
    else
 		beta=%pi/2;
		[x0,y0]=convertABCToXY(1.0-tics,tics,z);
        if ~exists("aw","local") then
		    aw=-0.5; 
        end
        if ~exists("ah","local")
            ah=-1.3;
        end
    end
	
	// DRAWING TICS

	N=max(size(tics));

	for i=1:N do
		xsegs( [x0(i)-l*cos(beta), x0(i)+l*cos(beta)], ...
		       [y0(i)-l*sin(beta), y0(i)+l*sin(beta)])
	end 

	// DRAWING CAPTIONS
	if exists("fmt","local") then
		for i=1:N do
			x=x0(i)-l*cos(beta); y=y0(i)-l*sin(beta);
			s=sprintf(fmt,tics(i));
			rect=xstringl(x,y,s,fontSty,fontSiz);
			w=rect(3); h=rect(4);
			x=x+aw*w;
			y=y+ah*h;
			xstring(x,y,s);
            xstr=gce();
            xstr.font_size=fontSiz;
            xstr.font_style=fontSty;
		end
	end
endfunction

