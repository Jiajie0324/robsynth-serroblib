% Calculate kinetic energy for
% S6PRRRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d5,d6,theta1]';
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
% Datum: 2019-03-09 00:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRRRRR2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR2_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRR2_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRR2_energykin_fixb_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRRR2_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRRRR2_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRRRRR2_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 00:42:20
% EndTime: 2019-03-09 00:42:21
% DurationCPUTime: 0.48s
% Computational Cost: add. (592->99), mult. (1231->160), div. (0->0), fcn. (907->12), ass. (0->46)
t137 = cos(qJ(3));
t138 = cos(qJ(2));
t127 = sin(pkin(6));
t143 = qJD(1) * t127;
t140 = t138 * t143;
t115 = -t140 + (-pkin(3) * t137 - pkin(2)) * qJD(2);
t131 = sin(qJ(4));
t132 = sin(qJ(3));
t136 = cos(qJ(4));
t141 = qJD(2) * t137;
t117 = -t131 * t132 * qJD(2) + t136 * t141;
t118 = (t131 * t137 + t132 * t136) * qJD(2);
t104 = -pkin(4) * t117 - pkin(10) * t118 + t115;
t130 = sin(qJ(5));
t135 = cos(qJ(5));
t126 = qJD(3) + qJD(4);
t133 = sin(qJ(2));
t120 = qJD(2) * pkin(8) + t133 * t143;
t128 = cos(pkin(6));
t142 = qJD(1) * t128;
t123 = t137 * t142;
t108 = qJD(3) * pkin(3) + t123 + (-pkin(9) * qJD(2) - t120) * t132;
t113 = t137 * t120 + t132 * t142;
t109 = pkin(9) * t141 + t113;
t99 = t131 * t108 + t136 * t109;
t97 = pkin(10) * t126 + t99;
t93 = t130 * t104 + t135 * t97;
t92 = t135 * t104 - t130 * t97;
t98 = t108 * t136 - t131 * t109;
t96 = -pkin(4) * t126 - t98;
t116 = qJD(5) - t117;
t134 = cos(qJ(6));
t129 = sin(qJ(6));
t121 = -qJD(2) * pkin(2) - t140;
t114 = qJD(6) + t116;
t112 = -t120 * t132 + t123;
t111 = t118 * t135 + t126 * t130;
t110 = -t118 * t130 + t126 * t135;
t101 = t110 * t129 + t111 * t134;
t100 = t110 * t134 - t111 * t129;
t94 = -pkin(5) * t110 + t96;
t91 = pkin(11) * t110 + t93;
t90 = pkin(5) * t116 - pkin(11) * t111 + t92;
t89 = t129 * t90 + t134 * t91;
t88 = -t129 * t91 + t134 * t90;
t1 = m(5) * (t115 ^ 2 + t98 ^ 2 + t99 ^ 2) / 0.2e1 + m(7) * (t88 ^ 2 + t89 ^ 2 + t94 ^ 2) / 0.2e1 + m(6) * (t92 ^ 2 + t93 ^ 2 + t96 ^ 2) / 0.2e1 + m(4) * (t112 ^ 2 + t113 ^ 2 + t121 ^ 2) / 0.2e1 + (t98 * mrSges(5,1) - t99 * mrSges(5,2) + Ifges(5,3) * t126 / 0.2e1) * t126 + (t92 * mrSges(6,1) - t93 * mrSges(6,2) + Ifges(6,3) * t116 / 0.2e1) * t116 + (t88 * mrSges(7,1) - t89 * mrSges(7,2) + Ifges(7,3) * t114 / 0.2e1) * t114 + (t112 * mrSges(4,1) - t113 * mrSges(4,2) + Ifges(4,3) * qJD(3) / 0.2e1) * qJD(3) + (t115 * mrSges(5,2) - t98 * mrSges(5,3) + Ifges(5,5) * t126 + Ifges(5,1) * t118 / 0.2e1) * t118 + (t96 * mrSges(6,2) - t92 * mrSges(6,3) + Ifges(6,5) * t116 + Ifges(6,1) * t111 / 0.2e1) * t111 + (t94 * mrSges(7,2) - t88 * mrSges(7,3) + Ifges(7,5) * t114 + Ifges(7,1) * t101 / 0.2e1) * t101 + (m(3) * (t128 ^ 2 + (t133 ^ 2 + t138 ^ 2) * t127 ^ 2) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 + (-t115 * mrSges(5,1) + t99 * mrSges(5,3) + Ifges(5,4) * t118 + Ifges(5,6) * t126 + Ifges(5,2) * t117 / 0.2e1) * t117 + (-t96 * mrSges(6,1) + t93 * mrSges(6,3) + Ifges(6,4) * t111 + Ifges(6,6) * t116 + Ifges(6,2) * t110 / 0.2e1) * t110 + (-t94 * mrSges(7,1) + t89 * mrSges(7,3) + Ifges(7,4) * t101 + Ifges(7,6) * t114 + Ifges(7,2) * t100 / 0.2e1) * t100 + (Ifges(3,3) * qJD(2) / 0.2e1 + (mrSges(3,1) * t138 - mrSges(3,2) * t133) * t143 + (-t121 * mrSges(4,1) + t113 * mrSges(4,3) + Ifges(4,6) * qJD(3) + Ifges(4,2) * t141 / 0.2e1) * t137 + (t121 * mrSges(4,2) - t112 * mrSges(4,3) + Ifges(4,5) * qJD(3) + (Ifges(4,4) * t137 + Ifges(4,1) * t132 / 0.2e1) * qJD(2)) * t132) * qJD(2);
T  = t1;
