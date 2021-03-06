% Calculate kinetic energy for
% S6RRRRRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
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
% Datum: 2019-03-10 01:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S6RRRRRP3_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP3_energykin_fixb_slag_vp2: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP3_energykin_fixb_slag_vp2: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP3_energykin_fixb_slag_vp2: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRRP3_energykin_fixb_slag_vp2: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRRP3_energykin_fixb_slag_vp2: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRRP3_energykin_fixb_slag_vp2: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:05:46
% EndTime: 2019-03-10 01:05:46
% DurationCPUTime: 0.59s
% Computational Cost: add. (824->106), mult. (1661->155), div. (0->0), fcn. (1206->8), ass. (0->40)
t121 = -pkin(8) - pkin(7);
t120 = pkin(7) * mrSges(3,3);
t108 = sin(qJ(5));
t112 = cos(qJ(5));
t109 = sin(qJ(4));
t113 = cos(qJ(4));
t110 = sin(qJ(3));
t111 = sin(qJ(2));
t114 = cos(qJ(3));
t115 = cos(qJ(2));
t100 = (t110 * t115 + t111 * t114) * qJD(1);
t105 = (-pkin(2) * t115 - pkin(1)) * qJD(1);
t118 = t115 * qJD(1);
t119 = t111 * qJD(1);
t99 = -t110 * t119 + t114 * t118;
t88 = -pkin(3) * t99 - pkin(9) * t100 + t105;
t107 = qJD(2) + qJD(3);
t103 = qJD(2) * pkin(2) + t119 * t121;
t104 = t121 * t118;
t93 = t110 * t103 - t114 * t104;
t91 = pkin(9) * t107 + t93;
t81 = -t109 * t91 + t113 * t88;
t95 = t100 * t113 + t107 * t109;
t98 = qJD(4) - t99;
t77 = pkin(4) * t98 - pkin(10) * t95 + t81;
t82 = t109 * t88 + t113 * t91;
t94 = -t100 * t109 + t107 * t113;
t80 = pkin(10) * t94 + t82;
t74 = t108 * t77 + t112 * t80;
t73 = -t108 * t80 + t112 * t77;
t92 = t103 * t114 + t110 * t104;
t90 = -pkin(3) * t107 - t92;
t83 = -pkin(4) * t94 + t90;
t96 = qJD(5) + t98;
t85 = t108 * t94 + t112 * t95;
t84 = -t108 * t95 + t112 * t94;
t78 = -pkin(5) * t84 + qJD(6) + t83;
t72 = qJ(6) * t84 + t74;
t71 = pkin(5) * t96 - qJ(6) * t85 + t73;
t1 = Ifges(3,3) * qJD(2) ^ 2 / 0.2e1 + m(4) * (t105 ^ 2 + t92 ^ 2 + t93 ^ 2) / 0.2e1 + m(5) * (t81 ^ 2 + t82 ^ 2 + t90 ^ 2) / 0.2e1 + m(6) * (t73 ^ 2 + t74 ^ 2 + t83 ^ 2) / 0.2e1 + m(7) * (t71 ^ 2 + t72 ^ 2 + t78 ^ 2) / 0.2e1 + (-t105 * mrSges(4,1) + t93 * mrSges(4,3) + Ifges(4,2) * t99 / 0.2e1) * t99 + (t81 * mrSges(5,1) - t82 * mrSges(5,2) + Ifges(5,3) * t98 / 0.2e1) * t98 + (t90 * mrSges(5,2) - t81 * mrSges(5,3) + Ifges(5,5) * t98 + Ifges(5,1) * t95 / 0.2e1) * t95 + (t92 * mrSges(4,1) - t93 * mrSges(4,2) + Ifges(4,6) * t99 + Ifges(4,3) * t107 / 0.2e1) * t107 + (-t90 * mrSges(5,1) + t82 * mrSges(5,3) + Ifges(5,4) * t95 + Ifges(5,6) * t98 + Ifges(5,2) * t94 / 0.2e1) * t94 + (t105 * mrSges(4,2) - t92 * mrSges(4,3) + Ifges(4,4) * t99 + Ifges(4,5) * t107 + Ifges(4,1) * t100 / 0.2e1) * t100 + (t73 * mrSges(6,1) + t71 * mrSges(7,1) - t74 * mrSges(6,2) - t72 * mrSges(7,2) + (Ifges(6,3) / 0.2e1 + Ifges(7,3) / 0.2e1) * t96) * t96 + (t83 * mrSges(6,2) + t78 * mrSges(7,2) - t73 * mrSges(6,3) - t71 * mrSges(7,3) + (Ifges(7,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t85 + (Ifges(6,5) + Ifges(7,5)) * t96) * t85 + (-t83 * mrSges(6,1) - t78 * mrSges(7,1) + t74 * mrSges(6,3) + t72 * mrSges(7,3) + (Ifges(7,2) / 0.2e1 + Ifges(6,2) / 0.2e1) * t84 + (Ifges(6,6) + Ifges(7,6)) * t96 + (Ifges(6,4) + Ifges(7,4)) * t85) * t84 + ((Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t111 ^ 2 + t115 ^ 2) * pkin(7) ^ 2) / 0.2e1 + (pkin(1) * mrSges(3,1) + (t120 + Ifges(3,2) / 0.2e1) * t115) * t115 + (-pkin(1) * mrSges(3,2) + Ifges(3,4) * t115 + (t120 + Ifges(3,1) / 0.2e1) * t111) * t111) * qJD(1) + ((-pkin(7) * mrSges(3,2) + Ifges(3,6)) * t115 + (-pkin(7) * mrSges(3,1) + Ifges(3,5)) * t111) * qJD(2)) * qJD(1);
T  = t1;
