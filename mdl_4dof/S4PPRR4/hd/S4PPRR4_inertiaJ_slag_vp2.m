% Calculate joint inertia matrix for
% S4PPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,d4,theta1,theta2]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [5x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% Mq [4x4]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:18
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S4PPRR4_inertiaJ_slag_vp2(qJ, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRR4_inertiaJ_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PPRR4_inertiaJ_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PPRR4_inertiaJ_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PPRR4_inertiaJ_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PPRR4_inertiaJ_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:18:27
% EndTime: 2019-12-31 16:18:27
% DurationCPUTime: 0.10s
% Computational Cost: add. (49->28), mult. (125->41), div. (0->0), fcn. (92->6), ass. (0->17)
t11 = sin(qJ(4));
t13 = cos(qJ(4));
t8 = t13 ^ 2;
t18 = t11 ^ 2 + t8;
t20 = m(5) * t18;
t10 = cos(pkin(7));
t12 = sin(qJ(3));
t17 = cos(qJ(3));
t9 = sin(pkin(7));
t2 = -t17 * t10 + t12 * t9;
t19 = t2 ^ 2;
t16 = mrSges(5,3) * t18;
t15 = -mrSges(5,1) * t11 - mrSges(5,2) * t13;
t5 = -t13 * mrSges(5,1) + t11 * mrSges(5,2);
t4 = t12 * t10 + t17 * t9;
t1 = t4 ^ 2;
t3 = [m(2) + m(3) * (t10 ^ 2 + t9 ^ 2) + m(4) * (t1 + t19) + m(5) * (t18 * t1 + t19); 0; m(3) + m(4) + t20; (pkin(5) * t20 - mrSges(4,2) + t16) * t4 + (-m(5) * pkin(3) - mrSges(4,1) + t5) * t2; 0; Ifges(4,3) + Ifges(5,2) * t8 + m(5) * (t18 * pkin(5) ^ 2 + pkin(3) ^ 2) - 0.2e1 * pkin(3) * t5 + (Ifges(5,1) * t11 + 0.2e1 * Ifges(5,4) * t13) * t11 + 0.2e1 * pkin(5) * t16; t15 * t4; -t5; Ifges(5,5) * t11 + Ifges(5,6) * t13 + t15 * pkin(5); Ifges(5,3);];
%% Postprocessing: Reshape Output
% From vec2symmat_4_matlab.m
res = [t3(1), t3(2), t3(4), t3(7); t3(2), t3(3), t3(5), t3(8); t3(4), t3(5), t3(6), t3(9); t3(7), t3(8), t3(9), t3(10);];
Mq = res;
