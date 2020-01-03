% Calculate kinetic energy for
% S5RRPRR14
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d4,d5,theta3]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [6x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:40
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RRPRR14_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR14_energykin_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR14_energykin_fixb_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRPRR14_energykin_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR14_energykin_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRPRR14_energykin_fixb_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRPRR14_energykin_fixb_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:35:42
% EndTime: 2019-12-31 20:35:42
% DurationCPUTime: 0.41s
% Computational Cost: add. (630->90), mult. (1503->145), div. (0->0), fcn. (1154->10), ass. (0->42)
t115 = sin(qJ(4));
t118 = cos(qJ(4));
t124 = cos(pkin(5)) * qJD(1);
t109 = qJD(2) + t124;
t110 = sin(pkin(10));
t112 = cos(pkin(10));
t116 = sin(qJ(2));
t111 = sin(pkin(5));
t125 = qJD(1) * t111;
t122 = t116 * t125;
t102 = t109 * t110 + t112 * t122;
t119 = cos(qJ(2));
t121 = t119 * t125;
t100 = (-pkin(2) * t119 - qJ(3) * t116 - pkin(1)) * t125;
t123 = pkin(1) * t124;
t104 = pkin(7) * t121 + t116 * t123;
t99 = qJ(3) * t109 + t104;
t89 = t112 * t100 - t110 * t99;
t84 = -pkin(3) * t121 - pkin(8) * t102 + t89;
t101 = t109 * t112 - t110 * t122;
t90 = t110 * t100 + t112 * t99;
t86 = pkin(8) * t101 + t90;
t81 = t115 * t84 + t118 * t86;
t80 = -t115 * t86 + t118 * t84;
t93 = t101 * t118 - t102 * t115;
t103 = -pkin(7) * t122 + t119 * t123;
t96 = -pkin(2) * t109 + qJD(3) - t103;
t92 = -pkin(3) * t101 + t96;
t120 = qJD(1) ^ 2;
t117 = cos(qJ(5));
t114 = sin(qJ(5));
t105 = qJD(4) - t121;
t94 = t101 * t115 + t102 * t118;
t91 = qJD(5) - t93;
t88 = t105 * t114 + t117 * t94;
t87 = t105 * t117 - t114 * t94;
t82 = -pkin(4) * t93 - pkin(9) * t94 + t92;
t79 = pkin(9) * t105 + t81;
t78 = -pkin(4) * t105 - t80;
t77 = t114 * t82 + t117 * t79;
t76 = -t114 * t79 + t117 * t82;
t1 = m(3) * (pkin(1) ^ 2 * t111 ^ 2 * t120 + t103 ^ 2 + t104 ^ 2) / 0.2e1 + t120 * Ifges(2,3) / 0.2e1 + m(4) * (t89 ^ 2 + t90 ^ 2 + t96 ^ 2) / 0.2e1 + m(5) * (t80 ^ 2 + t81 ^ 2 + t92 ^ 2) / 0.2e1 + m(6) * (t76 ^ 2 + t77 ^ 2 + t78 ^ 2) / 0.2e1 + (t92 * mrSges(5,2) - t80 * mrSges(5,3) + Ifges(5,1) * t94 / 0.2e1) * t94 + (t76 * mrSges(6,1) - t77 * mrSges(6,2) + Ifges(6,3) * t91 / 0.2e1) * t91 + (t103 * mrSges(3,1) - t104 * mrSges(3,2) + Ifges(3,3) * t109 / 0.2e1) * t109 + (t96 * mrSges(4,2) - t89 * mrSges(4,3) + Ifges(4,1) * t102 / 0.2e1) * t102 + (-t92 * mrSges(5,1) + t81 * mrSges(5,3) + Ifges(5,4) * t94 + Ifges(5,2) * t93 / 0.2e1) * t93 + (t78 * mrSges(6,2) - t76 * mrSges(6,3) + Ifges(6,5) * t91 + Ifges(6,1) * t88 / 0.2e1) * t88 + (-t78 * mrSges(6,1) + t77 * mrSges(6,3) + Ifges(6,4) * t88 + Ifges(6,6) * t91 + Ifges(6,2) * t87 / 0.2e1) * t87 + (t80 * mrSges(5,1) - t81 * mrSges(5,2) + Ifges(5,5) * t94 + Ifges(5,6) * t93 + Ifges(5,3) * t105 / 0.2e1) * t105 + ((-t103 * mrSges(3,3) + t109 * Ifges(3,5) + (-pkin(1) * mrSges(3,2) + Ifges(3,1) * t116 / 0.2e1) * t125) * t116 + (-t89 * mrSges(4,1) + t90 * mrSges(4,2) + t104 * mrSges(3,3) - t102 * Ifges(4,5) + t109 * Ifges(3,6) + (pkin(1) * mrSges(3,1) + Ifges(3,4) * t116 + (Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1) * t119) * t125) * t119) * t125 + (-Ifges(4,6) * t121 - t96 * mrSges(4,1) + t90 * mrSges(4,3) + Ifges(4,4) * t102 + Ifges(4,2) * t101 / 0.2e1) * t101;
T = t1;
