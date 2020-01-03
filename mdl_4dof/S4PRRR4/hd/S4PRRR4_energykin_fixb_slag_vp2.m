% Calculate kinetic energy for
% S4PRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,d4,theta1]';
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
% Datum: 2019-12-31 16:32
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4PRRR4_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRR4_energykin_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRRR4_energykin_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRRR4_energykin_fixb_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRRR4_energykin_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PRRR4_energykin_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PRRR4_energykin_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:32:28
% EndTime: 2019-12-31 16:32:29
% DurationCPUTime: 0.12s
% Computational Cost: add. (86->44), mult. (200->78), div. (0->0), fcn. (102->4), ass. (0->19)
t64 = sin(qJ(3));
t66 = cos(qJ(3));
t69 = qJD(2) * t66;
t57 = pkin(5) * t69 + t64 * qJD(1);
t70 = qJD(2) * t64;
t67 = qJD(2) ^ 2;
t65 = cos(qJ(4));
t63 = sin(qJ(4));
t62 = qJD(3) + qJD(4);
t61 = t66 * qJD(1);
t58 = (-pkin(3) * t66 - pkin(2)) * qJD(2);
t56 = -pkin(5) * t70 + t61;
t55 = (t63 * t66 + t64 * t65) * qJD(2);
t54 = (-t63 * t64 + t65 * t66) * qJD(2);
t53 = pkin(6) * t69 + t57;
t52 = qJD(3) * pkin(3) + t61 + (-pkin(6) - pkin(5)) * t70;
t51 = t63 * t52 + t65 * t53;
t50 = t65 * t52 - t63 * t53;
t1 = m(4) * (t67 * pkin(2) ^ 2 + t56 ^ 2 + t57 ^ 2) / 0.2e1 + t67 * Ifges(3,3) / 0.2e1 + m(5) * (t50 ^ 2 + t51 ^ 2 + t58 ^ 2) / 0.2e1 + (m(3) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 + (t50 * mrSges(5,1) - t51 * mrSges(5,2) + Ifges(5,3) * t62 / 0.2e1) * t62 + (t56 * mrSges(4,1) - t57 * mrSges(4,2) + Ifges(4,3) * qJD(3) / 0.2e1) * qJD(3) + (t58 * mrSges(5,2) - t50 * mrSges(5,3) + Ifges(5,5) * t62 + Ifges(5,1) * t55 / 0.2e1) * t55 + (-t58 * mrSges(5,1) + t51 * mrSges(5,3) + Ifges(5,4) * t55 + Ifges(5,6) * t62 + Ifges(5,2) * t54 / 0.2e1) * t54 + ((t57 * mrSges(4,3) + Ifges(4,6) * qJD(3) + (pkin(2) * mrSges(4,1) + Ifges(4,2) * t66 / 0.2e1) * qJD(2)) * t66 + (-t56 * mrSges(4,3) + Ifges(4,5) * qJD(3) + (-pkin(2) * mrSges(4,2) + Ifges(4,4) * t66 + Ifges(4,1) * t64 / 0.2e1) * qJD(2)) * t64) * qJD(2);
T = t1;
