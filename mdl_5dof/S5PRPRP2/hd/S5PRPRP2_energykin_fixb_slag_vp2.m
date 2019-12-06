% Calculate kinetic energy for
% S5PRPRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
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
% Datum: 2019-12-05 15:31
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5PRPRP2_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP2_energykin_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRP2_energykin_fixb_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP2_energykin_fixb_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPRP2_energykin_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRPRP2_energykin_fixb_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRPRP2_energykin_fixb_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:30:27
% EndTime: 2019-12-05 15:30:27
% DurationCPUTime: 0.16s
% Computational Cost: add. (123->57), mult. (285->83), div. (0->0), fcn. (148->4), ass. (0->21)
t71 = cos(pkin(8));
t69 = t71 * qJD(1);
t70 = sin(pkin(8));
t76 = qJD(2) * qJ(3);
t64 = t70 * t76 - t69;
t79 = t64 ^ 2;
t62 = qJD(3) + (-pkin(3) * t71 - pkin(6) * t70 - pkin(2)) * qJD(2);
t66 = t70 * qJD(1) + t71 * t76;
t72 = sin(qJ(4));
t73 = cos(qJ(4));
t58 = t72 * t62 + t73 * t66;
t78 = t70 * qJD(2);
t77 = t71 * qJD(2);
t75 = qJ(5) * t78;
t57 = t73 * t62 - t72 * t66;
t68 = -qJD(2) * pkin(2) + qJD(3);
t67 = qJD(4) - t77;
t59 = qJD(5) - t69 + (pkin(4) * t72 + qJ(3)) * t78;
t56 = -t72 * t75 + t58;
t55 = t67 * pkin(4) - t73 * t75 + t57;
t1 = m(4) * (t66 ^ 2 + t68 ^ 2 + t79) / 0.2e1 + m(5) * (t57 ^ 2 + t58 ^ 2 + t79) / 0.2e1 + m(6) * (t55 ^ 2 + t56 ^ 2 + t59 ^ 2) / 0.2e1 + (m(3) / 0.2e1 + m(2) / 0.2e1) * qJD(1) ^ 2 + (t57 * mrSges(5,1) + t55 * mrSges(6,1) - t58 * mrSges(5,2) - t56 * mrSges(6,2) + (Ifges(6,3) / 0.2e1 + Ifges(5,3) / 0.2e1) * t67) * t67 + (Ifges(3,3) * qJD(2) / 0.2e1 + (-t68 * mrSges(4,1) + t66 * mrSges(4,3) + Ifges(4,2) * t77 / 0.2e1) * t71 + (t68 * mrSges(4,2) + t64 * mrSges(4,3) + (Ifges(4,4) * t71 + Ifges(4,1) * t70 / 0.2e1) * qJD(2) + (t64 * mrSges(5,2) + t59 * mrSges(6,2) - t57 * mrSges(5,3) - t55 * mrSges(6,3) + (Ifges(6,1) / 0.2e1 + Ifges(5,1) / 0.2e1) * t73 * t78 + (Ifges(5,5) + Ifges(6,5)) * t67) * t73 + (t64 * mrSges(5,1) + t59 * mrSges(6,1) - t58 * mrSges(5,3) - t56 * mrSges(6,3) + (-Ifges(6,6) - Ifges(5,6)) * t67 + ((Ifges(6,2) / 0.2e1 + Ifges(5,2) / 0.2e1) * t72 + (-Ifges(5,4) - Ifges(6,4)) * t73) * t78) * t72) * t70) * qJD(2);
T = t1;
