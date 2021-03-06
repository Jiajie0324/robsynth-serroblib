% Calculate kinetic energy for
% S6PRRRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d5,theta1]';
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
% Datum: 2019-03-09 00:00
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRRRRP1_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP1_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRP1_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRRP1_energykin_fixb_slag_vp2: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRRP1_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRRRP1_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRRRRP1_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:55:39
% EndTime: 2019-03-08 23:55:39
% DurationCPUTime: 0.41s
% Computational Cost: add. (446->95), mult. (941->143), div. (0->0), fcn. (663->10), ass. (0->39)
t116 = sin(qJ(4));
t117 = sin(qJ(3));
t120 = cos(qJ(4));
t121 = cos(qJ(3));
t104 = (t116 * t117 - t120 * t121) * qJD(2);
t115 = sin(qJ(5));
t119 = cos(qJ(5));
t112 = qJD(3) + qJD(4);
t118 = sin(qJ(2));
t113 = sin(pkin(6));
t128 = qJD(1) * t113;
t107 = qJD(2) * pkin(8) + t118 * t128;
t114 = cos(pkin(6));
t127 = qJD(1) * t114;
t110 = t121 * t127;
t96 = qJD(3) * pkin(3) + t110 + (-pkin(9) * qJD(2) - t107) * t117;
t101 = t121 * t107 + t117 * t127;
t126 = qJD(2) * t121;
t97 = pkin(9) * t126 + t101;
t89 = t116 * t96 + t120 * t97;
t87 = pkin(10) * t112 + t89;
t122 = cos(qJ(2));
t125 = t122 * t128;
t102 = -t125 + (-pkin(3) * t121 - pkin(2)) * qJD(2);
t105 = (t116 * t121 + t117 * t120) * qJD(2);
t92 = pkin(4) * t104 - pkin(10) * t105 + t102;
t83 = t115 * t92 + t119 * t87;
t82 = -t115 * t87 + t119 * t92;
t88 = -t116 * t97 + t120 * t96;
t86 = -pkin(4) * t112 - t88;
t108 = -qJD(2) * pkin(2) - t125;
t103 = qJD(5) + t104;
t100 = -t107 * t117 + t110;
t99 = t105 * t119 + t112 * t115;
t98 = -t105 * t115 + t112 * t119;
t84 = -pkin(5) * t98 + qJD(6) + t86;
t81 = qJ(6) * t98 + t83;
t80 = pkin(5) * t103 - qJ(6) * t99 + t82;
t1 = m(4) * (t100 ^ 2 + t101 ^ 2 + t108 ^ 2) / 0.2e1 + m(5) * (t102 ^ 2 + t88 ^ 2 + t89 ^ 2) / 0.2e1 + m(7) * (t80 ^ 2 + t81 ^ 2 + t84 ^ 2) / 0.2e1 + m(6) * (t82 ^ 2 + t83 ^ 2 + t86 ^ 2) / 0.2e1 + (t88 * mrSges(5,1) - t89 * mrSges(5,2) + Ifges(5,3) * t112 / 0.2e1) * t112 + (t100 * mrSges(4,1) - t101 * mrSges(4,2) + Ifges(4,3) * qJD(3) / 0.2e1) * qJD(3) + (t102 * mrSges(5,2) - t88 * mrSges(5,3) + Ifges(5,5) * t112 + Ifges(5,1) * t105 / 0.2e1) * t105 + (m(3) * (t114 ^ 2 + (t118 ^ 2 + t122 ^ 2) * t113 ^ 2) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 - (-t102 * mrSges(5,1) + t89 * mrSges(5,3) + Ifges(5,4) * t105 + Ifges(5,6) * t112 - Ifges(5,2) * t104 / 0.2e1) * t104 + (t86 * mrSges(6,2) + t84 * mrSges(7,2) - t82 * mrSges(6,3) - t80 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t99) * t99 + (Ifges(3,3) * qJD(2) / 0.2e1 + (mrSges(3,1) * t122 - mrSges(3,2) * t118) * t128 + (-t108 * mrSges(4,1) + t101 * mrSges(4,3) + Ifges(4,6) * qJD(3) + Ifges(4,2) * t126 / 0.2e1) * t121 + (t108 * mrSges(4,2) - t100 * mrSges(4,3) + Ifges(4,5) * qJD(3) + (Ifges(4,4) * t121 + Ifges(4,1) * t117 / 0.2e1) * qJD(2)) * t117) * qJD(2) + (-t86 * mrSges(6,1) - t84 * mrSges(7,1) + t83 * mrSges(6,3) + t81 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,2) / 0.2e1) * t98 + (Ifges(6,4) + Ifges(7,4)) * t99) * t98 + (t82 * mrSges(6,1) + t80 * mrSges(7,1) - t83 * mrSges(6,2) - t81 * mrSges(7,2) + (Ifges(7,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * t103 + (Ifges(6,5) + Ifges(7,5)) * t99 + (Ifges(6,6) + Ifges(7,6)) * t98) * t103;
T  = t1;
