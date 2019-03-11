% Calculate kinetic energy for
% S6PRRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d6,theta1,theta4]';
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
% Datum: 2019-03-08 21:07
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRRPPR2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPPR2_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPPR2_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPPR2_energykin_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRPPR2_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRPPR2_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRRPPR2_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:03:52
% EndTime: 2019-03-08 21:03:52
% DurationCPUTime: 0.36s
% Computational Cost: add. (352->96), mult. (817->143), div. (0->0), fcn. (553->10), ass. (0->41)
t127 = pkin(4) + pkin(9);
t110 = sin(pkin(11));
t126 = cos(pkin(11));
t115 = sin(qJ(2));
t111 = sin(pkin(6));
t125 = qJD(1) * t111;
t104 = qJD(2) * pkin(8) + t115 * t125;
t117 = cos(qJ(3));
t112 = cos(pkin(6));
t124 = qJD(1) * t112;
t108 = t117 * t124;
t114 = sin(qJ(3));
t93 = qJD(3) * pkin(3) + t108 + (-qJ(4) * qJD(2) - t104) * t114;
t123 = t117 * qJD(2);
t98 = t117 * t104 + t114 * t124;
t94 = qJ(4) * t123 + t98;
t88 = t110 * t93 + t126 * t94;
t118 = cos(qJ(2));
t122 = t118 * t125;
t85 = -qJD(3) * qJ(5) - t88;
t87 = -t110 * t94 + t126 * t93;
t121 = qJD(5) - t87;
t102 = (t110 * t117 + t114 * t126) * qJD(2);
t99 = -t122 + qJD(4) + (-pkin(3) * t117 - pkin(2)) * qJD(2);
t120 = -qJ(5) * t102 + t99;
t116 = cos(qJ(6));
t113 = sin(qJ(6));
t105 = -qJD(2) * pkin(2) - t122;
t101 = qJD(2) * t110 * t114 - t123 * t126;
t100 = qJD(6) + t102;
t97 = -t104 * t114 + t108;
t96 = qJD(3) * t116 + t101 * t113;
t95 = -qJD(3) * t113 + t101 * t116;
t89 = pkin(4) * t101 + t120;
t86 = t101 * t127 + t120;
t84 = -qJD(3) * pkin(4) + t121;
t83 = -pkin(5) * t101 - t85;
t82 = t102 * pkin(5) - qJD(3) * t127 + t121;
t81 = t113 * t82 + t116 * t86;
t80 = -t113 * t86 + t116 * t82;
t1 = m(4) * (t105 ^ 2 + t97 ^ 2 + t98 ^ 2) / 0.2e1 + m(7) * (t80 ^ 2 + t81 ^ 2 + t83 ^ 2) / 0.2e1 + m(6) * (t84 ^ 2 + t85 ^ 2 + t89 ^ 2) / 0.2e1 + m(5) * (t87 ^ 2 + t88 ^ 2 + t99 ^ 2) / 0.2e1 + (t83 * mrSges(7,2) - t80 * mrSges(7,3) + Ifges(7,1) * t96 / 0.2e1) * t96 + (-t83 * mrSges(7,1) + t81 * mrSges(7,3) + Ifges(7,4) * t96 + Ifges(7,2) * t95 / 0.2e1) * t95 + (m(3) * (t112 ^ 2 + (t115 ^ 2 + t118 ^ 2) * t111 ^ 2) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 + (t80 * mrSges(7,1) - t81 * mrSges(7,2) + Ifges(7,5) * t96 + Ifges(7,6) * t95 + Ifges(7,3) * t100 / 0.2e1) * t100 + (t84 * mrSges(6,1) + t99 * mrSges(5,2) - t87 * mrSges(5,3) - t89 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(6,2) / 0.2e1) * t102) * t102 + (t99 * mrSges(5,1) + t85 * mrSges(6,1) - t89 * mrSges(6,2) - t88 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t101 + (-Ifges(5,4) - Ifges(6,6)) * t102) * t101 + (t105 * (-mrSges(4,1) * t117 + mrSges(4,2) * t114) + (Ifges(3,3) / 0.2e1 + Ifges(4,2) * t117 ^ 2 / 0.2e1 + (Ifges(4,4) * t117 + Ifges(4,1) * t114 / 0.2e1) * t114) * qJD(2) + (mrSges(3,1) * t118 - mrSges(3,2) * t115) * t125 + (-t97 * t114 + t98 * t117) * mrSges(4,3)) * qJD(2) + (t97 * mrSges(4,1) + t87 * mrSges(5,1) - t98 * mrSges(4,2) - t88 * mrSges(5,2) + t84 * mrSges(6,2) - t85 * mrSges(6,3) + (Ifges(4,3) / 0.2e1 + Ifges(5,3) / 0.2e1 + Ifges(6,1) / 0.2e1) * qJD(3) + (-Ifges(6,4) + Ifges(5,5)) * t102 + (Ifges(6,5) - Ifges(5,6)) * t101 + (Ifges(4,5) * t114 + Ifges(4,6) * t117) * qJD(2)) * qJD(3);
T  = t1;
