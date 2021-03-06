% Calculate kinetic energy for
% S6PRRPRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1,theta4]';
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
% Datum: 2019-03-08 21:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRRPRP1_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP1_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP1_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRP1_energykin_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRPRP1_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRPRP1_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRRPRP1_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:22:33
% EndTime: 2019-03-08 21:22:34
% DurationCPUTime: 0.39s
% Computational Cost: add. (408->95), mult. (941->142), div. (0->0), fcn. (663->10), ass. (0->38)
t111 = sin(pkin(11));
t113 = cos(pkin(11));
t116 = sin(qJ(3));
t119 = cos(qJ(3));
t103 = (t111 * t116 - t113 * t119) * qJD(2);
t115 = sin(qJ(5));
t118 = cos(qJ(5));
t117 = sin(qJ(2));
t112 = sin(pkin(6));
t125 = qJD(1) * t112;
t106 = qJD(2) * pkin(8) + t117 * t125;
t114 = cos(pkin(6));
t124 = qJD(1) * t114;
t109 = t119 * t124;
t126 = qJ(4) * qJD(2);
t95 = qJD(3) * pkin(3) + t109 + (-t106 - t126) * t116;
t100 = t119 * t106 + t116 * t124;
t96 = t119 * t126 + t100;
t88 = t111 * t95 + t113 * t96;
t86 = qJD(3) * pkin(9) + t88;
t120 = cos(qJ(2));
t123 = t120 * t125;
t101 = -t123 + qJD(4) + (-pkin(3) * t119 - pkin(2)) * qJD(2);
t104 = (t111 * t119 + t113 * t116) * qJD(2);
t91 = t103 * pkin(4) - t104 * pkin(9) + t101;
t82 = t115 * t91 + t118 * t86;
t87 = -t111 * t96 + t113 * t95;
t81 = -t115 * t86 + t118 * t91;
t85 = -qJD(3) * pkin(4) - t87;
t107 = -qJD(2) * pkin(2) - t123;
t102 = qJD(5) + t103;
t99 = -t106 * t116 + t109;
t98 = qJD(3) * t115 + t104 * t118;
t97 = qJD(3) * t118 - t104 * t115;
t83 = -pkin(5) * t97 + qJD(6) + t85;
t80 = qJ(6) * t97 + t82;
t79 = pkin(5) * t102 - qJ(6) * t98 + t81;
t1 = m(4) * (t100 ^ 2 + t107 ^ 2 + t99 ^ 2) / 0.2e1 + m(5) * (t101 ^ 2 + t87 ^ 2 + t88 ^ 2) / 0.2e1 + m(7) * (t79 ^ 2 + t80 ^ 2 + t83 ^ 2) / 0.2e1 + m(6) * (t81 ^ 2 + t82 ^ 2 + t85 ^ 2) / 0.2e1 + (t101 * mrSges(5,2) - t87 * mrSges(5,3) + Ifges(5,1) * t104 / 0.2e1) * t104 - (-t101 * mrSges(5,1) + t88 * mrSges(5,3) + Ifges(5,4) * t104 - Ifges(5,2) * t103 / 0.2e1) * t103 + (m(3) * (t114 ^ 2 + (t117 ^ 2 + t120 ^ 2) * t112 ^ 2) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 + (t85 * mrSges(6,2) + t83 * mrSges(7,2) - t81 * mrSges(6,3) - t79 * mrSges(7,3) + (Ifges(6,1) / 0.2e1 + Ifges(7,1) / 0.2e1) * t98) * t98 + (-t85 * mrSges(6,1) - t83 * mrSges(7,1) + t82 * mrSges(6,3) + t80 * mrSges(7,3) + (Ifges(6,2) / 0.2e1 + Ifges(7,2) / 0.2e1) * t97 + (Ifges(6,4) + Ifges(7,4)) * t98) * t97 + (t81 * mrSges(6,1) + t79 * mrSges(7,1) - t82 * mrSges(6,2) - t80 * mrSges(7,2) + (Ifges(6,3) / 0.2e1 + Ifges(7,3) / 0.2e1) * t102 + (Ifges(6,5) + Ifges(7,5)) * t98 + (Ifges(6,6) + Ifges(7,6)) * t97) * t102 + (t107 * (-mrSges(4,1) * t119 + mrSges(4,2) * t116) + (Ifges(4,2) * t119 ^ 2 / 0.2e1 + Ifges(3,3) / 0.2e1 + (Ifges(4,4) * t119 + Ifges(4,1) * t116 / 0.2e1) * t116) * qJD(2) + (mrSges(3,1) * t120 - mrSges(3,2) * t117) * t125 + (t100 * t119 - t99 * t116) * mrSges(4,3)) * qJD(2) + (t99 * mrSges(4,1) + t87 * mrSges(5,1) - t100 * mrSges(4,2) - t88 * mrSges(5,2) + Ifges(5,5) * t104 - Ifges(5,6) * t103 + (Ifges(4,3) / 0.2e1 + Ifges(5,3) / 0.2e1) * qJD(3) + (Ifges(4,5) * t116 + Ifges(4,6) * t119) * qJD(2)) * qJD(3);
T  = t1;
