% Calculate kinetic energy for
% S6RPPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,theta2,theta3]';
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
% Datum: 2019-03-09 02:01
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RPPRRP2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP2_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP2_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRP2_energykin_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRP2_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPPRRP2_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPPRRP2_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:00:02
% EndTime: 2019-03-09 02:00:02
% DurationCPUTime: 0.40s
% Computational Cost: add. (387->89), mult. (872->131), div. (0->0), fcn. (568->8), ass. (0->35)
t101 = cos(pkin(10));
t104 = sin(qJ(4));
t105 = cos(qJ(4));
t99 = sin(pkin(10));
t91 = (t101 * t105 - t104 * t99) * qJD(1);
t112 = m(3) / 0.2e1;
t111 = cos(qJ(5));
t103 = sin(qJ(5));
t110 = pkin(7) * qJD(1);
t100 = sin(pkin(9));
t95 = (pkin(1) * t100 + qJ(3)) * qJD(1);
t97 = t101 * qJD(2);
t83 = t97 + (-t95 - t110) * t99;
t88 = t99 * qJD(2) + t101 * t95;
t84 = t101 * t110 + t88;
t77 = t104 * t83 + t105 * t84;
t75 = qJD(4) * pkin(8) + t77;
t102 = cos(pkin(9));
t109 = -pkin(1) * t102 - pkin(2);
t90 = qJD(3) + (-pkin(3) * t101 + t109) * qJD(1);
t92 = (t101 * t104 + t105 * t99) * qJD(1);
t79 = -pkin(4) * t91 - pkin(8) * t92 + t90;
t71 = t103 * t79 + t111 * t75;
t76 = -t104 * t84 + t105 * t83;
t74 = -qJD(4) * pkin(4) - t76;
t70 = -t103 * t75 + t111 * t79;
t94 = t109 * qJD(1) + qJD(3);
t89 = qJD(5) - t91;
t87 = -t95 * t99 + t97;
t86 = t103 * qJD(4) + t111 * t92;
t85 = -t111 * qJD(4) + t103 * t92;
t72 = pkin(5) * t85 - qJ(6) * t86 + t74;
t69 = qJ(6) * t89 + t71;
t68 = -t89 * pkin(5) + qJD(6) - t70;
t1 = qJD(2) ^ 2 * t112 + m(4) * (t87 ^ 2 + t88 ^ 2 + t94 ^ 2) / 0.2e1 + m(5) * (t76 ^ 2 + t77 ^ 2 + t90 ^ 2) / 0.2e1 + m(7) * (t68 ^ 2 + t69 ^ 2 + t72 ^ 2) / 0.2e1 + m(6) * (t70 ^ 2 + t71 ^ 2 + t74 ^ 2) / 0.2e1 + (t90 * mrSges(5,2) - t76 * mrSges(5,3) + Ifges(5,1) * t92 / 0.2e1) * t92 + (-t90 * mrSges(5,1) + t77 * mrSges(5,3) + Ifges(5,4) * t92 + Ifges(5,2) * t91 / 0.2e1) * t91 + (t76 * mrSges(5,1) - t77 * mrSges(5,2) + Ifges(5,5) * t92 + Ifges(5,6) * t91 + Ifges(5,3) * qJD(4) / 0.2e1) * qJD(4) + (t70 * mrSges(6,1) - t68 * mrSges(7,1) - t71 * mrSges(6,2) + t69 * mrSges(7,3) + (Ifges(6,3) / 0.2e1 + Ifges(7,2) / 0.2e1) * t89) * t89 + (t74 * mrSges(6,2) + t68 * mrSges(7,2) - t70 * mrSges(6,3) - t72 * mrSges(7,3) + (Ifges(6,1) / 0.2e1 + Ifges(7,1) / 0.2e1) * t86 + (Ifges(7,4) + Ifges(6,5)) * t89) * t86 + (t74 * mrSges(6,1) + t72 * mrSges(7,1) - t69 * mrSges(7,2) - t71 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t85 + (-Ifges(6,6) + Ifges(7,6)) * t89 + (-Ifges(6,4) + Ifges(7,5)) * t86) * t85 + (t94 * (-mrSges(4,1) * t101 + mrSges(4,2) * t99) + (t88 * t101 - t87 * t99) * mrSges(4,3) + (Ifges(2,3) / 0.2e1 + Ifges(3,3) / 0.2e1 + (mrSges(3,1) * t102 - mrSges(3,2) * t100 + (t100 ^ 2 + t102 ^ 2) * t112 * pkin(1)) * pkin(1) + Ifges(4,1) * t99 ^ 2 / 0.2e1 + (Ifges(4,4) * t99 + Ifges(4,2) * t101 / 0.2e1) * t101) * qJD(1)) * qJD(1);
T  = t1;
