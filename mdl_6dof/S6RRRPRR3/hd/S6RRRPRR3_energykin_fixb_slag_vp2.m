% Calculate kinetic energy for
% S6RRRPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6]';
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
% Datum: 2019-03-09 18:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRPRR3_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR3_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR3_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRR3_energykin_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRR3_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPRR3_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPRR3_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 18:10:48
% EndTime: 2019-03-09 18:10:49
% DurationCPUTime: 0.56s
% Computational Cost: add. (620->107), mult. (1299->155), div. (0->0), fcn. (890->8), ass. (0->41)
t127 = -pkin(8) - pkin(7);
t126 = pkin(7) * mrSges(3,3);
t125 = cos(qJ(3));
t114 = sin(qJ(5));
t118 = cos(qJ(5));
t115 = sin(qJ(3));
t116 = sin(qJ(2));
t119 = cos(qJ(2));
t101 = (t115 * t119 + t116 * t125) * qJD(1);
t111 = qJD(2) + qJD(3);
t124 = qJD(1) * t116;
t104 = qJD(2) * pkin(2) + t124 * t127;
t123 = t119 * qJD(1);
t105 = t127 * t123;
t95 = t104 * t125 + t115 * t105;
t122 = qJD(4) - t95;
t83 = -t101 * pkin(9) + (-pkin(3) - pkin(4)) * t111 + t122;
t100 = t115 * t124 - t123 * t125;
t96 = t115 * t104 - t125 * t105;
t92 = t111 * qJ(4) + t96;
t86 = pkin(9) * t100 + t92;
t81 = t114 * t83 + t118 * t86;
t106 = -qJD(1) * pkin(1) - pkin(2) * t123;
t89 = t100 * pkin(3) - t101 * qJ(4) + t106;
t80 = -t114 * t86 + t118 * t83;
t93 = t100 * t118 - t101 * t114;
t84 = -pkin(4) * t100 - t89;
t117 = cos(qJ(6));
t113 = sin(qJ(6));
t110 = qJD(5) - t111;
t94 = t100 * t114 + t101 * t118;
t91 = qJD(6) - t93;
t90 = -t111 * pkin(3) + t122;
t88 = t110 * t113 + t117 * t94;
t87 = t110 * t117 - t113 * t94;
t79 = pkin(10) * t110 + t81;
t78 = -pkin(5) * t110 - t80;
t77 = -pkin(5) * t93 - pkin(10) * t94 + t84;
t76 = t113 * t77 + t117 * t79;
t75 = -t113 * t79 + t117 * t77;
t1 = Ifges(3,3) * qJD(2) ^ 2 / 0.2e1 + m(4) * (t106 ^ 2 + t95 ^ 2 + t96 ^ 2) / 0.2e1 + m(5) * (t89 ^ 2 + t90 ^ 2 + t92 ^ 2) / 0.2e1 + m(6) * (t80 ^ 2 + t81 ^ 2 + t84 ^ 2) / 0.2e1 + m(7) * (t75 ^ 2 + t76 ^ 2 + t78 ^ 2) / 0.2e1 + (t84 * mrSges(6,2) - t80 * mrSges(6,3) + Ifges(6,1) * t94 / 0.2e1) * t94 + (t75 * mrSges(7,1) - t76 * mrSges(7,2) + Ifges(7,3) * t91 / 0.2e1) * t91 + (-t84 * mrSges(6,1) + t81 * mrSges(6,3) + Ifges(6,4) * t94 + Ifges(6,2) * t93 / 0.2e1) * t93 + (t78 * mrSges(7,2) - t75 * mrSges(7,3) + Ifges(7,5) * t91 + Ifges(7,1) * t88 / 0.2e1) * t88 + (-t78 * mrSges(7,1) + t76 * mrSges(7,3) + Ifges(7,4) * t88 + Ifges(7,6) * t91 + Ifges(7,2) * t87 / 0.2e1) * t87 + (t80 * mrSges(6,1) - t81 * mrSges(6,2) + Ifges(6,5) * t94 + Ifges(6,6) * t93 + Ifges(6,3) * t110 / 0.2e1) * t110 + (t95 * mrSges(4,1) - t90 * mrSges(5,1) - t96 * mrSges(4,2) + t92 * mrSges(5,3) + (Ifges(4,3) / 0.2e1 + Ifges(5,2) / 0.2e1) * t111) * t111 + (t106 * mrSges(4,2) + t90 * mrSges(5,2) - t95 * mrSges(4,3) - t89 * mrSges(5,3) + (Ifges(4,1) / 0.2e1 + Ifges(5,1) / 0.2e1) * t101 + (Ifges(5,4) + Ifges(4,5)) * t111) * t101 + (t106 * mrSges(4,1) + t89 * mrSges(5,1) - t92 * mrSges(5,2) - t96 * mrSges(4,3) + (Ifges(4,2) / 0.2e1 + Ifges(5,3) / 0.2e1) * t100 + (-Ifges(4,6) + Ifges(5,6)) * t111 + (-Ifges(4,4) + Ifges(5,5)) * t101) * t100 + ((Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t116 ^ 2 + t119 ^ 2) * pkin(7) ^ 2) / 0.2e1 + (pkin(1) * mrSges(3,1) + (Ifges(3,2) / 0.2e1 + t126) * t119) * t119 + (-pkin(1) * mrSges(3,2) + Ifges(3,4) * t119 + (Ifges(3,1) / 0.2e1 + t126) * t116) * t116) * qJD(1) + ((-pkin(7) * mrSges(3,2) + Ifges(3,6)) * t119 + (-pkin(7) * mrSges(3,1) + Ifges(3,5)) * t116) * qJD(2)) * qJD(1);
T  = t1;
