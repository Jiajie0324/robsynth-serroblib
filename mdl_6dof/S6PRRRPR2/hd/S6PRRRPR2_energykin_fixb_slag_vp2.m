% Calculate kinetic energy for
% S6PRRRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1,theta5]';
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
% Datum: 2019-03-08 23:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRRRPR2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR2_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR2_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRPR2_energykin_fixb_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRPR2_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRRPR2_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRRRPR2_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:05:11
% EndTime: 2019-03-08 23:05:12
% DurationCPUTime: 0.44s
% Computational Cost: add. (580->99), mult. (1231->158), div. (0->0), fcn. (907->12), ass. (0->45)
t141 = cos(qJ(4));
t134 = cos(qJ(3));
t135 = cos(qJ(2));
t126 = sin(pkin(6));
t140 = qJD(1) * t126;
t137 = t135 * t140;
t113 = -t137 + (-pkin(3) * t134 - pkin(2)) * qJD(2);
t130 = sin(qJ(4));
t131 = sin(qJ(3));
t138 = qJD(2) * t134;
t115 = qJD(2) * t130 * t131 - t138 * t141;
t116 = (t130 * t134 + t131 * t141) * qJD(2);
t103 = pkin(4) * t115 - qJ(5) * t116 + t113;
t125 = sin(pkin(12));
t127 = cos(pkin(12));
t124 = qJD(3) + qJD(4);
t132 = sin(qJ(2));
t118 = qJD(2) * pkin(8) + t132 * t140;
t128 = cos(pkin(6));
t139 = qJD(1) * t128;
t121 = t134 * t139;
t107 = qJD(3) * pkin(3) + t121 + (-pkin(9) * qJD(2) - t118) * t131;
t112 = t134 * t118 + t131 * t139;
t108 = pkin(9) * t138 + t112;
t98 = t130 * t107 + t108 * t141;
t96 = qJ(5) * t124 + t98;
t92 = t125 * t103 + t127 * t96;
t91 = t127 * t103 - t125 * t96;
t97 = t107 * t141 - t130 * t108;
t95 = -t124 * pkin(4) + qJD(5) - t97;
t133 = cos(qJ(6));
t129 = sin(qJ(6));
t119 = -qJD(2) * pkin(2) - t137;
t114 = qJD(6) + t115;
t111 = -t118 * t131 + t121;
t110 = t116 * t127 + t124 * t125;
t109 = -t116 * t125 + t124 * t127;
t100 = t109 * t129 + t110 * t133;
t99 = t109 * t133 - t110 * t129;
t93 = -t109 * pkin(5) + t95;
t90 = pkin(10) * t109 + t92;
t89 = pkin(5) * t115 - pkin(10) * t110 + t91;
t88 = t129 * t89 + t133 * t90;
t87 = -t129 * t90 + t133 * t89;
t1 = m(4) * (t111 ^ 2 + t112 ^ 2 + t119 ^ 2) / 0.2e1 + m(5) * (t113 ^ 2 + t97 ^ 2 + t98 ^ 2) / 0.2e1 + m(7) * (t87 ^ 2 + t88 ^ 2 + t93 ^ 2) / 0.2e1 + m(6) * (t91 ^ 2 + t92 ^ 2 + t95 ^ 2) / 0.2e1 + (-t93 * mrSges(7,1) + t88 * mrSges(7,3) + Ifges(7,2) * t99 / 0.2e1) * t99 + (t97 * mrSges(5,1) - t98 * mrSges(5,2) + Ifges(5,3) * t124 / 0.2e1) * t124 + (t95 * mrSges(6,2) - t91 * mrSges(6,3) + Ifges(6,1) * t110 / 0.2e1) * t110 + (t111 * mrSges(4,1) - t112 * mrSges(4,2) + Ifges(4,3) * qJD(3) / 0.2e1) * qJD(3) + (t113 * mrSges(5,2) - t97 * mrSges(5,3) + Ifges(5,5) * t124 + Ifges(5,1) * t116 / 0.2e1) * t116 + (t87 * mrSges(7,1) - t88 * mrSges(7,2) + Ifges(7,6) * t99 + Ifges(7,3) * t114 / 0.2e1) * t114 + (-t95 * mrSges(6,1) + t92 * mrSges(6,3) + Ifges(6,4) * t110 + Ifges(6,2) * t109 / 0.2e1) * t109 + (m(3) * (t128 ^ 2 + (t132 ^ 2 + t135 ^ 2) * t126 ^ 2) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 + (t93 * mrSges(7,2) - t87 * mrSges(7,3) + Ifges(7,4) * t99 + Ifges(7,5) * t114 + Ifges(7,1) * t100 / 0.2e1) * t100 + (Ifges(3,3) * qJD(2) / 0.2e1 + (mrSges(3,1) * t135 - mrSges(3,2) * t132) * t140 + (-t119 * mrSges(4,1) + t112 * mrSges(4,3) + Ifges(4,6) * qJD(3) + Ifges(4,2) * t138 / 0.2e1) * t134 + (t119 * mrSges(4,2) - t111 * mrSges(4,3) + Ifges(4,5) * qJD(3) + (Ifges(4,4) * t134 + Ifges(4,1) * t131 / 0.2e1) * qJD(2)) * t131) * qJD(2) + (t113 * mrSges(5,1) + t91 * mrSges(6,1) - t92 * mrSges(6,2) - t98 * mrSges(5,3) - Ifges(5,4) * t116 + Ifges(6,5) * t110 - Ifges(5,6) * t124 + Ifges(6,6) * t109 + (Ifges(6,3) / 0.2e1 + Ifges(5,2) / 0.2e1) * t115) * t115;
T  = t1;
