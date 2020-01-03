% Calculate kinetic energy for
% S5RRPPR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta4]';
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
% Datum: 2019-12-31 19:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RRPPR11_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR11_energykin_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR11_energykin_fixb_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPPR11_energykin_fixb_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPPR11_energykin_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRPPR11_energykin_fixb_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRPPR11_energykin_fixb_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:46:20
% EndTime: 2019-12-31 19:46:20
% DurationCPUTime: 0.34s
% Computational Cost: add. (272->84), mult. (580->121), div. (0->0), fcn. (314->6), ass. (0->31)
t95 = pkin(6) * mrSges(3,3);
t94 = -pkin(2) - qJ(4);
t87 = cos(qJ(2));
t85 = sin(qJ(2));
t90 = -qJ(3) * t85 - pkin(1);
t69 = (t94 * t87 + t90) * qJD(1);
t92 = t85 * qJD(1);
t91 = pkin(6) * t92 + qJD(3);
t70 = pkin(3) * t92 + t94 * qJD(2) + t91;
t82 = sin(pkin(8));
t83 = cos(pkin(8));
t62 = t83 * t69 + t82 * t70;
t93 = qJD(1) * t87;
t76 = -pkin(6) * t93 - qJD(2) * qJ(3);
t61 = -t82 * t69 + t83 * t70;
t71 = pkin(3) * t93 + qJD(4) - t76;
t86 = cos(qJ(5));
t84 = sin(qJ(5));
t77 = qJD(5) + t92;
t75 = -qJD(2) * pkin(2) + t91;
t74 = t83 * qJD(2) - t82 * t93;
t73 = -t82 * qJD(2) - t83 * t93;
t72 = (-pkin(2) * t87 + t90) * qJD(1);
t65 = -t73 * pkin(4) + t71;
t64 = t84 * t73 + t86 * t74;
t63 = t86 * t73 - t84 * t74;
t60 = t73 * pkin(7) + t62;
t59 = pkin(4) * t92 - t74 * pkin(7) + t61;
t58 = t84 * t59 + t86 * t60;
t57 = t86 * t59 - t84 * t60;
t1 = m(4) * (t72 ^ 2 + t75 ^ 2 + t76 ^ 2) / 0.2e1 + m(6) * (t57 ^ 2 + t58 ^ 2 + t65 ^ 2) / 0.2e1 + m(5) * (t61 ^ 2 + t62 ^ 2 + t71 ^ 2) / 0.2e1 + (t57 * mrSges(6,1) - t58 * mrSges(6,2) + Ifges(6,3) * t77 / 0.2e1) * t77 + (t71 * mrSges(5,2) - t61 * mrSges(5,3) + Ifges(5,1) * t74 / 0.2e1) * t74 + (-t71 * mrSges(5,1) + t62 * mrSges(5,3) + Ifges(5,4) * t74 + Ifges(5,2) * t73 / 0.2e1) * t73 + (t65 * mrSges(6,2) - t57 * mrSges(6,3) + Ifges(6,5) * t77 + Ifges(6,1) * t64 / 0.2e1) * t64 + (-t65 * mrSges(6,1) + t58 * mrSges(6,3) + Ifges(6,4) * t64 + Ifges(6,6) * t77 + Ifges(6,2) * t63 / 0.2e1) * t63 + (t75 * mrSges(4,2) - t76 * mrSges(4,3) + (Ifges(3,3) / 0.2e1 + Ifges(4,1) / 0.2e1) * qJD(2)) * qJD(2) + ((-t76 * mrSges(4,1) + t72 * mrSges(4,2) + (-pkin(6) * mrSges(3,2) - Ifges(4,5) + Ifges(3,6)) * qJD(2)) * t87 + (t75 * mrSges(4,1) + t61 * mrSges(5,1) - t62 * mrSges(5,2) - t72 * mrSges(4,3) + Ifges(5,5) * t74 + Ifges(5,6) * t73 + (-pkin(6) * mrSges(3,1) - Ifges(4,4) + Ifges(3,5)) * qJD(2)) * t85 + (Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t85 ^ 2 + t87 ^ 2) * pkin(6) ^ 2) / 0.2e1 + (pkin(1) * mrSges(3,1) + (t95 + Ifges(4,3) / 0.2e1 + Ifges(3,2) / 0.2e1) * t87) * t87 + (-pkin(1) * mrSges(3,2) + (t95 + Ifges(5,3) / 0.2e1 + Ifges(3,1) / 0.2e1 + Ifges(4,2) / 0.2e1) * t85 + (Ifges(3,4) + Ifges(4,6)) * t87) * t85) * qJD(1)) * qJD(1);
T = t1;
