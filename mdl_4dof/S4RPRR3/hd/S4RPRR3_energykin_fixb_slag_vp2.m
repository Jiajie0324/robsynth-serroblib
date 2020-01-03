% Calculate kinetic energy for
% S4RPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,d4,theta2]';
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
% Datum: 2019-12-31 16:49
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RPRR3_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR3_energykin_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRR3_energykin_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR3_energykin_fixb_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRR3_energykin_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPRR3_energykin_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RPRR3_energykin_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:49:03
% EndTime: 2019-12-31 16:49:04
% DurationCPUTime: 0.19s
% Computational Cost: add. (106->50), mult. (249->87), div. (0->0), fcn. (122->6), ass. (0->23)
t75 = m(3) / 0.2e1;
t65 = sin(pkin(7));
t60 = (pkin(1) * t65 + pkin(5)) * qJD(1);
t68 = sin(qJ(3));
t70 = cos(qJ(3));
t55 = t68 * qJD(2) + t70 * t60;
t74 = pkin(6) * qJD(1);
t66 = cos(pkin(7));
t73 = -pkin(1) * t66 - pkin(2);
t69 = cos(qJ(4));
t67 = sin(qJ(4));
t64 = qJD(3) + qJD(4);
t63 = t70 * qJD(2);
t61 = t73 * qJD(1);
t58 = (-pkin(3) * t70 + t73) * qJD(1);
t57 = (t67 * t70 + t68 * t69) * qJD(1);
t56 = (-t67 * t68 + t69 * t70) * qJD(1);
t54 = -t60 * t68 + t63;
t53 = t70 * t74 + t55;
t52 = qJD(3) * pkin(3) + t63 + (-t60 - t74) * t68;
t51 = t52 * t67 + t53 * t69;
t50 = t52 * t69 - t53 * t67;
t1 = m(5) * (t50 ^ 2 + t51 ^ 2 + t58 ^ 2) / 0.2e1 + qJD(2) ^ 2 * t75 + m(4) * (t54 ^ 2 + t55 ^ 2 + t61 ^ 2) / 0.2e1 + (t50 * mrSges(5,1) - t51 * mrSges(5,2) + Ifges(5,3) * t64 / 0.2e1) * t64 + (t58 * mrSges(5,2) - t50 * mrSges(5,3) + Ifges(5,5) * t64 + Ifges(5,1) * t57 / 0.2e1) * t57 + (-t58 * mrSges(5,1) + t51 * mrSges(5,3) + Ifges(5,4) * t57 + Ifges(5,6) * t64 + Ifges(5,2) * t56 / 0.2e1) * t56 + (t54 * mrSges(4,1) - t55 * mrSges(4,2) + Ifges(4,3) * qJD(3) / 0.2e1) * qJD(3) + (t61 * (-mrSges(4,1) * t70 + mrSges(4,2) * t68) + (-t54 * t68 + t55 * t70) * mrSges(4,3) + qJD(3) * (Ifges(4,5) * t68 + Ifges(4,6) * t70) + (Ifges(2,3) / 0.2e1 + Ifges(3,3) / 0.2e1 + (mrSges(3,1) * t66 - mrSges(3,2) * t65 + (t65 ^ 2 + t66 ^ 2) * t75 * pkin(1)) * pkin(1) + Ifges(4,2) * t70 ^ 2 / 0.2e1 + (Ifges(4,4) * t70 + Ifges(4,1) * t68 / 0.2e1) * t68) * qJD(1)) * qJD(1);
T = t1;
