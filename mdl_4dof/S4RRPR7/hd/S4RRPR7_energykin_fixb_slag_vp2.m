% Calculate kinetic energy for
% S4RRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
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
% Datum: 2019-12-31 17:07
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RRPR7_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR7_energykin_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRPR7_energykin_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRPR7_energykin_fixb_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRPR7_energykin_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRPR7_energykin_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RRPR7_energykin_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:05:54
% EndTime: 2019-12-31 17:05:55
% DurationCPUTime: 0.27s
% Computational Cost: add. (180->62), mult. (443->101), div. (0->0), fcn. (266->6), ass. (0->24)
t77 = qJD(1) * (pkin(5) + qJ(3));
t65 = sin(pkin(7));
t66 = cos(pkin(7));
t68 = sin(qJ(2));
t70 = cos(qJ(2));
t59 = (t65 * t68 - t66 * t70) * qJD(1);
t75 = pkin(5) * mrSges(3,3);
t62 = qJD(2) * pkin(2) - t68 * t77;
t63 = t70 * t77;
t54 = t65 * t62 + t66 * t63;
t53 = t62 * t66 - t63 * t65;
t64 = qJD(3) + (-pkin(2) * t70 - pkin(1)) * qJD(1);
t69 = cos(qJ(4));
t67 = sin(qJ(4));
t60 = (t65 * t70 + t66 * t68) * qJD(1);
t58 = qJD(4) + t59;
t56 = qJD(2) * t67 + t60 * t69;
t55 = qJD(2) * t69 - t60 * t67;
t52 = qJD(2) * pkin(6) + t54;
t51 = -qJD(2) * pkin(3) - t53;
t50 = pkin(3) * t59 - pkin(6) * t60 + t64;
t49 = t50 * t67 + t52 * t69;
t48 = t50 * t69 - t52 * t67;
t1 = m(4) * (t53 ^ 2 + t54 ^ 2 + t64 ^ 2) / 0.2e1 + m(5) * (t48 ^ 2 + t49 ^ 2 + t51 ^ 2) / 0.2e1 + (t64 * mrSges(4,2) - t53 * mrSges(4,3) + Ifges(4,1) * t60 / 0.2e1) * t60 + (t48 * mrSges(5,1) - t49 * mrSges(5,2) + Ifges(5,3) * t58 / 0.2e1) * t58 - (-t64 * mrSges(4,1) + t54 * mrSges(4,3) + Ifges(4,4) * t60 - Ifges(4,2) * t59 / 0.2e1) * t59 + (t51 * mrSges(5,2) - t48 * mrSges(5,3) + Ifges(5,5) * t58 + Ifges(5,1) * t56 / 0.2e1) * t56 + (-t51 * mrSges(5,1) + t49 * mrSges(5,3) + Ifges(5,4) * t56 + Ifges(5,6) * t58 + Ifges(5,2) * t55 / 0.2e1) * t55 + (t53 * mrSges(4,1) - t54 * mrSges(4,2) + Ifges(4,5) * t60 - Ifges(4,6) * t59 + (Ifges(3,3) / 0.2e1 + Ifges(4,3) / 0.2e1) * qJD(2) + (Ifges(3,5) * t68 + Ifges(3,6) * t70 + (-mrSges(3,1) * t68 - mrSges(3,2) * t70) * pkin(5)) * qJD(1)) * qJD(2) + (Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t68 ^ 2 + t70 ^ 2) * pkin(5) ^ 2) / 0.2e1 + (pkin(1) * mrSges(3,1) + (t75 + Ifges(3,2) / 0.2e1) * t70) * t70 + (-pkin(1) * mrSges(3,2) + Ifges(3,4) * t70 + (t75 + Ifges(3,1) / 0.2e1) * t68) * t68) * qJD(1) ^ 2;
T = t1;
