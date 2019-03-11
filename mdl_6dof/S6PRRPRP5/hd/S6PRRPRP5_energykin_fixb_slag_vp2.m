% Calculate kinetic energy for
% S6PRRPRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1]';
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
% Datum: 2019-03-08 21:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6PRRPRP5_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP5_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP5_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP5_energykin_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRPRP5_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRRPRP5_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRRPRP5_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:45:22
% EndTime: 2019-03-08 21:45:23
% DurationCPUTime: 0.33s
% Computational Cost: add. (266->92), mult. (553->125), div. (0->0), fcn. (313->8), ass. (0->35)
t117 = -pkin(3) - pkin(9);
t103 = sin(qJ(5));
t106 = cos(qJ(5));
t104 = sin(qJ(3));
t107 = cos(qJ(3));
t102 = cos(pkin(6));
t115 = qJD(1) * t102;
t105 = sin(qJ(2));
t101 = sin(pkin(6));
t116 = qJD(1) * t101;
t94 = qJD(2) * pkin(8) + t105 * t116;
t87 = -t104 * t94 + t107 * t115;
t110 = qJD(4) - t87;
t113 = t104 * qJD(2);
t81 = pkin(4) * t113 + qJD(3) * t117 + t110;
t111 = -qJ(4) * t104 - pkin(2);
t108 = cos(qJ(2));
t112 = t108 * t116;
t84 = -t112 + (t107 * t117 + t111) * qJD(2);
t78 = t103 * t81 + t106 * t84;
t88 = t104 * t115 + t107 * t94;
t114 = qJD(2) * t107;
t86 = -qJD(3) * qJ(4) - t88;
t82 = pkin(4) * t114 - t86;
t77 = -t103 * t84 + t106 * t81;
t97 = qJD(5) + t113;
t95 = -qJD(2) * pkin(2) - t112;
t93 = t106 * qJD(3) - t103 * t114;
t92 = t103 * qJD(3) + t106 * t114;
t89 = -t112 + (-pkin(3) * t107 + t111) * qJD(2);
t85 = -qJD(3) * pkin(3) + t110;
t79 = t92 * pkin(5) - t93 * qJ(6) + t82;
t76 = t97 * qJ(6) + t78;
t75 = -t97 * pkin(5) + qJD(6) - t77;
t1 = m(4) * (t87 ^ 2 + t88 ^ 2 + t95 ^ 2) / 0.2e1 + m(7) * (t75 ^ 2 + t76 ^ 2 + t79 ^ 2) / 0.2e1 + m(6) * (t77 ^ 2 + t78 ^ 2 + t82 ^ 2) / 0.2e1 + m(5) * (t85 ^ 2 + t86 ^ 2 + t89 ^ 2) / 0.2e1 + (m(3) * (t102 ^ 2 + (t105 ^ 2 + t108 ^ 2) * t101 ^ 2) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 + (t77 * mrSges(6,1) - t75 * mrSges(7,1) - t78 * mrSges(6,2) + t76 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t97) * t97 + (t87 * mrSges(4,1) - t88 * mrSges(4,2) + t85 * mrSges(5,2) - t86 * mrSges(5,3) + (Ifges(4,3) / 0.2e1 + Ifges(5,1) / 0.2e1) * qJD(3)) * qJD(3) + (t82 * mrSges(6,2) + t75 * mrSges(7,2) - t77 * mrSges(6,3) - t79 * mrSges(7,3) + (Ifges(6,1) / 0.2e1 + Ifges(7,1) / 0.2e1) * t93 + (Ifges(7,4) + Ifges(6,5)) * t97) * t93 + (t82 * mrSges(6,1) + t79 * mrSges(7,1) - t76 * mrSges(7,2) - t78 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t92 + (-Ifges(6,6) + Ifges(7,6)) * t97 + (-Ifges(6,4) + Ifges(7,5)) * t93) * t92 + (Ifges(3,3) * qJD(2) / 0.2e1 + (mrSges(3,1) * t108 - mrSges(3,2) * t105) * t116 + (-t95 * mrSges(4,1) - t86 * mrSges(5,1) + t89 * mrSges(5,2) + t88 * mrSges(4,3) + (Ifges(5,3) / 0.2e1 + Ifges(4,2) / 0.2e1) * t114 + (-Ifges(5,5) + Ifges(4,6)) * qJD(3)) * t107 + (t85 * mrSges(5,1) + t95 * mrSges(4,2) - t87 * mrSges(4,3) - t89 * mrSges(5,3) + (-Ifges(5,4) + Ifges(4,5)) * qJD(3) + ((Ifges(5,2) / 0.2e1 + Ifges(4,1) / 0.2e1) * t104 + (Ifges(4,4) + Ifges(5,6)) * t107) * qJD(2)) * t104) * qJD(2);
T  = t1;
