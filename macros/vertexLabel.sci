function vertexLabel(vx,str,fontSty,fontSiz,aw,ah)

    if ~exists("fontSty","local") then
       fontSty=6;  // Helvetica 
    end

    if ~exists("fontSiz","local") then
        fontSiz=1;
    end

    if (vx==1) then
		beta=-5.0*%pi/6.0;
		[x0,y0]=convertABCToXY(1.0,0.0,0.0);
        
        if ~exists("aw","local") then
		    aw=-1.5; 
        end
        if ~exists("ah","local")
            ah=-1.5;
        end
    elseif (vx==2) then 
        [x0,y0]=convertABCToXY(0.0,1.0,0.0);
        if ~exists("aw","local") then
		    aw= 0.3; 
        end
        if ~exists("ah","local")
            ah=-1.5;
        end
    else 
        [x0,y0]=convertABCToXY(0.0,0.0,1.0);
        if ~exists("aw","local") then
		    aw=-0.5; 
        end
        if ~exists("ah","local")
            ah= 0.75;
        end
    end

    rect=xstringl(x0,y0,str,fontSty,fontSiz);
    w=rect(3); h=rect(4);

    xstring(x0+aw*w,y0+ah*h,str);
    xstr=gce();
    xstr.font_size=fontSiz;
    xstr.font_style=fontSty;
endfunction
