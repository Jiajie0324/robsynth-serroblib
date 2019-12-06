% Calculate kinetic energy for
% S5RPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
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
% Datum: 2019-12-05 18:02
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RPRRP2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP2_energykin_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP2_energykin_fixb_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP2_energykin_fixb_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRP2_energykin_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRRP2_energykin_fixb_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPRRP2_energykin_fixb_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:01:20
% EndTime: 2019-12-05 18:01:20
% DurationCPUTime: 0.17s
% Computational Cost: add. (155->57), mult. (275->81), div. (0->0), fcn. (114->6), ass. (0->23)
t81 = m(3) / 0.2e1;
t71 = cos(pkin(8));
t64 = (pkin(1) * t71 + pkin(2)) * qJD(1);
t73 = sin(qJ(3));
t75 = cos(qJ(3));
t70 = sin(pkin(8));
t79 = pkin(1) * qJD(1) * t70;
t62 = t73 * t64 + t75 * t79;
t69 = qJD(1) + qJD(3);
t60 = pkin(7) * t69 + t62;
t72 = sin(qJ(4));
t74 = cos(qJ(4));
t57 = t72 * qJD(2) + t74 * t60;
t80 = qJ(5) * t69;
t61 = t75 * t64 - t73 * t79;
t76 = qJD(2) ^ 2;
t68 = t74 * qJD(2);
t59 = -pkin(3) * t69 - t61;
t56 = -t60 * t72 + t68;
t55 = qJD(5) + (-pkin(4) * t74 - pkin(3)) * t69 - t61;
t54 = t74 * t80 + t57;
t53 = qJD(4) * pkin(4) + t68 + (-t60 - t80) * t72;
t1 = t76 * t81 + m(4) * (t61 ^ 2 + t62 ^ 2 + t76) / 0.2e1 + m(5) * (t56 ^ 2 + t57 ^ 2 + t59 ^ 2) / 0.2e1 + m(6) * (t53 ^ 2 + t54 ^ 2 + t55 ^ 2) / 0.2e1 + (Ifges(2,3) / 0.2e1 + Ifges(3,3) / 0.2e1 + (t71 * mrSges(3,1) - t70 * mrSges(3,2) + (t70 ^ 2 + t71 ^ 2) * t81 * pkin(1)) * pkin(1)) * qJD(1) ^ 2 + (t56 * mrSges(5,1) + t53 * mrSges(6,1) - t57 * mrSges(5,2) - t54 * mrSges(6,2) + (Ifges(5,3) / 0.2e1 + Ifges(6,3) / 0.2e1) * qJD(4)) * qJD(4) + (-t62 * mrSges(4,2) + t61 * mrSges(4,1) + Ifges(4,3) * t69 / 0.2e1 + (-t59 * mrSges(5,1) - t55 * mrSges(6,1) + t57 * mrSges(5,3) + t54 * mrSges(6,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,2) / 0.2e1) * t69 * t74 + (Ifges(5,6) + Ifges(6,6)) * qJD(4)) * t74 + (t59 * mrSges(5,2) + t55 * mrSges(6,2) - t56 * mrSges(5,3) - t53 * mrSges(6,3) + ((Ifges(6,1) / 0.2e1 + Ifges(5,1) / 0.2e1) * t72 + (Ifges(5,4) + Ifges(6,4)) * t74) * t69 + (Ifges(5,5) + Ifges(6,5)) * qJD(4)) * t72) * t69;
T = t1;
