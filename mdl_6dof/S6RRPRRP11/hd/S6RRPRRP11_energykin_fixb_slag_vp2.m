% Calculate kinetic energy for
% S6RRPRRP11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5]';
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
% Datum: 2019-03-09 12:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRPRRP11_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP11_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP11_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRRP11_energykin_fixb_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRRP11_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPRRP11_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPRRP11_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 12:45:19
% EndTime: 2019-03-09 12:45:19
% DurationCPUTime: 0.46s
% Computational Cost: add. (482->104), mult. (955->141), div. (0->0), fcn. (568->6), ass. (0->35)
t109 = -pkin(2) - pkin(8);
t108 = pkin(7) * mrSges(3,3);
t100 = cos(qJ(5));
t101 = cos(qJ(4));
t102 = cos(qJ(2));
t99 = sin(qJ(2));
t105 = -qJ(3) * t99 - pkin(1);
t82 = (t102 * t109 + t105) * qJD(1);
t95 = t99 * qJD(1);
t107 = pkin(7) * t95 + qJD(3);
t83 = pkin(3) * t95 + qJD(2) * t109 + t107;
t98 = sin(qJ(4));
t74 = t101 * t83 - t82 * t98;
t106 = qJD(1) * t102;
t87 = qJD(2) * t101 - t106 * t98;
t91 = t95 + qJD(4);
t70 = pkin(4) * t91 - pkin(9) * t87 + t74;
t75 = t101 * t82 + t98 * t83;
t86 = -qJD(2) * t98 - t101 * t106;
t73 = pkin(9) * t86 + t75;
t97 = sin(qJ(5));
t67 = t100 * t73 + t97 * t70;
t89 = -pkin(7) * t106 - qJD(2) * qJ(3);
t84 = pkin(3) * t106 - t89;
t66 = t100 * t70 - t73 * t97;
t78 = -pkin(4) * t86 + t84;
t90 = qJD(5) + t91;
t88 = -qJD(2) * pkin(2) + t107;
t85 = (-pkin(2) * t102 + t105) * qJD(1);
t77 = t100 * t87 + t86 * t97;
t76 = t100 * t86 - t87 * t97;
t71 = -pkin(5) * t76 + qJD(6) + t78;
t65 = qJ(6) * t76 + t67;
t64 = pkin(5) * t90 - qJ(6) * t77 + t66;
t1 = m(4) * (t85 ^ 2 + t88 ^ 2 + t89 ^ 2) / 0.2e1 + m(5) * (t74 ^ 2 + t75 ^ 2 + t84 ^ 2) / 0.2e1 + m(6) * (t66 ^ 2 + t67 ^ 2 + t78 ^ 2) / 0.2e1 + m(7) * (t64 ^ 2 + t65 ^ 2 + t71 ^ 2) / 0.2e1 + (t74 * mrSges(5,1) - t75 * mrSges(5,2) + Ifges(5,3) * t91 / 0.2e1) * t91 + (t84 * mrSges(5,2) - t74 * mrSges(5,3) + Ifges(5,5) * t91 + Ifges(5,1) * t87 / 0.2e1) * t87 + (-t84 * mrSges(5,1) + t75 * mrSges(5,3) + Ifges(5,4) * t87 + Ifges(5,6) * t91 + Ifges(5,2) * t86 / 0.2e1) * t86 + (t88 * mrSges(4,2) - t89 * mrSges(4,3) + (Ifges(4,1) / 0.2e1 + Ifges(3,3) / 0.2e1) * qJD(2)) * qJD(2) + (t66 * mrSges(6,1) + t64 * mrSges(7,1) - t67 * mrSges(6,2) - t65 * mrSges(7,2) + (Ifges(7,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * t90) * t90 + (t78 * mrSges(6,2) + t71 * mrSges(7,2) - t66 * mrSges(6,3) - t64 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t77 + (Ifges(6,5) + Ifges(7,5)) * t90) * t77 + (-t78 * mrSges(6,1) - t71 * mrSges(7,1) + t67 * mrSges(6,3) + t65 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,2) / 0.2e1) * t76 + (Ifges(6,6) + Ifges(7,6)) * t90 + (Ifges(6,4) + Ifges(7,4)) * t77) * t76 + ((t88 * mrSges(4,1) - t85 * mrSges(4,3) + (-pkin(7) * mrSges(3,1) - Ifges(4,4) + Ifges(3,5)) * qJD(2)) * t99 + (-t89 * mrSges(4,1) + t85 * mrSges(4,2) + (-pkin(7) * mrSges(3,2) - Ifges(4,5) + Ifges(3,6)) * qJD(2)) * t102 + (Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t102 ^ 2 + t99 ^ 2) * pkin(7) ^ 2) / 0.2e1 + (-pkin(1) * mrSges(3,2) + (Ifges(3,1) / 0.2e1 + Ifges(4,2) / 0.2e1 + t108) * t99) * t99 + (pkin(1) * mrSges(3,1) + (Ifges(3,2) / 0.2e1 + Ifges(4,3) / 0.2e1 + t108) * t102 + (Ifges(3,4) + Ifges(4,6)) * t99) * t102) * qJD(1)) * qJD(1);
T  = t1;
