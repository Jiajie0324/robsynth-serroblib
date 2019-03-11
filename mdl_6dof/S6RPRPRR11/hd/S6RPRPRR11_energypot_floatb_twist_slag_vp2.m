% Calculate potential energy for
% S6RPRPRR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d5,d6,theta2,theta4]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S6RPRPRR11_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(3,1),zeros(3,1),zeros(13,1),zeros(7,1),zeros(7,3)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR11_energypot_floatb_twist_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S6RPRPRR11_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRR11_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRPRR11_energypot_floatb_twist_slag_vp2: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRR11_energypot_floatb_twist_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRPRR11_energypot_floatb_twist_slag_vp2: mrSges has to be [7x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:11:10
% EndTime: 2019-03-09 04:11:11
% DurationCPUTime: 0.91s
% Computational Cost: add. (547->123), mult. (1205->155), div. (0->0), fcn. (1486->16), ass. (0->59)
t51 = sin(pkin(12));
t57 = cos(pkin(6));
t63 = cos(qJ(1));
t55 = cos(pkin(12));
t61 = sin(qJ(1));
t80 = t61 * t55;
t34 = -t51 * t63 - t57 * t80;
t52 = sin(pkin(7));
t56 = cos(pkin(7));
t53 = sin(pkin(6));
t85 = t53 * t61;
t24 = -t34 * t52 + t56 * t85;
t86 = t53 * t55;
t31 = -t52 * t86 + t56 * t57;
t97 = -m(1) - m(2);
t96 = -m(6) - m(7);
t95 = -m(7) * pkin(11) + mrSges(6,2) - mrSges(7,3);
t59 = sin(qJ(6));
t62 = cos(qJ(6));
t94 = -m(7) * pkin(5) - t62 * mrSges(7,1) + t59 * mrSges(7,2) - mrSges(6,1);
t93 = -m(5) * qJ(4) - t59 * mrSges(7,1) - t62 * mrSges(7,2) + mrSges(4,2) - mrSges(5,3) - mrSges(6,3);
t92 = cos(qJ(3));
t81 = t61 * t51;
t82 = t57 * t63;
t32 = t55 * t82 - t81;
t84 = t53 * t63;
t23 = -t32 * t52 - t56 * t84;
t50 = sin(pkin(13));
t91 = t23 * t50;
t90 = t24 * t50;
t89 = t31 * t50;
t87 = t51 * t53;
t79 = qJ(2) * t53;
t78 = pkin(8) + r_base(3);
t75 = t52 * t92;
t74 = t56 * t92;
t73 = t57 * qJ(2) + t78;
t72 = t63 * pkin(1) + t61 * t79 + r_base(1);
t71 = t53 * t75;
t70 = t61 * pkin(1) - t63 * t79 + r_base(2);
t35 = t55 * t63 - t57 * t81;
t69 = t35 * pkin(2) + t24 * pkin(9) + t72;
t68 = pkin(2) * t87 + t31 * pkin(9) + t73;
t33 = t51 * t82 + t80;
t65 = t33 * pkin(2) + pkin(9) * t23 + t70;
t60 = sin(qJ(3));
t58 = -pkin(10) - qJ(4);
t54 = cos(pkin(13));
t49 = pkin(13) + qJ(5);
t45 = cos(t49);
t44 = sin(t49);
t43 = pkin(4) * t54 + pkin(3);
t22 = t57 * t52 * t60 + (t55 * t56 * t60 + t51 * t92) * t53;
t21 = -t57 * t75 + t60 * t87 - t74 * t86;
t14 = t35 * t92 + (t34 * t56 + t52 * t85) * t60;
t13 = -t34 * t74 + t35 * t60 - t61 * t71;
t12 = t33 * t92 + (t32 * t56 - t52 * t84) * t60;
t11 = -t32 * t74 + t33 * t60 + t63 * t71;
t1 = (-m(1) * r_base(3) - mrSges(1,3) - m(2) * t78 - mrSges(2,3) - m(3) * t73 - t57 * mrSges(3,3) - (t51 * mrSges(3,1) + t55 * mrSges(3,2)) * t53 - m(4) * t68 - t22 * mrSges(4,1) - t31 * mrSges(4,3) - m(5) * (pkin(3) * t22 + t68) - (t22 * t54 + t89) * mrSges(5,1) - (-t22 * t50 + t31 * t54) * mrSges(5,2) + t96 * (pkin(4) * t89 - t21 * t58 + t22 * t43 + t68) + t95 * (t22 * t44 - t31 * t45) + t94 * (t22 * t45 + t31 * t44) + t93 * t21) * g(3) + (-(t12 * t54 + t91) * mrSges(5,1) + mrSges(3,3) * t84 - m(3) * t70 - m(5) * (t12 * pkin(3) + t65) - m(4) * t65 - t61 * mrSges(2,1) - t63 * mrSges(2,2) - (-t12 * t50 + t23 * t54) * mrSges(5,2) - t32 * mrSges(3,2) - t33 * mrSges(3,1) - t23 * mrSges(4,3) - t12 * mrSges(4,1) - mrSges(1,2) + t97 * r_base(2) + t96 * (pkin(4) * t91 - t11 * t58 + t12 * t43 + t65) + t95 * (t12 * t44 - t23 * t45) + t94 * (t12 * t45 + t23 * t44) + t93 * t11) * g(2) + (-mrSges(3,3) * t85 - (t14 * t54 + t90) * mrSges(5,1) - m(3) * t72 - m(5) * (pkin(3) * t14 + t69) - m(4) * t69 + t61 * mrSges(2,2) - t63 * mrSges(2,1) - (-t14 * t50 + t24 * t54) * mrSges(5,2) - t35 * mrSges(3,1) - t34 * mrSges(3,2) - t24 * mrSges(4,3) - t14 * mrSges(4,1) - mrSges(1,1) + t97 * r_base(1) + t96 * (pkin(4) * t90 - t13 * t58 + t14 * t43 + t69) + t95 * (t14 * t44 - t24 * t45) + t94 * (t14 * t45 + t24 * t44) + t93 * t13) * g(1);
U  = t1;
