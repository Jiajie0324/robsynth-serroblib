% Calculate kinetic energy for
% S6RRPPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 09:33
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRPPRR9_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR9_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRR9_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR9_energykin_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPPRR9_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPPRR9_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPPRR9_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 09:28:14
% EndTime: 2019-03-09 09:28:14
% DurationCPUTime: 0.42s
% Computational Cost: add. (474->110), mult. (1086->151), div. (0->0), fcn. (722->8), ass. (0->42)
t113 = sin(qJ(5));
t116 = cos(qJ(5));
t124 = cos(pkin(6)) * qJD(1);
t109 = qJD(2) + t124;
t117 = cos(qJ(2));
t110 = sin(pkin(6));
t125 = qJD(1) * t110;
t121 = t117 * t125;
t114 = sin(qJ(2));
t123 = pkin(1) * t124;
t99 = pkin(8) * t121 + t114 * t123;
t93 = -t109 * qJ(3) - t99;
t90 = pkin(3) * t121 + qJD(4) - t93;
t84 = pkin(4) * t121 - pkin(9) * t109 + t90;
t120 = -pkin(1) + (-pkin(2) - qJ(4)) * t117;
t87 = ((pkin(9) - qJ(3)) * t114 + t120) * t125;
t80 = t113 * t84 + t116 * t87;
t126 = qJ(3) * t114;
t122 = t114 * t125;
t98 = -pkin(8) * t122 + t117 * t123;
t92 = -t109 * pkin(2) + qJD(3) - t98;
t79 = -t113 * t87 + t116 * t84;
t119 = t109 * qJ(4) - t92;
t96 = -t109 * t113 + t116 * t122;
t83 = (-pkin(3) - pkin(4)) * t122 + t119;
t118 = qJD(1) ^ 2;
t115 = cos(qJ(6));
t112 = sin(qJ(6));
t100 = qJD(5) + t121;
t97 = t109 * t116 + t113 * t122;
t95 = qJD(6) - t96;
t94 = (-pkin(2) * t117 - pkin(1) - t126) * t125;
t91 = (t120 - t126) * t125;
t89 = t100 * t112 + t115 * t97;
t88 = t100 * t115 - t112 * t97;
t85 = pkin(3) * t122 - t119;
t81 = -pkin(5) * t96 - pkin(10) * t97 + t83;
t78 = pkin(10) * t100 + t80;
t77 = -pkin(5) * t100 - t79;
t76 = t112 * t81 + t115 * t78;
t75 = -t112 * t78 + t115 * t81;
t1 = t118 * Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 * t110 ^ 2 * t118 + t98 ^ 2 + t99 ^ 2) / 0.2e1 + m(5) * (t85 ^ 2 + t90 ^ 2 + t91 ^ 2) / 0.2e1 + m(4) * (t92 ^ 2 + t93 ^ 2 + t94 ^ 2) / 0.2e1 + m(6) * (t79 ^ 2 + t80 ^ 2 + t83 ^ 2) / 0.2e1 + m(7) * (t75 ^ 2 + t76 ^ 2 + t77 ^ 2) / 0.2e1 + (t83 * mrSges(6,2) - t79 * mrSges(6,3) + Ifges(6,1) * t97 / 0.2e1) * t97 + (t75 * mrSges(7,1) - t76 * mrSges(7,2) + Ifges(7,3) * t95 / 0.2e1) * t95 + (-t83 * mrSges(6,1) + t80 * mrSges(6,3) + Ifges(6,4) * t97 + Ifges(6,2) * t96 / 0.2e1) * t96 + (t77 * mrSges(7,2) - t75 * mrSges(7,3) + Ifges(7,5) * t95 + Ifges(7,1) * t89 / 0.2e1) * t89 + (-t77 * mrSges(7,1) + t76 * mrSges(7,3) + Ifges(7,4) * t89 + Ifges(7,6) * t95 + Ifges(7,2) * t88 / 0.2e1) * t88 + (t79 * mrSges(6,1) - t80 * mrSges(6,2) + Ifges(6,5) * t97 + Ifges(6,6) * t96 + Ifges(6,3) * t100 / 0.2e1) * t100 + ((-t93 * mrSges(4,1) + t90 * mrSges(5,1) + t94 * mrSges(4,2) + t99 * mrSges(3,3) - t91 * mrSges(5,3) + (pkin(1) * mrSges(3,1) + (Ifges(4,3) / 0.2e1 + Ifges(5,2) / 0.2e1 + Ifges(3,2) / 0.2e1) * t117) * t125) * t117 + (t92 * mrSges(4,1) + t85 * mrSges(5,1) - t91 * mrSges(5,2) - t98 * mrSges(3,3) - t94 * mrSges(4,3) + (-pkin(1) * mrSges(3,2) + (Ifges(4,2) / 0.2e1 + Ifges(5,3) / 0.2e1 + Ifges(3,1) / 0.2e1) * t114 + (Ifges(3,4) + Ifges(4,6) - Ifges(5,6)) * t117) * t125) * t114) * t125 + (t98 * mrSges(3,1) - t99 * mrSges(3,2) + t92 * mrSges(4,2) + t90 * mrSges(5,2) - t93 * mrSges(4,3) - t85 * mrSges(5,3) + (Ifges(5,1) / 0.2e1 + Ifges(3,3) / 0.2e1 + Ifges(4,1) / 0.2e1) * t109 + ((-Ifges(5,4) - Ifges(4,5) + Ifges(3,6)) * t117 + (-Ifges(4,4) + Ifges(3,5) + Ifges(5,5)) * t114) * t125) * t109;
T  = t1;
