function f = twoTrackModel(in1,in2,deltaf)
%TWOTRACKMODEL
%    F = TWOTRACKMODEL(IN1,IN2,DELTAF)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    04-Feb-2021 14:33:09

Tfl = in2(1,:);
Tfr = in2(2,:);
Trl = in2(3,:);
Trr = in2(4,:);
thetad = in1(4,:);
vx = in1(2,:);
vy = in1(1,:);
wfl = in1(5,:);
wfr = in1(6,:);
wrl = in1(7,:);
wrr = in1(8,:);
t2 = vy.*1i;
t3 = cos(deltaf);
t4 = sin(deltaf);
t5 = t4.*-1i;
t6 = t3+t5;
t7 = vx.*2.0e3;
t8 = vy.*2.0e3i;
t9 = t3.*vx.*2.0e3;
t10 = t4.*thetad.*2.14e3;
t11 = t4.*vy.*2.0e3;
t12 = thetad.*(-1.517e3+2.14e3i);
t13 = t7+t8+t12;
t14 = t6.*t13;
t15 = angle(t14);
t16 = thetad.*(1.517e3+2.14e3i);
t17 = t7+t8+t16;
t18 = t6.*t17;
t19 = angle(t18);
t20 = t3.*thetad.*1.517e3;
t21 = t9+t10+t11+t20;
t22 = 1.0./t21;
t23 = thetad.*(-7.585e-1-1.605i);
t24 = t2+t23+vx;
t25 = angle(t24);
t26 = thetad.*(7.585e-1-1.605i);
t27 = t2+t26+vx;
t28 = angle(t27);
t29 = thetad.*1.517e3;
t30 = t7+t29;
t31 = 1.0./t30;
t32 = t9+t10+t11-t20;
t33 = 1.0./t32;
t34 = thetad.*7.585e-1;
t35 = thetad.*(1.07e2./1.0e2);
t36 = t35+vy;
t37 = t4.*t36;
t38 = t34-vx;
t39 = t34+vx;
f = [t4.*(-3.582089552238806e1)-t25.*5.552238805970149e1-t28.*5.552238805970149e1-t3.*t15.*5.552238805970149e1-t3.*t19.*5.552238805970149e1-thetad.*vx+(t4.*wfl.*1.131940298507463e4)./(t9+t10+t11-t3.*thetad.*1.517e3)+t4.*t22.*wfr.*1.131940298507463e4;t3.*(-3.582089552238806e1)+t4.*t15.*5.552238805970149e1+t4.*t19.*5.552238805970149e1+thetad.*vy+t31.*wrr.*1.131940298507463e4+(wrl.*1.131940298507463e4)./(t7-thetad.*1.517e3)+t3.*t33.*wfl.*1.131940298507463e4+t3.*t22.*wfr.*1.131940298507463e4-3.582089552238806e1;thetad;t4.*(-2.453190676346962e1)+t25.*5.703668322506687e1+t28.*5.703668322506687e1+(wrl.*1.438116e7)./(thetad.*3.969989e6-vx.*5.234e6)-t3.*t15.*3.802445548337791e1-t4.*t15.*2.695471914405808e1-t3.*t19.*3.802445548337791e1+t4.*t19.*2.695471914405808e1+t31.*wrr.*5.495284677111196e3-t3.*t33.*wfl.*5.495284677111196e3+t4.*t33.*wfl.*7.7520825372564e3+t3.*t22.*wfr.*5.495284677111196e3+t4.*t22.*wfr.*7.7520825372564e3;Tfl-(wfl.*2.99568e3)./(t37-t3.*t38)+9.48e3;Tfr-(wfr.*2.99568e3)./(t37+t3.*t39)+9.48e3;Trl+(wrl.*2.99568e3)./t38+9.48e3;Trr-(wrr.*2.99568e3)./t39+9.48e3];
