% Calculate kinetic energy for
% S4RRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3]';
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
% Datum: 2019-12-31 17:13
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S4RRRP2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRP2_energykin_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRP2_energykin_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRRP2_energykin_fixb_slag_vp2: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRP2_energykin_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRRP2_energykin_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RRRP2_energykin_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:12:51
% EndTime: 2019-12-31 17:12:51
% DurationCPUTime: 0.10s
% Computational Cost: add. (108->43), mult. (168->68), div. (0->0), fcn. (54->4), ass. (0->15)
t49 = qJD(1) + qJD(2);
t51 = sin(qJ(2));
t58 = pkin(1) * qJD(1);
t47 = t49 * pkin(6) + t51 * t58;
t59 = t47 * mrSges(4,3);
t53 = cos(qJ(2));
t57 = t53 * t58;
t56 = qJ(4) * t49 + t47;
t52 = cos(qJ(3));
t50 = sin(qJ(3));
t48 = -t49 * pkin(2) - t57;
t45 = -t57 + qJD(4) + (-pkin(3) * t52 - pkin(2)) * t49;
t44 = t56 * t52;
t43 = qJD(3) * pkin(3) - t56 * t50;
t1 = m(4) * (t48 ^ 2 + (t50 ^ 2 + t52 ^ 2) * t47 ^ 2) / 0.2e1 + m(5) * (t43 ^ 2 + t44 ^ 2 + t45 ^ 2) / 0.2e1 + (Ifges(2,3) / 0.2e1 + m(3) * (t51 ^ 2 + t53 ^ 2) * pkin(1) ^ 2 / 0.2e1) * qJD(1) ^ 2 + (t43 * mrSges(5,1) - t44 * mrSges(5,2) + (Ifges(5,3) / 0.2e1 + Ifges(4,3) / 0.2e1) * qJD(3) + (-t50 * mrSges(4,1) - t52 * mrSges(4,2)) * t47) * qJD(3) + (Ifges(3,3) * t49 / 0.2e1 + (mrSges(3,1) * t53 - mrSges(3,2) * t51) * t58 + (-t48 * mrSges(4,1) - t45 * mrSges(5,1) + t44 * mrSges(5,3) + (t59 + (Ifges(5,2) / 0.2e1 + Ifges(4,2) / 0.2e1) * t49) * t52 + (Ifges(4,6) + Ifges(5,6)) * qJD(3)) * t52 + (-t43 * mrSges(5,3) + t48 * mrSges(4,2) + t45 * mrSges(5,2) + (t59 + (Ifges(5,1) / 0.2e1 + Ifges(4,1) / 0.2e1) * t49) * t50 + (Ifges(4,4) + Ifges(5,4)) * t49 * t52 + (Ifges(4,5) + Ifges(5,5)) * qJD(3)) * t50) * t49;
T = t1;
