% Calculate kinetic energy for
% S5PRRRP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d4,theta1]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [6x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:01
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5PRRRP8_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP8_energykin_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP8_energykin_fixb_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRP8_energykin_fixb_slag_vp2: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRRP8_energykin_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRRRP8_energykin_fixb_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRRRP8_energykin_fixb_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:58:09
% EndTime: 2019-12-05 16:58:09
% DurationCPUTime: 0.28s
% Computational Cost: add. (192->70), mult. (422->106), div. (0->0), fcn. (253->8), ass. (0->29)
t102 = cos(qJ(4));
t90 = cos(pkin(5));
t100 = qJD(1) * t90;
t89 = sin(pkin(5));
t101 = qJD(1) * t89;
t93 = sin(qJ(2));
t83 = qJD(2) * pkin(7) + t93 * t101;
t92 = sin(qJ(3));
t94 = cos(qJ(3));
t77 = t92 * t100 + t94 * t83;
t74 = qJD(3) * pkin(8) + t77;
t95 = cos(qJ(2));
t97 = t95 * t101;
t78 = -t97 + (-pkin(3) * t94 - pkin(8) * t92 - pkin(2)) * qJD(2);
t91 = sin(qJ(4));
t70 = t102 * t74 + t91 * t78;
t99 = qJD(2) * t92;
t98 = t94 * qJD(2);
t76 = t94 * t100 - t92 * t83;
t69 = t102 * t78 - t91 * t74;
t73 = -qJD(3) * pkin(3) - t76;
t86 = qJD(4) - t98;
t84 = -qJD(2) * pkin(2) - t97;
t82 = t91 * qJD(3) + t102 * t99;
t81 = -t102 * qJD(3) + t91 * t99;
t71 = t81 * pkin(4) - t82 * qJ(5) + t73;
t68 = t86 * qJ(5) + t70;
t67 = -t86 * pkin(4) + qJD(5) - t69;
t1 = m(4) * (t76 ^ 2 + t77 ^ 2 + t84 ^ 2) / 0.2e1 + m(6) * (t67 ^ 2 + t68 ^ 2 + t71 ^ 2) / 0.2e1 + m(5) * (t69 ^ 2 + t70 ^ 2 + t73 ^ 2) / 0.2e1 + (t76 * mrSges(4,1) - t77 * mrSges(4,2) + Ifges(4,3) * qJD(3) / 0.2e1) * qJD(3) + (m(2) / 0.2e1 + m(3) * (t90 ^ 2 + (t93 ^ 2 + t95 ^ 2) * t89 ^ 2) / 0.2e1) * qJD(1) ^ 2 + (t69 * mrSges(5,1) - t67 * mrSges(6,1) - t70 * mrSges(5,2) + t68 * mrSges(6,3) + (Ifges(5,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t86) * t86 + (Ifges(3,3) * qJD(2) / 0.2e1 + (mrSges(3,1) * t95 - mrSges(3,2) * t93) * t101 + (-t84 * mrSges(4,1) + t77 * mrSges(4,3) + Ifges(4,6) * qJD(3) + Ifges(4,2) * t98 / 0.2e1) * t94 + (t84 * mrSges(4,2) - t76 * mrSges(4,3) + Ifges(4,5) * qJD(3) + (Ifges(4,4) * t94 + Ifges(4,1) * t92 / 0.2e1) * qJD(2)) * t92) * qJD(2) + (t73 * mrSges(5,2) + t67 * mrSges(6,2) - t69 * mrSges(5,3) - t71 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t82 + (Ifges(6,4) + Ifges(5,5)) * t86) * t82 + (t73 * mrSges(5,1) + t71 * mrSges(6,1) - t68 * mrSges(6,2) - t70 * mrSges(5,3) + (Ifges(6,3) / 0.2e1 + Ifges(5,2) / 0.2e1) * t81 + (-Ifges(5,6) + Ifges(6,6)) * t86 + (-Ifges(5,4) + Ifges(6,5)) * t82) * t81;
T = t1;
