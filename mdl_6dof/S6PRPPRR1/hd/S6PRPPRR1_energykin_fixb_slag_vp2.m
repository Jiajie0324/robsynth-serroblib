% Calculate kinetic energy for
% S6PRPPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d5,d6,theta1,theta3,theta4]';
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
% Datum: 2019-03-08 19:16
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRPPRR1_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPPRR1_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPPRR1_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPPRR1_energykin_fixb_slag_vp2: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRPPRR1_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRPPRR1_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRPPRR1_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:13:50
% EndTime: 2019-03-08 19:13:51
% DurationCPUTime: 0.33s
% Computational Cost: add. (330->79), mult. (756->130), div. (0->0), fcn. (538->12), ass. (0->41)
t116 = sin(pkin(12));
t119 = cos(pkin(12));
t123 = sin(qJ(5));
t126 = cos(qJ(5));
t106 = (t116 * t123 - t119 * t126) * qJD(2);
t127 = cos(qJ(2));
t118 = sin(pkin(6));
t133 = qJD(1) * t118;
t109 = qJD(2) * pkin(2) + t127 * t133;
t117 = sin(pkin(11));
t120 = cos(pkin(11));
t124 = sin(qJ(2));
t132 = t124 * t133;
t102 = t117 * t109 + t120 * t132;
t100 = qJD(2) * qJ(4) + t102;
t121 = cos(pkin(6));
t114 = t121 * qJD(1) + qJD(3);
t111 = t119 * t114;
t134 = pkin(8) * qJD(2);
t93 = t111 + (-t100 - t134) * t116;
t96 = t119 * t100 + t116 * t114;
t94 = t119 * t134 + t96;
t89 = t123 * t93 + t126 * t94;
t101 = t120 * t109 - t117 * t132;
t131 = qJD(4) - t101;
t88 = -t123 * t94 + t126 * t93;
t97 = (-pkin(4) * t119 - pkin(3)) * qJD(2) + t131;
t125 = cos(qJ(6));
t122 = sin(qJ(6));
t107 = (t116 * t126 + t119 * t123) * qJD(2);
t105 = qJD(6) + t106;
t104 = t122 * qJD(5) + t125 * t107;
t103 = t125 * qJD(5) - t122 * t107;
t99 = -qJD(2) * pkin(3) + t131;
t95 = -t116 * t100 + t111;
t90 = t106 * pkin(5) - t107 * pkin(9) + t97;
t87 = qJD(5) * pkin(9) + t89;
t86 = -qJD(5) * pkin(5) - t88;
t85 = t122 * t90 + t125 * t87;
t84 = -t122 * t87 + t125 * t90;
t1 = m(4) * (t101 ^ 2 + t102 ^ 2 + t114 ^ 2) / 0.2e1 + m(6) * (t88 ^ 2 + t89 ^ 2 + t97 ^ 2) / 0.2e1 + m(5) * (t95 ^ 2 + t96 ^ 2 + t99 ^ 2) / 0.2e1 + m(7) * (t84 ^ 2 + t85 ^ 2 + t86 ^ 2) / 0.2e1 + (t97 * mrSges(6,2) - t88 * mrSges(6,3) + Ifges(6,1) * t107 / 0.2e1) * t107 + (t84 * mrSges(7,1) - t85 * mrSges(7,2) + Ifges(7,3) * t105 / 0.2e1) * t105 - (-t97 * mrSges(6,1) + t89 * mrSges(6,3) + Ifges(6,4) * t107 - Ifges(6,2) * t106 / 0.2e1) * t106 + (t86 * mrSges(7,2) - t84 * mrSges(7,3) + Ifges(7,5) * t105 + Ifges(7,1) * t104 / 0.2e1) * t104 + (m(2) / 0.2e1 + m(3) * (t121 ^ 2 + (t124 ^ 2 + t127 ^ 2) * t118 ^ 2) / 0.2e1) * qJD(1) ^ 2 + (-t86 * mrSges(7,1) + t85 * mrSges(7,3) + Ifges(7,4) * t104 + Ifges(7,6) * t105 + Ifges(7,2) * t103 / 0.2e1) * t103 + (t88 * mrSges(6,1) - t89 * mrSges(6,2) + Ifges(6,5) * t107 - Ifges(6,6) * t106 + Ifges(6,3) * qJD(5) / 0.2e1) * qJD(5) + (t99 * (-mrSges(5,1) * t119 + mrSges(5,2) * t116) + t101 * mrSges(4,1) - t102 * mrSges(4,2) + (mrSges(3,1) * t127 - mrSges(3,2) * t124) * t133 + (-t95 * t116 + t96 * t119) * mrSges(5,3) + (Ifges(4,3) / 0.2e1 + Ifges(3,3) / 0.2e1 + Ifges(5,2) * t119 ^ 2 / 0.2e1 + (Ifges(5,4) * t119 + Ifges(5,1) * t116 / 0.2e1) * t116) * qJD(2)) * qJD(2);
T  = t1;
