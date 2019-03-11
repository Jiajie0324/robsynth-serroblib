% Calculate kinetic energy for
% S6RRRPPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha4,d1,d2,d3,theta4]';
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
% Datum: 2019-03-09 15:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRPPP1_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPP1_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPP1_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPP1_energykin_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPP1_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPPP1_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPPP1_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:14:24
% EndTime: 2019-03-09 15:14:24
% DurationCPUTime: 0.54s
% Computational Cost: add. (856->111), mult. (1865->153), div. (0->0), fcn. (1376->8), ass. (0->42)
t126 = pkin(8) * mrSges(3,3);
t125 = pkin(4) + qJ(6);
t113 = cos(qJ(2));
t122 = qJD(1) * t113;
t104 = pkin(8) * t122 + qJD(2) * pkin(9);
t110 = sin(qJ(3));
t112 = cos(qJ(3));
t111 = sin(qJ(2));
t98 = (-pkin(2) * t113 - pkin(9) * t111 - pkin(1)) * qJD(1);
t93 = t112 * t104 + t110 * t98;
t124 = cos(pkin(10));
t121 = t111 * qJD(1);
t101 = qJD(2) * t110 + t112 * t121;
t123 = qJ(4) * t101;
t107 = sin(pkin(10));
t108 = sin(pkin(6));
t109 = cos(pkin(6));
t100 = qJD(2) * t112 - t110 * t121;
t105 = qJD(3) - t122;
t118 = t100 * t109 + t105 * t108;
t85 = qJ(4) * t118 + t93;
t92 = -t104 * t110 + t112 * t98;
t86 = pkin(3) * t105 - t109 * t123 + t92;
t103 = -qJD(2) * pkin(2) + pkin(8) * t121;
t91 = -pkin(3) * t100 - t108 * t123 + t103;
t80 = t124 * t85 + (t108 * t91 + t109 * t86) * t107;
t120 = t108 * t124;
t119 = t109 * t124;
t81 = -t108 * t86 + t109 * t91 + qJD(4);
t94 = -t100 * t108 + t105 * t109;
t78 = -qJ(5) * t94 - t80;
t88 = t101 * t124 + t107 * t118;
t117 = -qJ(5) * t88 + t81;
t79 = -t107 * t85 + t119 * t86 + t120 * t91;
t116 = qJD(5) - t79;
t87 = -t100 * t119 + t101 * t107 - t105 * t120;
t77 = -t94 * pkin(4) + t116;
t76 = pkin(4) * t87 + t117;
t75 = -pkin(5) * t87 + qJD(6) - t78;
t74 = t125 * t87 + t117;
t73 = t88 * pkin(5) - t125 * t94 + t116;
t1 = m(6) * (t76 ^ 2 + t77 ^ 2 + t78 ^ 2) / 0.2e1 + m(5) * (t79 ^ 2 + t80 ^ 2 + t81 ^ 2) / 0.2e1 + m(7) * (t73 ^ 2 + t74 ^ 2 + t75 ^ 2) / 0.2e1 + Ifges(3,3) * qJD(2) ^ 2 / 0.2e1 + m(4) * (t103 ^ 2 + t92 ^ 2 + t93 ^ 2) / 0.2e1 + (t92 * mrSges(4,1) - t93 * mrSges(4,2) + Ifges(4,3) * t105 / 0.2e1) * t105 + (t103 * mrSges(4,2) - t92 * mrSges(4,3) + Ifges(4,5) * t105 + Ifges(4,1) * t101 / 0.2e1) * t101 + (-t103 * mrSges(4,1) + t93 * mrSges(4,3) + Ifges(4,4) * t101 + Ifges(4,6) * t105 + Ifges(4,2) * t100 / 0.2e1) * t100 + (t79 * mrSges(5,1) - t80 * mrSges(5,2) + t77 * mrSges(6,2) + t75 * mrSges(7,2) - t78 * mrSges(6,3) - t73 * mrSges(7,3) + (Ifges(5,3) / 0.2e1 + Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t94) * t94 + (t77 * mrSges(6,1) + t73 * mrSges(7,1) + t81 * mrSges(5,2) - t74 * mrSges(7,2) - t79 * mrSges(5,3) - t76 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(5,1) / 0.2e1 + Ifges(6,2) / 0.2e1) * t88 + (-Ifges(6,4) + Ifges(5,5) + Ifges(7,5)) * t94) * t88 + (t81 * mrSges(5,1) + t78 * mrSges(6,1) - t75 * mrSges(7,1) - t76 * mrSges(6,2) - t80 * mrSges(5,3) + t74 * mrSges(7,3) + (Ifges(5,2) / 0.2e1 + Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t87 + (Ifges(7,4) + Ifges(6,5) - Ifges(5,6)) * t94 + (-Ifges(5,4) - Ifges(6,6) + Ifges(7,6)) * t88) * t87 + ((Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t111 ^ 2 + t113 ^ 2) * pkin(8) ^ 2) / 0.2e1 + (pkin(1) * mrSges(3,1) + (Ifges(3,2) / 0.2e1 + t126) * t113) * t113 + (-pkin(1) * mrSges(3,2) + Ifges(3,4) * t113 + (Ifges(3,1) / 0.2e1 + t126) * t111) * t111) * qJD(1) + ((-pkin(8) * mrSges(3,2) + Ifges(3,6)) * t113 + (-pkin(8) * mrSges(3,1) + Ifges(3,5)) * t111) * qJD(2)) * qJD(1);
T  = t1;
