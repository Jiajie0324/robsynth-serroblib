% Calculate kinetic energy for
% S6RPPRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta2,theta3]';
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
% Datum: 2019-03-09 02:21
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPPRRR2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR2_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR2_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPPRRR2_energykin_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRR2_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPRRR2_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPPRRR2_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:20:05
% EndTime: 2019-03-09 02:20:05
% DurationCPUTime: 0.48s
% Computational Cost: add. (513->93), mult. (1154->149), div. (0->0), fcn. (796->10), ass. (0->42)
t127 = m(3) / 0.2e1;
t118 = sin(qJ(5));
t121 = cos(qJ(5));
t119 = sin(qJ(4));
t122 = cos(qJ(4));
t114 = sin(pkin(10));
t109 = (pkin(1) * t114 + qJ(3)) * qJD(1);
t115 = cos(pkin(11));
t112 = t115 * qJD(2);
t113 = sin(pkin(11));
t96 = t112 + (-pkin(7) * qJD(1) - t109) * t113;
t101 = t113 * qJD(2) + t115 * t109;
t126 = qJD(1) * t115;
t97 = pkin(7) * t126 + t101;
t87 = t119 * t96 + t122 * t97;
t85 = qJD(4) * pkin(8) + t87;
t116 = cos(pkin(10));
t125 = -pkin(1) * t116 - pkin(2);
t104 = qJD(3) + (-pkin(3) * t115 + t125) * qJD(1);
t105 = -t119 * t113 * qJD(1) + t122 * t126;
t106 = (t113 * t122 + t115 * t119) * qJD(1);
t92 = -pkin(4) * t105 - pkin(8) * t106 + t104;
t81 = t118 * t92 + t121 * t85;
t80 = -t118 * t85 + t121 * t92;
t86 = -t119 * t97 + t122 * t96;
t84 = -qJD(4) * pkin(4) - t86;
t103 = qJD(5) - t105;
t120 = cos(qJ(6));
t117 = sin(qJ(6));
t108 = t125 * qJD(1) + qJD(3);
t102 = qJD(6) + t103;
t100 = -t109 * t113 + t112;
t99 = qJD(4) * t118 + t106 * t121;
t98 = qJD(4) * t121 - t106 * t118;
t89 = t117 * t98 + t120 * t99;
t88 = -t117 * t99 + t120 * t98;
t82 = -pkin(5) * t98 + t84;
t79 = pkin(9) * t98 + t81;
t78 = pkin(5) * t103 - pkin(9) * t99 + t80;
t77 = t117 * t78 + t120 * t79;
t76 = -t117 * t79 + t120 * t78;
t1 = qJD(2) ^ 2 * t127 + m(4) * (t100 ^ 2 + t101 ^ 2 + t108 ^ 2) / 0.2e1 + m(5) * (t104 ^ 2 + t86 ^ 2 + t87 ^ 2) / 0.2e1 + m(7) * (t76 ^ 2 + t77 ^ 2 + t82 ^ 2) / 0.2e1 + m(6) * (t80 ^ 2 + t81 ^ 2 + t84 ^ 2) / 0.2e1 + (t84 * mrSges(6,2) - t80 * mrSges(6,3) + Ifges(6,1) * t99 / 0.2e1) * t99 + (t82 * mrSges(7,2) - t76 * mrSges(7,3) + Ifges(7,1) * t89 / 0.2e1) * t89 + (t104 * mrSges(5,2) - t86 * mrSges(5,3) + Ifges(5,1) * t106 / 0.2e1) * t106 + (-t84 * mrSges(6,1) + t81 * mrSges(6,3) + Ifges(6,4) * t99 + Ifges(6,2) * t98 / 0.2e1) * t98 + (-t82 * mrSges(7,1) + t77 * mrSges(7,3) + Ifges(7,4) * t89 + Ifges(7,2) * t88 / 0.2e1) * t88 + (-t104 * mrSges(5,1) + t87 * mrSges(5,3) + Ifges(5,4) * t106 + Ifges(5,2) * t105 / 0.2e1) * t105 + (t80 * mrSges(6,1) - t81 * mrSges(6,2) + Ifges(6,5) * t99 + Ifges(6,6) * t98 + Ifges(6,3) * t103 / 0.2e1) * t103 + (t76 * mrSges(7,1) - t77 * mrSges(7,2) + Ifges(7,5) * t89 + Ifges(7,6) * t88 + Ifges(7,3) * t102 / 0.2e1) * t102 + (t86 * mrSges(5,1) - t87 * mrSges(5,2) + Ifges(5,5) * t106 + Ifges(5,6) * t105 + Ifges(5,3) * qJD(4) / 0.2e1) * qJD(4) + (t108 * (-mrSges(4,1) * t115 + mrSges(4,2) * t113) + (-t100 * t113 + t101 * t115) * mrSges(4,3) + (Ifges(3,3) / 0.2e1 + Ifges(2,3) / 0.2e1 + (t116 * mrSges(3,1) - t114 * mrSges(3,2) + (t114 ^ 2 + t116 ^ 2) * t127 * pkin(1)) * pkin(1) + Ifges(4,2) * t115 ^ 2 / 0.2e1 + (Ifges(4,4) * t115 + Ifges(4,1) * t113 / 0.2e1) * t113) * qJD(1)) * qJD(1);
T  = t1;
