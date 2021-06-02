function [DfDx,DfDu] = TwoTrackModelJacobian(in1,in2,deltaf)
%TWOTRACKMODELJACOBIAN
%    [DFDX,DFDU] = TWOTRACKMODELJACOBIAN(IN1,IN2,DELTAF)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    24-Feb-2021 14:21:24

thetad = in1(4,:);
vx = in1(2,:);
vy = in1(1,:);
wfl = in1(5,:);
wfr = in1(6,:);
wrl = in1(7,:);
wrr = in1(8,:);
t2 = thetad.*(7.61e2./1.0e3);
t3 = t2+vx;
t6 = thetad.*(7.9e1./5.0e1);
t4 = t6-vy;
t5 = t2-vx;
t7 = t4.^2;
t8 = sin(deltaf);
t9 = cos(deltaf);
t10 = t8.^2;
t11 = t9.*vx.*1.0e3;
t12 = t8.*thetad.*1.01e3;
t13 = t8.*vy.*1.0e3;
t15 = thetad.*1.01e3;
t16 = vy.*1.0e3;
t17 = t15+t16;
t18 = thetad.*7.61e2;
t19 = vx.*1.0e3;
t20 = t18+t19;
t22 = t9.*t20;
t23 = t8.*t17;
t14 = t22+t23;
t25 = t9.*t17;
t26 = t8.*t20;
t21 = t25-t26;
t24 = t14.^2;
t28 = t18-t19;
t32 = t8.*t28;
t27 = t25+t32;
t30 = t9.*t28;
t29 = t23-t30;
t31 = t23-t30;
t33 = t3.^2;
t34 = t7+t33;
t35 = 1.0./t34;
t36 = t5.^2;
t37 = t7+t36;
t38 = 1.0./t37;
t39 = t21.^2;
t40 = t24+t39;
t41 = 1.0./t40;
t42 = 1.0./t14;
t43 = 1.0./t14.^2;
t44 = t27.^2;
t45 = t23-t30;
t46 = t23-t30;
t47 = 1.0./t29;
t48 = 1.0./t29.^2;
t49 = t9.*thetad.*7.61e2;
t50 = t11+t12+t13+t49;
t51 = 1.0./t50.^2;
t52 = t23-t30;
t53 = t8.*7.61e2;
t54 = t9.*1.01e3;
t55 = t9.*7.61e2;
t56 = t8.*1.01e3;
t57 = t23-t30;
t58 = t55-t56;
t59 = t11+t12+t13-t49;
t60 = 1.0./t59.^2;
t61 = t55+t56;
t62 = t9.*t42.*1.0e3;
t90 = t8.*t21.*t43.*1.0e3;
t63 = t62-t90;
t64 = t23-t30;
t65 = t23-t30;
t66 = t9.*t47.*1.0e3;
t67 = t9.^2;
t68 = t8.*t42.*1.0e3;
t69 = t9.*t21.*t43.*1.0e3;
t70 = t68+t69;
t71 = t23-t30;
t72 = t23-t30;
t73 = t8.*t47.*1.0e3;
t74 = 1.0./(t23-t30).^2;
t75 = 1.0./t20.^2;
t76 = thetad.*1.51439e5;
t89 = vx.*1.99e5;
t77 = t76-t89;
t78 = 1.0./t77.^2;
t79 = t53-t54;
t80 = t42.*t79;
t81 = t21.*t43.*t61;
t82 = t80+t81;
t83 = t23-t30;
t84 = t53+t54;
t85 = t47.*t84;
t86 = t23-t30;
t87 = 1.0./t59;
t88 = 1.0./t50;
t91 = t23-t30;
t92 = t23-t30;
t96 = t8.*t27.*t74.*1.0e3;
t93 = t66-t96;
t94 = t23-t30;
t95 = t23-t30;
t97 = t23-t30;
t98 = t23-t30;
t99 = t9.*t27.*t74.*1.0e3;
t100 = t23-t30;
t101 = t23-t30;
t102 = 1.0./t28.^2;
t103 = 1.0./t5;
t104 = t103.*(7.9e1./5.0e1);
t105 = 1.0./t5.^2;
t106 = t104-t4.*t105.*(7.61e2./1.0e3);
t107 = 1.0./t3;
t108 = t107.*(7.9e1./5.0e1);
t109 = 1.0./t3.^2;
t110 = t108-t4.*t109.*(7.61e2./1.0e3);
t111 = t23-t30;
t112 = t27.*t58.*t74;
t113 = t23-t30;
t114 = t85+t112;
t115 = t23-t30;
t116 = t23-t30;
t117 = 1.0./t20;
t118 = t5.*t9;
t119 = thetad.*(1.01e2./1.0e2);
t120 = t119+vy;
t123 = t8.*t120;
t121 = t118-t123;
t122 = 1.0./t121.^2;
t124 = t3.*t9;
t125 = t123+t124;
t126 = 1.0./t125.^2;
t127 = t8.*(1.01e2./1.0e2);
DfDx = reshape([t3.*t35.*(-5.61499162479062e1)+t5.*t38.*5.61499162479062e1-t10.*wfl.*1.0./(t11+t12+t13-t9.*thetad.*7.61e2).^2.*2.744547738693467e7-t10.*t51.*wfr.*2.744547738693467e7-t9.*t24.*t41.*t63.*5.61499162479062e1-(t9.*t31.^2.*(t66-t8.*t27.*t48.*1.0e3).*5.61499162479062e1)./(t44+t29.^2),thetad+(t8.*t65.^2.*t93.*5.61499162479062e1)./(t44+t64.^2)+t8.*t24.*t41.*t63.*5.61499162479062e1-t8.*t9.*t60.*wfl.*2.744547738693467e7-t8.*t9.*t51.*wfr.*2.744547738693467e7,0.0,t3.*t35.*6.436700295985811e1-t5.*t38.*6.436700295985811e1-t10.*t60.*wfl.*2.0111721730803e7-t10.*t51.*wfr.*2.0111721730803e7-(t9.*t92.^2.*t93.*4.114599556294727e1)./(t44+t91.^2)-(t8.*t93.*t95.^2.*3.100208180534938e1)./(t44+t94.^2)+t8.*t24.*t41.*t63.*3.100208180534938e1-t9.*t24.*t41.*t63.*4.114599556294727e1+t8.*t9.*t60.*wfl.*1.515348538330801e7-t8.*t9.*t51.*wfr.*1.515348538330801e7,t8.*t122.*wfl.*8.541662459016393e3,t8.*t126.*wfr.*8.541662459016393e3,0.0,0.0,-thetad-t4.*t35.*5.61499162479062e1-t4.*t38.*5.61499162479062e1+t9.*t24.*t41.*t70.*5.61499162479062e1-t8.*t9.*t60.*wfl.*2.744547738693467e7-t8.*t9.*t51.*wfr.*2.744547738693467e7+(t9.*t46.^2.*(t73+t9.*t27.*t48.*1.0e3).*5.61499162479062e1)./(t44+t45.^2),t78.*wrl.*-1.08686835e12-t75.*wrr.*2.744547738693467e7-t60.*t67.*wfl.*2.744547738693467e7-t51.*t67.*wfr.*2.744547738693467e7-t8.*t24.*t41.*t70.*5.61499162479062e1-(t8.*t72.^2.*(t73+t99).*5.61499162479062e1)./(t44+t71.^2),0.0,t4.*t35.*6.436700295985811e1+t4.*t38.*6.436700295985811e1+t102.*wrl.*1.515348538330801e7-t75.*wrr.*1.515348538330801e7+t60.*t67.*wfl.*1.515348538330801e7-t51.*t67.*wfr.*1.515348538330801e7-t8.*t24.*t41.*t70.*3.100208180534938e1+t9.*t24.*t41.*t70.*4.114599556294727e1-t8.*t9.*t60.*wfl.*2.0111721730803e7-t8.*t9.*t51.*wfr.*2.0111721730803e7+(t9.*t98.^2.*(t73+t99).*4.114599556294727e1)./(t44+t97.^2)+(t8.*t101.^2.*(t73+t99).*3.100208180534938e1)./(t44+t100.^2),t9.*t122.*wfl.*8.541662459016393e3,t9.*t126.*wfr.*8.541662459016393e3,t105.*wrl.*8.541662459016393e3,t109.*wrr.*8.541662459016393e3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-vx+t33.*t35.*t110.*5.61499162479062e1-t36.*t38.*t106.*5.61499162479062e1+t9.*t24.*t41.*t82.*5.61499162479062e1+t8.*t58.*t60.*wfl.*2.744547738693467e4-t8.*t51.*t61.*wfr.*2.744547738693467e4-(t9.*t57.^2.*(t85+t27.*t48.*t58).*5.61499162479062e1)./(t44+t52.^2),vy+t78.*wrl.*8.2710681435e11-t75.*wrr.*2.088600829145729e7+(t8.*t86.^2.*t114.*5.61499162479062e1)./(t44+t83.^2)-t8.*t24.*t41.*t82.*5.61499162479062e1+t9.*t58.*t60.*wfl.*2.744547738693467e4-t9.*t51.*t61.*wfr.*2.744547738693467e4,1.0,t102.*wrl.*(-1.153180237669739e7)-t75.*wrr.*1.153180237669739e7-t33.*t35.*t110.*6.436700295985811e1+t36.*t38.*t106.*6.436700295985811e1+t9.*t24.*t41.*(t80+t81).*4.114599556294727e1-(t9.*t113.^2.*t114.*4.114599556294727e1)./(t44+t111.^2)-(t8.*t114.*t116.^2.*3.100208180534938e1)./(t44+t115.^2)-t8.*t24.*t41.*t82.*3.100208180534938e1+t8.*t58.*t60.*wfl.*2.0111721730803e4-t9.*t58.*t60.*wfl.*1.515348538330801e4-t8.*t51.*t61.*wfr.*2.0111721730803e4-t9.*t51.*t61.*wfr.*1.515348538330801e4,t122.*wfl.*(t9.*(7.61e2./1.0e3)-t127).*(-8.541662459016393e3),t126.*wfr.*(t9.*(7.61e2./1.0e3)+t127).*8.541662459016393e3,t105.*wrl.*(-6.500205131311475e3),t109.*wrr.*6.500205131311475e3,t8.*t87.*2.744547738693467e4,t9.*t87.*2.744547738693467e4,0.0,t8.*t87.*2.0111721730803e4-t9.*t87.*1.515348538330801e4,8.541662459016393e3./t121,0.0,0.0,0.0,t8.*t88.*2.744547738693467e4,t9.*t88.*2.744547738693467e4,0.0,t8.*t88.*2.0111721730803e4+t9.*t88.*1.515348538330801e4,0.0,(-8.541662459016393e3)./t125,0.0,0.0,0.0,-5.46165e6./t77,0.0,1.515348538330801e4./t28,0.0,0.0,t103.*8.541662459016393e3,0.0,0.0,t117.*2.744547738693467e4,0.0,t117.*1.515348538330801e4,0.0,0.0,0.0,t107.*(-8.541662459016393e3)],[8,8]);
if nargout > 1
    DfDu = reshape([0.0,0.0,0.0,0.0,5.0e1./6.1e1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5.0e1./6.1e1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5.0e1./6.1e1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5.0e1./6.1e1],[8,4]);
end
