% Calculate kinetic energy for
% S6RRPPRR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta3]';
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
% Datum: 2019-03-09 09:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRPPRR8_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR8_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRR8_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR8_energykin_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPPRR8_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPPRR8_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPPRR8_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 09:22:47
% EndTime: 2019-03-09 09:22:47
% DurationCPUTime: 0.50s
% Computational Cost: add. (594->107), mult. (1297->155), div. (0->0), fcn. (868->8), ass. (0->38)
t123 = pkin(7) * mrSges(3,3);
t114 = sin(qJ(5));
t117 = cos(qJ(5));
t111 = sin(pkin(10));
t115 = sin(qJ(2));
t121 = t115 * qJD(1);
t122 = cos(pkin(10));
t100 = t111 * qJD(2) + t121 * t122;
t118 = cos(qJ(2));
t110 = t118 * qJD(1);
t104 = pkin(7) * t110 + qJD(2) * qJ(3);
t97 = (-pkin(2) * t118 - qJ(3) * t115 - pkin(1)) * qJD(1);
t93 = -t111 * t104 + t122 * t97;
t89 = pkin(3) * t110 + qJD(4) - t93;
t84 = pkin(4) * t110 - t100 * pkin(8) + t89;
t94 = t122 * t104 + t111 * t97;
t90 = -qJ(4) * t110 + t94;
t99 = -qJD(2) * t122 + t111 * t121;
t87 = pkin(8) * t99 + t90;
t78 = t114 * t84 + t117 * t87;
t106 = t110 + qJD(5);
t103 = -qJD(2) * pkin(2) + pkin(7) * t121 + qJD(3);
t77 = -t114 * t87 + t117 * t84;
t88 = t99 * pkin(3) - t100 * qJ(4) + t103;
t86 = -pkin(4) * t99 - t88;
t116 = cos(qJ(6));
t113 = sin(qJ(6));
t105 = qJD(6) + t106;
t92 = t100 * t117 + t114 * t99;
t91 = -t100 * t114 + t117 * t99;
t81 = t113 * t91 + t116 * t92;
t80 = -t113 * t92 + t116 * t91;
t79 = -pkin(5) * t91 + t86;
t76 = pkin(9) * t91 + t78;
t75 = pkin(5) * t106 - pkin(9) * t92 + t77;
t74 = t113 * t75 + t116 * t76;
t73 = -t113 * t76 + t116 * t75;
t1 = m(4) * (t103 ^ 2 + t93 ^ 2 + t94 ^ 2) / 0.2e1 + m(5) * (t88 ^ 2 + t89 ^ 2 + t90 ^ 2) / 0.2e1 + m(7) * (t73 ^ 2 + t74 ^ 2 + t79 ^ 2) / 0.2e1 + m(6) * (t77 ^ 2 + t78 ^ 2 + t86 ^ 2) / 0.2e1 + Ifges(3,3) * qJD(2) ^ 2 / 0.2e1 + (t86 * mrSges(6,2) - t77 * mrSges(6,3) + Ifges(6,1) * t92 / 0.2e1) * t92 + (t79 * mrSges(7,2) - t73 * mrSges(7,3) + Ifges(7,1) * t81 / 0.2e1) * t81 + (-t86 * mrSges(6,1) + t78 * mrSges(6,3) + Ifges(6,4) * t92 + Ifges(6,2) * t91 / 0.2e1) * t91 + (-t79 * mrSges(7,1) + t74 * mrSges(7,3) + Ifges(7,4) * t81 + Ifges(7,2) * t80 / 0.2e1) * t80 + (t77 * mrSges(6,1) - t78 * mrSges(6,2) + Ifges(6,5) * t92 + Ifges(6,6) * t91 + Ifges(6,3) * t106 / 0.2e1) * t106 + (t73 * mrSges(7,1) - t74 * mrSges(7,2) + Ifges(7,5) * t81 + Ifges(7,6) * t80 + Ifges(7,3) * t105 / 0.2e1) * t105 + (t103 * mrSges(4,1) + t88 * mrSges(5,1) - t90 * mrSges(5,2) - t94 * mrSges(4,3) + (Ifges(5,3) / 0.2e1 + Ifges(4,2) / 0.2e1) * t99) * t99 + (t103 * mrSges(4,2) + t89 * mrSges(5,2) - t93 * mrSges(4,3) - t88 * mrSges(5,3) + (Ifges(5,1) / 0.2e1 + Ifges(4,1) / 0.2e1) * t100 + (-Ifges(4,4) + Ifges(5,5)) * t99 + (-Ifges(5,4) - Ifges(4,5)) * t110) * t100 + ((-pkin(7) * mrSges(3,1) + Ifges(3,5)) * qJD(2) * t115 + (-t93 * mrSges(4,1) + t89 * mrSges(5,1) + t94 * mrSges(4,2) - t90 * mrSges(5,3) + (-Ifges(5,6) + Ifges(4,6)) * t99 + (-pkin(7) * mrSges(3,2) + Ifges(3,6)) * qJD(2)) * t118 + (Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t115 ^ 2 + t118 ^ 2) * pkin(7) ^ 2) / 0.2e1 + (-pkin(1) * mrSges(3,2) + (Ifges(3,1) / 0.2e1 + t123) * t115) * t115 + (pkin(1) * mrSges(3,1) + Ifges(3,4) * t115 + (Ifges(3,2) / 0.2e1 + Ifges(5,2) / 0.2e1 + Ifges(4,3) / 0.2e1 + t123) * t118) * t118) * qJD(1)) * qJD(1);
T  = t1;
