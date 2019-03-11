% Calculate kinetic energy for
% S6PRRRPR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d6,theta1]';
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
% Datum: 2019-03-08 23:54
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRRRPR8_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR8_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR8_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRPR8_energykin_fixb_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRPR8_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRRPR8_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRRRPR8_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:48:06
% EndTime: 2019-03-08 23:48:07
% DurationCPUTime: 0.48s
% Computational Cost: add. (536->98), mult. (1229->152), div. (0->0), fcn. (939->12), ass. (0->47)
t137 = cos(qJ(2));
t128 = sin(pkin(6));
t146 = qJD(1) * t128;
t120 = qJD(2) * pkin(2) + t137 * t146;
t127 = sin(pkin(7));
t129 = cos(pkin(7));
t130 = cos(pkin(6));
t145 = qJD(1) * t130;
t150 = t120 * t129 + t127 * t145;
t134 = sin(qJ(2));
t144 = t127 * qJD(2);
t119 = pkin(9) * t144 + t134 * t146;
t133 = sin(qJ(3));
t136 = cos(qJ(3));
t106 = -t133 * t119 + t150 * t136;
t149 = pkin(4) + pkin(11);
t148 = cos(qJ(4));
t107 = t136 * t119 + t150 * t133;
t125 = qJD(2) * t129 + qJD(3);
t105 = pkin(10) * t125 + t107;
t124 = t129 * t145;
t109 = t124 + (-t120 + (-pkin(3) * t136 - pkin(10) * t133) * qJD(2)) * t127;
t132 = sin(qJ(4));
t100 = t148 * t105 + t132 * t109;
t142 = t133 * t144;
t123 = -t136 * t144 + qJD(4);
t98 = -qJ(5) * t123 - t100;
t99 = -t132 * t105 + t148 * t109;
t141 = qJD(5) - t99;
t115 = t132 * t125 + t148 * t142;
t104 = -pkin(3) * t125 - t106;
t139 = -qJ(5) * t115 + t104;
t135 = cos(qJ(6));
t131 = sin(qJ(6));
t114 = -t148 * t125 + t132 * t142;
t113 = qJD(6) + t115;
t112 = -t120 * t127 + t124;
t111 = t114 * t131 + t123 * t135;
t110 = t114 * t135 - t123 * t131;
t101 = pkin(4) * t114 + t139;
t97 = -t123 * pkin(4) + t141;
t96 = t149 * t114 + t139;
t95 = -pkin(5) * t114 - t98;
t94 = t115 * pkin(5) - t149 * t123 + t141;
t93 = t131 * t94 + t135 * t96;
t92 = -t131 * t96 + t135 * t94;
t1 = m(4) * (t106 ^ 2 + t107 ^ 2 + t112 ^ 2) / 0.2e1 + m(7) * (t92 ^ 2 + t93 ^ 2 + t95 ^ 2) / 0.2e1 + m(6) * (t101 ^ 2 + t97 ^ 2 + t98 ^ 2) / 0.2e1 + m(5) * (t100 ^ 2 + t104 ^ 2 + t99 ^ 2) / 0.2e1 + (t106 * mrSges(4,1) - t107 * mrSges(4,2) + Ifges(4,3) * t125 / 0.2e1) * t125 + (t92 * mrSges(7,1) - t93 * mrSges(7,2) + Ifges(7,3) * t113 / 0.2e1) * t113 + (t95 * mrSges(7,2) - t92 * mrSges(7,3) + Ifges(7,5) * t113 + Ifges(7,1) * t111 / 0.2e1) * t111 + (m(3) * (t130 ^ 2 + (t134 ^ 2 + t137 ^ 2) * t128 ^ 2) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 + (-t95 * mrSges(7,1) + t93 * mrSges(7,3) + Ifges(7,4) * t111 + Ifges(7,6) * t113 + Ifges(7,2) * t110 / 0.2e1) * t110 + (Ifges(3,3) * qJD(2) / 0.2e1 + (mrSges(3,1) * t137 - mrSges(3,2) * t134) * t146 + (t112 * (-mrSges(4,1) * t136 + mrSges(4,2) * t133) + (Ifges(4,2) * t136 ^ 2 / 0.2e1 + (Ifges(4,4) * t136 + Ifges(4,1) * t133 / 0.2e1) * t133) * t144 + (-t106 * t133 + t107 * t136) * mrSges(4,3) + t125 * (Ifges(4,5) * t133 + Ifges(4,6) * t136)) * t127) * qJD(2) + (t99 * mrSges(5,1) - t100 * mrSges(5,2) + t97 * mrSges(6,2) - t98 * mrSges(6,3) + (Ifges(5,3) / 0.2e1 + Ifges(6,1) / 0.2e1) * t123) * t123 + (t97 * mrSges(6,1) + t104 * mrSges(5,2) - t99 * mrSges(5,3) - t101 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(6,2) / 0.2e1) * t115 + (-Ifges(6,4) + Ifges(5,5)) * t123) * t115 + (t104 * mrSges(5,1) + t98 * mrSges(6,1) - t101 * mrSges(6,2) - t100 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t114 + (Ifges(6,5) - Ifges(5,6)) * t123 + (-Ifges(5,4) - Ifges(6,6)) * t115) * t114;
T  = t1;
