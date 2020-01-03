% Calculate kinetic energy for
% S4PRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d4,theta1,theta3]';
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
% Datum: 2019-12-31 16:24
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4PRPR6_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR6_energykin_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRPR6_energykin_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRPR6_energykin_fixb_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRPR6_energykin_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PRPR6_energykin_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PRPR6_energykin_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:24:17
% EndTime: 2019-12-31 16:24:17
% DurationCPUTime: 0.13s
% Computational Cost: add. (80->39), mult. (201->73), div. (0->0), fcn. (106->6), ass. (0->20)
t62 = cos(pkin(7));
t71 = t62 ^ 2;
t61 = sin(pkin(7));
t70 = t61 ^ 2 + t71;
t64 = sin(qJ(2));
t58 = qJD(2) * qJ(3) + t64 * qJD(1);
t69 = pkin(5) * qJD(2) + t58;
t66 = cos(qJ(2));
t68 = -t66 * qJD(1) + qJD(3);
t65 = cos(qJ(4));
t63 = sin(qJ(4));
t56 = -qJD(2) * pkin(2) + t68;
t55 = (-pkin(3) * t62 - pkin(2)) * qJD(2) + t68;
t54 = (t61 * t65 + t62 * t63) * qJD(2);
t53 = (-t61 * t63 + t62 * t65) * qJD(2);
t52 = t69 * t62;
t51 = t69 * t61;
t50 = -t63 * t51 + t65 * t52;
t49 = -t65 * t51 - t63 * t52;
t1 = m(5) * (t49 ^ 2 + t50 ^ 2 + t55 ^ 2) / 0.2e1 + m(4) * (t70 * t58 ^ 2 + t56 ^ 2) / 0.2e1 + (m(2) / 0.2e1 + m(3) * (t64 ^ 2 + t66 ^ 2) / 0.2e1) * qJD(1) ^ 2 + (t55 * mrSges(5,2) - t49 * mrSges(5,3) + Ifges(5,1) * t54 / 0.2e1) * t54 + (-t55 * mrSges(5,1) + t50 * mrSges(5,3) + Ifges(5,4) * t54 + Ifges(5,2) * t53 / 0.2e1) * t53 + (t49 * mrSges(5,1) - t50 * mrSges(5,2) + Ifges(5,5) * t54 + Ifges(5,6) * t53 + Ifges(5,3) * qJD(4) / 0.2e1) * qJD(4) + (t56 * (-mrSges(4,1) * t62 + mrSges(4,2) * t61) + (Ifges(3,3) / 0.2e1 + Ifges(4,2) * t71 / 0.2e1 + (Ifges(4,4) * t62 + Ifges(4,1) * t61 / 0.2e1) * t61) * qJD(2) + (t66 * mrSges(3,1) - t64 * mrSges(3,2)) * qJD(1) + t70 * t58 * mrSges(4,3)) * qJD(2);
T = t1;
