% Calculate kinetic energy for
% S4RRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3,d4]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% mrSges [5x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [5x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% T [1x1]
%   kinetic energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:26
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RRRR4_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR4_energykin_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRR4_energykin_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRRR4_energykin_fixb_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRR4_energykin_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRRR4_energykin_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RRRR4_energykin_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:25:38
% EndTime: 2019-12-31 17:25:39
% DurationCPUTime: 0.28s
% Computational Cost: add. (198->62), mult. (443->102), div. (0->0), fcn. (266->6), ass. (0->25)
t79 = qJD(1) * (-pkin(6) - pkin(5));
t69 = sin(qJ(3));
t70 = sin(qJ(2));
t72 = cos(qJ(3));
t73 = cos(qJ(2));
t61 = (t69 * t70 - t72 * t73) * qJD(1);
t77 = pkin(5) * mrSges(3,3);
t64 = qJD(2) * pkin(2) + t70 * t79;
t65 = t73 * t79;
t56 = t69 * t64 - t72 * t65;
t66 = (-pkin(2) * t73 - pkin(1)) * qJD(1);
t55 = t72 * t64 + t69 * t65;
t71 = cos(qJ(4));
t68 = sin(qJ(4));
t67 = qJD(2) + qJD(3);
t62 = (t69 * t73 + t70 * t72) * qJD(1);
t60 = qJD(4) + t61;
t58 = t71 * t62 + t68 * t67;
t57 = -t68 * t62 + t71 * t67;
t54 = t67 * pkin(7) + t56;
t53 = -t67 * pkin(3) - t55;
t52 = t61 * pkin(3) - t62 * pkin(7) + t66;
t51 = t68 * t52 + t71 * t54;
t50 = t71 * t52 - t68 * t54;
t1 = m(4) * (t55 ^ 2 + t56 ^ 2 + t66 ^ 2) / 0.2e1 + m(5) * (t50 ^ 2 + t51 ^ 2 + t53 ^ 2) / 0.2e1 + Ifges(3,3) * qJD(2) ^ 2 / 0.2e1 + (t55 * mrSges(4,1) - t56 * mrSges(4,2) + Ifges(4,3) * t67 / 0.2e1) * t67 + (t50 * mrSges(5,1) - t51 * mrSges(5,2) + Ifges(5,3) * t60 / 0.2e1) * t60 + (t66 * mrSges(4,2) - t55 * mrSges(4,3) + Ifges(4,5) * t67 + Ifges(4,1) * t62 / 0.2e1) * t62 + (t53 * mrSges(5,2) - t50 * mrSges(5,3) + Ifges(5,5) * t60 + Ifges(5,1) * t58 / 0.2e1) * t58 - (-t66 * mrSges(4,1) + t56 * mrSges(4,3) + Ifges(4,4) * t62 + Ifges(4,6) * t67 - Ifges(4,2) * t61 / 0.2e1) * t61 + (-t53 * mrSges(5,1) + t51 * mrSges(5,3) + Ifges(5,4) * t58 + Ifges(5,6) * t60 + Ifges(5,2) * t57 / 0.2e1) * t57 + ((m(3) * (pkin(1) ^ 2 + (t70 ^ 2 + t73 ^ 2) * pkin(5) ^ 2) / 0.2e1 + Ifges(2,3) / 0.2e1 + (pkin(1) * mrSges(3,1) + (t77 + Ifges(3,2) / 0.2e1) * t73) * t73 + (-pkin(1) * mrSges(3,2) + Ifges(3,4) * t73 + (t77 + Ifges(3,1) / 0.2e1) * t70) * t70) * qJD(1) + ((-pkin(5) * mrSges(3,2) + Ifges(3,6)) * t73 + (-pkin(5) * mrSges(3,1) + Ifges(3,5)) * t70) * qJD(2)) * qJD(1);
T = t1;
