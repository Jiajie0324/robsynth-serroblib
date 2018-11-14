% Calculate kinetic energy for
% S4RPRR1
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

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:51
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function T = S4RPRR1_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR1_energykin_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRR1_energykin_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR1_energykin_fixb_slag_vp2: pkin has to be [7x1] (double)');
assert( isreal(m) && all(size(m) == [5 1]), ...
  'S4RPRR1_energykin_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPRR1_energykin_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RPRR1_energykin_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 13:50:23
% EndTime: 2018-11-14 13:50:23
% DurationCPUTime: 0.07s
% Computational Cost: add. (63->26), mult. (147->44), div. (0->0), fcn. (60->6), ass. (0->18)
t68 = m(3) / 0.2e1;
t57 = qJD(1) + qJD(3);
t58 = sin(pkin(7));
t67 = pkin(1) * qJD(1) * t58;
t59 = cos(pkin(7));
t55 = (pkin(1) * t59 + pkin(2)) * qJD(1);
t61 = sin(qJ(3));
t63 = cos(qJ(3));
t52 = t63 * t55 - t61 * t67;
t64 = qJD(2) ^ 2;
t62 = cos(qJ(4));
t60 = sin(qJ(4));
t56 = qJD(4) + t57;
t53 = t61 * t55 + t63 * t67;
t51 = t57 * pkin(3) + t52;
t50 = t60 * t51 + t62 * t53;
t49 = t62 * t51 - t60 * t53;
t1 = t64 * t68 + m(4) * (t52 ^ 2 + t53 ^ 2 + t64) / 0.2e1 + m(5) * (t49 ^ 2 + t50 ^ 2 + t64) / 0.2e1 + (t52 * mrSges(4,1) - t53 * mrSges(4,2) + Ifges(4,3) * t57 / 0.2e1) * t57 + (t49 * mrSges(5,1) - t50 * mrSges(5,2) + Ifges(5,3) * t56 / 0.2e1) * t56 + (Ifges(3,3) / 0.2e1 + Ifges(2,3) / 0.2e1 + (t59 * mrSges(3,1) - t58 * mrSges(3,2) + (t58 ^ 2 + t59 ^ 2) * t68 * pkin(1)) * pkin(1)) * qJD(1) ^ 2;
T  = t1;
