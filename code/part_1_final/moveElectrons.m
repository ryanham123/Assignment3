function [electons]=moveElectrons(electons,boxes,boxes2,Ex,Ey,mass)
    clear test_y
    
   
    
    global tstep
    q=1.602e-19;
    
    %calculate acceleration;
    y = ceil(electons(:,2)*1e9);
    x = ceil(electons(:,1)*1e9);
    
    ylarge=y>100;
    ysmall=y<=0;
    
    
    
    xlarge=x>200;
    xsmall=x<=0;
    
%     r=sum(xlarge+xsmall+ysmall+ylarge)
%     
%     if (r>0|max(x)>200|min(x)<0|max(y)>100|min(y)<0)
%         
%         r=0;
%            
%         
%     end
    
    
    
    x=x.*(~xlarge&~xsmall)+1.*xsmall+200.*xlarge;
    
    y=y.*(~ylarge&~ysmall)+1.*ysmall+100.*ylarge;
    
    t=sub2ind(size(Ex),y,x);
    
    
    electons(:,5)=q*Ex(t)/mass*tstep*200/201;
    electons(:,6)=q*Ey(t)/mass*tstep*100/101;
    
    electons(:,3)=electons(:,3)+electons(:,5);
    electons(:,4)=electons(:,4)+electons(:,6);

    
    xshift=electons(:,3)*tstep/2;
    yshift=electons(:,4)*tstep/2;
    
    
    electons(:,1)=mod(electons(:,1)+xshift,200e-9);
    electons(:,2)=electons(:,2)+yshift;
    
    test_y_top_bot=((electons(:,2)+yshift)> 100e-9)|(electons(:,2)+yshift< 0);
    

    electons=scatter(electons,boxes,boxes2);
    
    electons=checkboxes(electons,boxes);
    
    electons=checkboxes2(electons,boxes2);
   

    
    electons(:,4)= electons(:,4)-2.*electons(:,4).*test_y_top_bot;
    
    xshift=electons(:,3)*tstep/2;
    yshift=electons(:,4)*tstep/2;
    
    electons(:,1)=mod(electons(:,1)+xshift,200e-9);
    electons(:,2)=electons(:,2)+yshift;
    

end