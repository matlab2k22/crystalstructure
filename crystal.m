scs=[1,1,1,1,1,1,2];
bccs=[2,2];
fccs=[1,4,3];
dcs=[3,5];
sc=[1];
bcc=[2];
fcc=[3];
dc=[3];
t=[38.43,44.67,65.02,78.13,82.33,98.13,111.83,116.36];
tmin=min(t);
tlen=length(t);
for i=1 : length(t)
    dp=[];
    dp=repmat(fccs,1,tlen);
    fcc(end+1)=fcc(end)+dp(i);
    
    dp=[];
    dp=repmat(bcc,1,tlen);
    bcc(end+1)=bcc(end)+dp(i);
    
    dp=[];
    dp=repmat(sc,1,tlen);
    sc(end+1)=sc(end)+dp(i);
    
    dp=[];
    dp=repmat(dc,1,tlen);
    dc(end+1)=dc(end)+dp(i);
end
x=t/2;
sin2t=sind(x).^2;
t1=sin2t/min(sin2t);
t2=2*t1;
t3=3*t1;
t4=4*t1;
t5=5*t1;
t6=6*t1;
t8=8*t1;
if strfind(sc,round(t1));
    disp('sc');
    hkl=t1;
elseif strfind(sc,round(t2));
    disp('sc')
    hkl=t2;
elseif strfind(sc,round(t3));
    disp('sc');
    hkl=t3;
elseif strfind(sc,round(t4));
    disp('sc');
    hkl=t4;
elseif strfind(sc,round(t5));
    disp('sc');
    hkl=t5;
elseif strfind(sc,round(t6));
    disp('sc');
    hkl=t6;
elseif strfind(sc,round(t8));
    disp('sc');
    hkl=t8;
elseif strfind(bcc,round(t1));
    disp('bcc');
    hkl=t1;
elseif strfind(bcc,round(t2));
    disp('bcc');
    hkl=t2;
elseif strfind(bcc,round(t3));
    disp('bcc');
    hkl=t3;
elseif strfind(bcc,round(t4));
    disp('bcc');
    hkl=t4;
elseif strfind(bcc,round(t5));
    disp('bcc');
    hkl=t5;
elseif strfind(bcc,round(t6));
    disp('bcc');
    hkl=t6;
elseif strfind(bcc,round(t8));
    disp('bcc');
    hkl=t8;
elseif strfind(fcc,round(t1));
    disp('fcc');
    hkl=t1;
elseif strfind(fcc,round(t2));
    disp('fcc');
    hkl=t2;
elseif strfind(fcc,round(t3));
    disp('fcc');
    hkl=t3;
elseif strfind(fcc,round(t4));
    disp('fcc');
    hkl=t4;
elseif strfind(fcc,round(t5));
    disp('fcc');
    hkl=t5;
elseif strfind(fcc,round(t6));
    disp('fcc');
    hkl=t6;
elseif strfind(fcc,round(t8));
    disp('fcc');
    hkl=t8;
elseif strfind(dc,round(t1));
    disp('dc');
    hkl=t1;
elseif strfind(dc,round(t2));
    disp('dc');
    hkl=t2;
elseif strfind(dc,round(t3));
    disp('dc');
    hkl=t3;
elseif strfind(dc,round(t4));
    disp('dc');
    hkl=t4;
    elseif strfind(dc,round(t5));
    disp('dc');
    hkl=t5;
elseif strfind(dc,round(t6));
    disp('dc');
    hkl=t6;
elseif strfind(dc,round(t8));
    disp('dc');
    hkl=t8;
end
disp(round(hkl));
L=1.542;
b=L/4*sin2t;
c=b.*hkl;
a=sqrt(c)
    

    
    
    
    