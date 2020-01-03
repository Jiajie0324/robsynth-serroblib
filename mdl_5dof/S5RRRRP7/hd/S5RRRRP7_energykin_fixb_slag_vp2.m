% Calculate kinetic energy for
% S5RRRRP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
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
% Datum: 2019-12-31 21:58
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function T = S5RRRRP7_energykin_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP7_energykin_fixb_slag_vp2: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP7_energykin_fixb_slag_vp2: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP7_energykin_fixb_slag_vp2: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRP7_energykin_fixb_slag_vp2: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRRP7_energykin_fixb_slag_vp2: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRRRP7_energykin_fixb_slag_vp2: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From energy_kinetic_fixb_linkframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:56:04
% EndTime: 2019-12-31 21:56:04
% DurationCPUTime: 0.38s
% Computational Cost: add. (354->82), mult. (748->120), div. (0->0), fcn. (482->6), ass. (0->28)
t93 = qJD(1) * (-pkin(7) - pkin(6));
t83 = sin(qJ(3));
t84 = sin(qJ(2));
t85 = cos(qJ(3));
t86 = cos(qJ(2));
t73 = (t83 * t84 - t85 * t86) * qJD(1);
t91 = pkin(6) * mrSges(3,3);
t90 = cos(qJ(4));
t74 = (t83 * t86 + t84 * t85) * qJD(1);
t79 = (-pkin(2) * t86 - pkin(1)) * qJD(1);
t63 = pkin(3) * t73 - pkin(8) * t74 + t79;
t77 = qJD(2) * pkin(2) + t84 * t93;
t78 = t86 * t93;
t68 = t83 * t77 - t85 * t78;
t81 = qJD(2) + qJD(3);
t66 = pkin(8) * t81 + t68;
t82 = sin(qJ(4));
t61 = t82 * t63 + t90 * t66;
t67 = t77 * t85 + t83 * t78;
t65 = -pkin(3) * t81 - t67;
t60 = t63 * t90 - t82 * t66;
t72 = qJD(4) + t73;
t70 = t74 * t90 + t82 * t81;
t69 = t74 * t82 - t81 * t90;
t59 = pkin(4) * t69 - qJ(5) * t70 + t65;
t58 = qJ(5) * t72 + t61;
t57 = -t72 * pkin(4) + qJD(5) - t60;
t1 = m(4) * (t67 ^ 2 + t68 ^ 2 + t79 ^ 2) / 0.2e1 + Ifges(3,3) * qJD(2) ^ 2 / 0.2e1 + m(6) * (t57 ^ 2 + t58 ^ 2 + t59 ^ 2) / 0.2e1 + m(5) * (t60 ^ 2 + t61 ^ 2 + t65 ^ 2) / 0.2e1 + (t67 * mrSges(4,1) - t68 * mrSges(4,2) + Ifges(4,3) * t81 / 0.2e1) * t81 + (t79 * mrSges(4,2) - t67 * mrSges(4,3) + Ifges(4,5) * t81 + Ifges(4,1) * t74 / 0.2e1) * t74 - (-t79 * mrSges(4,1) + t68 * mrSges(4,3) + Ifges(4,4) * t74 + Ifges(4,6) * t81 - Ifges(4,2) * t73 / 0.2e1) * t73 + (t60 * mrSges(5,1) - t57 * mrSges(6,1) - t61 * mrSges(5,2) + t58 * mrSges(6,3) + (Ifges(5,3) / 0.2e1 + Ifges(6,2) / 0.2e1) * t72) * t72 + (t65 * mrSges(5,2) + t57 * mrSges(6,2) - t60 * mrSges(5,3) - t59 * mrSges(6,3) + (Ifges(5,1) / 0.2e1 + Ifges(6,1) / 0.2e1) * t70 + (Ifges(6,4) + Ifges(5,5)) * t72) * t70 + (t65 * mrSges(5,1) + t59 * mrSges(6,1) - t58 * mrSges(6,2) - t61 * mrSges(5,3) + (Ifges(5,2) / 0.2e1 + Ifges(6,3) / 0.2e1) * t69 + (-Ifges(5,6) + Ifges(6,6)) * t72 + (-Ifges(5,4) + Ifges(6,5)) * t70) * t69 + ((Ifges(2,3) / 0.2e1 + m(3) * (pkin(1) ^ 2 + (t84 ^ 2 + t86 ^ 2) * pkin(6) ^ 2) / 0.2e1 + (pkin(1) * mrSges(3,1) + (t91 + Ifges(3,2) / 0.2e1) * t86) * t86 + (-pkin(1) * mrSges(3,2) + Ifges(3,4) * t86 + (t91 + Ifges(3,1) / 0.2e1) * t84) * t84) * qJD(1) + ((-pkin(6) * mrSges(3,2) + Ifges(3,6)) * t86 + (-pkin(6) * mrSges(3,1) + Ifges(3,5)) * t84) * qJD(2)) * qJD(1);
T = t1;
