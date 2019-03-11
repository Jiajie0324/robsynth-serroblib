% Calculate joint inertia matrix for
% S4PPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3,d4,theta1]';
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
% Datum: 2019-03-08 18:16
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S4PPRR1_inertiaJ_slag_vp2(qJ, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(6,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRR1_inertiaJ_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PPRR1_inertiaJ_slag_vp2: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PPRR1_inertiaJ_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PPRR1_inertiaJ_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PPRR1_inertiaJ_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:15:38
% EndTime: 2019-03-08 18:15:38
% DurationCPUTime: 0.07s
% Computational Cost: add. (28->20), mult. (62->27), div. (0->0), fcn. (44->4), ass. (0->9)
t4 = sin(qJ(4));
t5 = sin(qJ(3));
t6 = cos(qJ(4));
t7 = cos(qJ(3));
t2 = -t4 * t5 + t6 * t7;
t3 = t4 * t7 + t5 * t6;
t10 = t2 * mrSges(5,1) - t3 * mrSges(5,2);
t9 = (mrSges(5,1) * t6 - mrSges(5,2) * t4) * pkin(3);
t1 = [m(2) + m(3) + m(4) + m(5); 0; m(3) + m(4) * (t5 ^ 2 + t7 ^ 2) + m(5) * (t2 ^ 2 + t3 ^ 2); 0; t7 * mrSges(4,1) - t5 * mrSges(4,2) + m(5) * (t2 * t6 + t3 * t4) * pkin(3) + t10; Ifges(4,3) + Ifges(5,3) + m(5) * (t4 ^ 2 + t6 ^ 2) * pkin(3) ^ 2 + 0.2e1 * t9; 0; t10; Ifges(5,3) + t9; Ifges(5,3);];
%% Postprocessing: Reshape Output
% From vec2symmat_4_matlab.m
res = [t1(1) t1(2) t1(4) t1(7); t1(2) t1(3) t1(5) t1(8); t1(4) t1(5) t1(6) t1(9); t1(7) t1(8) t1(9) t1(10);];
Mq  = res;
