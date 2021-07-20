function [DfDx,DfDu] = PredictionModelJacobian(in1,in2,deltaf)
%PREDICTIONMODELJACOBIAN
%    [DFDX,DFDU] = PREDICTIONMODELJACOBIAN(IN1,IN2,DELTAF)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    20-Jul-2021 18:28:09

thetad = in1(3,:);
vx = in1(1,:);
vy = in1(2,:);
wfl = in1(4,:);
wfr = in1(5,:);
wrl = in1(6,:);
wrr = in1(7,:);
t2 = -vx;
t3 = -vy;
t4 = deltaf./1.3e+1;
t5 = thetad.*1.311e+3;
t6 = vx.*1.0e+3;
t7 = vy.*1.0e+3;
t10 = thetad.*2.0976e+4;
t12 = vx.*1.6e+4;
t16 = thetad.*1.311;
t8 = cos(t4);
t9 = sin(t4);
t11 = -t6;
t13 = -t12;
t19 = t5+t6;
t20 = t5+t7;
t24 = t16+vx;
t25 = t16+vy;
t30 = t10+t12;
t32 = t2+t16;
t34 = t3+t16;
t14 = t8.^2;
t15 = t9.^2;
t17 = t8.*1.311e+3;
t18 = t9.*1.311e+3;
t21 = t5.*t9;
t22 = t7.*t9;
t26 = t5.*t8;
t27 = t6.*t8;
t28 = t5+t11;
t29 = t8.*thetad.*-1.311e+3;
t31 = t24.^2;
t33 = t10+t13;
t35 = 1.0./t24;
t37 = 1.0./t19.^2;
t39 = t8.*1.311;
t40 = t9.*1.311;
t41 = t32.^2;
t42 = 1.0./t30.^2;
t43 = t34.^2;
t44 = 1.0./t32;
t47 = t8.*t24;
t48 = t9.*t25;
t49 = t8.*t19;
t50 = t8.*t20;
t51 = t9.*t19;
t52 = t9.*t20;
t57 = t8.*t32;
t23 = -t18;
t36 = 1.0./t31;
t38 = 1.0./t28.^2;
t45 = 1.0./t41;
t46 = 1.0./t33.^2;
t53 = t8.*t28;
t54 = t9.*t28;
t55 = -t51;
t56 = -t52;
t58 = t17+t18;
t59 = t35.*1.311;
t61 = -t57;
t62 = t44.*1.311;
t63 = t31+t43;
t64 = t41+t43;
t69 = t49+t52;
t70 = t47+t48;
t87 = t21+t22+t26+t27;
t88 = t21+t22+t27+t29;
t60 = t17+t23;
t65 = 1.0./t63;
t66 = 1.0./t64;
t67 = t34.*t36.*1.311;
t71 = t50+t54;
t72 = t50+t55;
t73 = t34.*t45.*1.311;
t74 = t69.^2;
t75 = 1.0./t70.^2;
t76 = t53+t56;
t78 = 1.0./t69;
t82 = t48+t61;
t83 = (t52-t53).^2;
t84 = -1.0./(t52-t53);
t89 = 1.0./t87;
t91 = 1.0./t88;
t95 = (t8.*-1.0e+3)./(t52-t53);
t96 = (t9.*-1.0e+3)./(t52-t53);
t68 = -t67;
t77 = -t73;
t79 = 1.0./t74;
t80 = t71.^2;
t81 = t72.^2;
t85 = 1.0./t83;
t86 = 1.0./t82.^2;
t90 = t89.^2;
t92 = t91.^2;
t93 = t8.*t78.*1.0e+3;
t94 = t9.*t78.*1.0e+3;
t98 = t60.*t78;
t99 = t58.*t84;
t97 = t59+t68;
t100 = t62+t77;
t101 = t8.*t9.*t90.*wfl.*2.04811875e+7;
t102 = t8.*t9.*t92.*wfr.*2.04811875e+7;
t103 = t74+t81;
t104 = t80+t83;
t107 = t8.*t72.*t79.*1.0e+3;
t108 = t9.*t72.*t79.*1.0e+3;
t110 = t8.*t71.*t85.*1.0e+3;
t111 = t9.*t71.*t85.*1.0e+3;
t113 = t58.*t72.*t79;
t114 = t8.*t9.*t90.*wfl.*1.79479329396553e+7;
t116 = t8.*t9.*t92.*wfr.*1.79479329396553e+7;
t117 = t60.*t71.*t85;
t105 = 1.0./t103;
t106 = 1.0./t104;
t109 = -t108;
t112 = -t110;
t115 = -t113;
t118 = -t117;
t119 = t94+t107;
t121 = t95+t111;
t120 = t93+t109;
t122 = t96+t112;
t123 = t98+t115;
DfDx = reshape([t42.*wrl.*-5.243184e+9-t46.*wrr.*5.243184e+9-t14.*t90.*wfl.*2.04811875e+7-t14.*t92.*wfr.*2.04811875e+7-t9.*t74.*t105.*t119.*4.1901875e+1-t9.*t83.*t106.*(t110+(t9.*1.0e+3)./(t52-t53)).*4.1901875e+1,t101+t102-thetad-t34.*t65.*4.1901875e+1-t34.*t66.*4.1901875e+1+t8.*t74.*t105.*t119.*4.1901875e+1+t8.*t83.*t106.*(t110+(t9.*1.0e+3)./(t52-t53)).*4.1901875e+1,t114+t116+t34.*t65.*3.671916203812981e+1+t34.*t66.*3.671916203812981e+1-t37.*wrl.*1.79479329396553e+7+t38.*wrr.*1.79479329396553e+7-t14.*t90.*wfl.*1.79479329396553e+7+t14.*t92.*wfr.*1.79479329396553e+7+t8.*t74.*t105.*t119.*3.671916203812981e+1-t9.*t74.*t105.*t119.*3.671916203812981e+1+t8.*t83.*t106.*(t110+(t9.*1.0e+3)./(t52-t53)).*3.671916203812981e+1+t9.*t83.*t106.*(t110+(t9.*1.0e+3)./(t52-t53)).*3.671916203812981e+1,t8.*t75.*wfl.*8.541662459016393e+3,t8.*t86.*wfr.*8.541662459016393e+3,t36.*wrl.*8.541662459016393e+3,t45.*wrr.*8.541662459016393e+3,-t101-t102+thetad+t9.*t74.*t105.*t120.*4.1901875e+1-t9.*t83.*t106.*(t111-(t8.*1.0e+3)./(t52-t53)).*4.1901875e+1,t24.*t65.*(-4.1901875e+1)+t32.*t66.*4.1901875e+1+t15.*t90.*wfl.*2.04811875e+7+t15.*t92.*wfr.*2.04811875e+7-t8.*t74.*t105.*t120.*4.1901875e+1+t8.*t83.*t106.*(t111-(t8.*1.0e+3)./(t52-t53)).*4.1901875e+1,-t114+t116+t24.*t65.*3.671916203812981e+1-t32.*t66.*3.671916203812981e+1+t15.*t90.*wfl.*1.79479329396553e+7+t15.*t92.*wfr.*1.79479329396553e+7-t8.*t74.*t105.*t120.*3.671916203812981e+1+t9.*t74.*t105.*t120.*3.671916203812981e+1+t8.*t83.*t106.*(t111-(t8.*1.0e+3)./(t52-t53)).*3.671916203812981e+1+t9.*t83.*t106.*(t111-(t8.*1.0e+3)./(t52-t53)).*3.671916203812981e+1,t9.*t75.*wfl.*8.541662459016393e+3,t9.*t86.*wfr.*8.541662459016393e+3,0.0,0.0,vy-t42.*wrl.*6.873814224e+9+t46.*wrr.*6.873814224e+9+t9.*t74.*t105.*t123.*4.1901875e+1-t8.*t58.*t90.*wfl.*2.04811875e+4+t8.*t60.*t92.*wfr.*2.04811875e+4+t9.*t83.*t106.*(t117+t58./(t52-t53)).*4.1901875e+1,t2+t31.*t65.*t97.*4.1901875e+1-t41.*t66.*t100.*4.1901875e+1-t8.*t74.*t105.*t123.*4.1901875e+1+t9.*t58.*t90.*wfl.*2.04811875e+4-t9.*t60.*t92.*wfr.*2.04811875e+4-t8.*t83.*t106.*(t117+t58./(t52-t53)).*4.1901875e+1,t37.*wrl.*(-2.35297400838881e+7)-t38.*wrr.*2.35297400838881e+7-t31.*t65.*t97.*3.671916203812981e+1+t41.*t66.*t100.*3.671916203812981e+1-t8.*t74.*t105.*t123.*3.671916203812981e+1+t9.*t74.*t105.*t123.*3.671916203812981e+1-t8.*t58.*t90.*wfl.*1.79479329396553e+4+t9.*t58.*t90.*wfl.*1.79479329396553e+4-t8.*t60.*t92.*wfr.*1.79479329396553e+4-t9.*t60.*t92.*wfr.*1.79479329396553e+4-t8.*t83.*t106.*(t117+t58./(t52-t53)).*3.671916203812981e+1-t9.*t83.*t106.*(t117+t58./(t52-t53)).*3.671916203812981e+1,t75.*wfl.*(t39+t40).*8.541662459016393e+3,t86.*wfr.*(t39-t40).*(-8.541662459016393e+3),t36.*wrl.*1.119811948377049e+4,t45.*wrr.*(-1.119811948377049e+4),t8.*t89.*2.04811875e+4,t9.*t89.*(-2.04811875e+4),t8.*t89.*1.79479329396553e+4-t9.*t89.*1.79479329396553e+4,(-8.541662459016393e+3)./t70,0.0,0.0,0.0,t8.*t91.*2.04811875e+4,t9.*t91.*(-2.04811875e+4),t8.*t91.*(-1.79479329396553e+4)-t9.*t91.*1.79479329396553e+4,0.0,(-8.541662459016393e+3)./t82,0.0,0.0,3.27699e+5./t30,0.0,1.79479329396553e+4./t19,0.0,0.0,t35.*(-8.541662459016393e+3),0.0,-3.27699e+5./t33,0.0,1.79479329396553e+4./t28,0.0,0.0,0.0,t44.*8.541662459016393e+3],[7,7]);
if nargout > 1
    DfDu = reshape([0.0,0.0,0.0,5.0e+1./6.1e+1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5.0e+1./6.1e+1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5.0e+1./6.1e+1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5.0e+1./6.1e+1],[7,4]);
end
