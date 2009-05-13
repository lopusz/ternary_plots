clf();
a=gca();a.isoview='on';

drawTriangle();

drawAxis(1,0.2:0.2:0.9,"%4.2f",fontSty=2,fontSiz=4.0);
drawAxis(2,0.2:0.2:0.9,"%4.2f",fontSty=2,fontSiz=4.0);
drawAxis(3,0.2:0.2:0.9,"%4.2f",fontSty=2,fontSiz=4.0);

vertexLabel(1,"A",fontSty=8,fontSiz=4.0);
vertexLabel(2,"B",fontSty=8,fontSiz=4.0);
vertexLabel(3,"C",fontSty=8,fontSiz=4.0);

//xs2eps(0,"simple");
