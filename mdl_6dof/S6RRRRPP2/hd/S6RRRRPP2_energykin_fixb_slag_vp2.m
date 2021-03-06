% Calculate kinetic energy for
% S6RRRRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
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
% Datum: 2019-03-09 20:52
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRRPP2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP2_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP2_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP2_energykin_fixb_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPP2_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRPP2_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRPP2_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:48:52
% EndTime: 2019-03-09 20:48:53
% DurationCPUTime: 0.51s
% Computational Cost: add. (542->103), mult. (1105->138), div. (0->0), fcn. (742->6), ass. (0->36)
t115 = -pkin(4) - pkin(5);
t114 = -pkin(8) - pkin(7);
t113 = pkin(7) * mrSges(3,3);
t112 = cos(qJ(3));
t111 = cos(qJ(4));
t100 = sin(qJ(4));
t101 = sin(qJ(3));
t103 = cos(qJ(2));
t109 = t103 * qJD(1);
t102 = sin(qJ(2));
t110 = t102 * qJD(1);
t90 = -t101 * t110 + t112 * t109;
t91 = (t101 * t103 + t112 * t102) * qJD(1);
t96 = (-pkin(2) * t103 - pkin(1)) * qJD(1);
t77 = -pkin(3) * t90 - pkin(9) * t91 + t96;
t94 = qJD(2) * pkin(2) + t114 * t110;
t95 = t114 * t109;
t83 = t101 * t94 - t112 * t95;
t99 = qJD(2) + qJD(3);
t81 = pkin(9) * t99 + t83;
t75 = t100 * t77 + t111 * t81;
t82 = t101 * t95 + t112 * t94;
t89 = qJD(4) - t90;
t72 = t89 * qJ(5) + t75;
t108 = pkin(3) * t99 + t82;
t74 = -t100 * t81 + t111 * t77;
t107 = qJD(5) - t74;
t85 = t100 * t99 + t111 * t91;
t106 = qJ(5) * t85 + t108;
t84 = t100 * t91 - t111 * t99;
t73 = pkin(4) * t84 - t106;
t71 = -t89 * pkin(4) + t107;
t70 = t115 * t84 + qJD(6) + t106;
t69 = qJ(6) * t84 + t72;
t68 = -t85 * qJ(6) + t115 * t89 + t107;
t1 = m(5) * (t108 ^ 2 + t74 ^ 2 + t75 ^ 2) / 0.2e1 + m(7) * (t68 ^ 2 + t69 ^ 2 + t70 ^ 2) / 0.2e1 + m(6) * (t71 ^ 2 + t72 ^ 2 + t73 ^ 2) / 0.2e1 + m(4) * (t82 ^ 2 + t83 ^ 2 + t96 ^ 2) / 0.2e1 + Ifges(3,3) * qJD(2) ^ 2 / 0.2e1 + (t82 * mrSges(4,1) - t83 * mrSges(4,2) + Ifges(4,3) * t99 / 0.2e1) * t99 + (t96 * mrSges(4,2) - t82 * mrSges(4,3) + Ifges(4,5) * t99 + Ifges(4,1) * t91 / 0.2e1) * t91 + (-t96 * mrSges(4,1) + t83 * mrSges(4,3) + Ifges(4,4) * t91 + Ifges(4,6) * t99 + Ifges(4,2) * t90 / 0.2e1) * t90 + (t74 * mrSges(5,1) - t71 * mrSges(6,1) - t68 * mrSges(7,1) - t75 * mrSges(5,2) + t69 * mrSges(7,2) + t72 * mrSges(6,3) + (Ifges(7,3) / 0.2e1 + Ifges(6,2) / 0.2e1 + Ifges(5,3) / 0.2e1) * t89) * t89 + (-t108 * mrSges(5,2) + t71 * mrSges(6,2) + t70 * mrSges(7,2) - t74 * mrSges(5,3) - t73 * mrSges(6,3) - t68 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1 + Ifges(5,1) / 0.2e1) * t85 + (Ifges(6,4) + Ifges(5,5) - Ifges(7,5)) * t89) * t85 + (-t108 * mrSges(5,1) + t73 * mrSges(6,1) - t70 * mrSges(7,1) - t72 * mrSges(6,2) - t75 * mrSges(5,3) + t69 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,3) / 0.2e1 + Ifges(5,2) / 0.2e1) * t84 + (-Ifges(5,6) + Ifges(6,6) - Ifges(7,6)) * t89 + (-Ifges(5,4) + Ifges(7,4) + Ifges(6,5)) * t85) * t84 + ((Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t102 ^ 2 + t103 ^ 2) * pkin(7) ^ 2) / 0.2e1 + (pkin(1) * mrSges(3,1) + (Ifges(3,2) / 0.2e1 + t113) * t103) * t103 + (-pkin(1) * mrSges(3,2) + Ifges(3,4) * t103 + (Ifges(3,1) / 0.2e1 + t113) * t102) * t102) * qJD(1) + ((-pkin(7) * mrSges(3,2) + Ifges(3,6)) * t103 + (-pkin(7) * mrSges(3,1) + Ifges(3,5)) * t102) * qJD(2)) * qJD(1);
T  = t1;
