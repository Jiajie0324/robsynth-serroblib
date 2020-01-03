% Calculate matrix of centrifugal and coriolis load on the joints for
% S4PRPR3
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
% Cq [4x4]
%   matrix of coriolis and centrifugal joint torques

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:21
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S4PRPR3_coriolismatJ_fixb_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR3_coriolismatJ_fixb_slag_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PRPR3_coriolismatJ_fixb_slag_vp2: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRPR3_coriolismatJ_fixb_slag_vp2: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PRPR3_coriolismatJ_fixb_slag_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PRPR3_coriolismatJ_fixb_slag_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PRPR3_coriolismatJ_fixb_slag_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:20:49
% EndTime: 2019-12-31 16:20:49
% DurationCPUTime: 0.12s
% Computational Cost: add. (396->26), mult. (881->40), div. (0->0), fcn. (855->4), ass. (0->20)
t19 = sin(pkin(7));
t20 = cos(pkin(7));
t21 = sin(qJ(4));
t22 = cos(qJ(4));
t14 = t22 * t19 + t21 * t20;
t32 = t14 ^ 2;
t30 = pkin(5) + qJ(3);
t15 = t30 * t19;
t16 = t30 * t20;
t10 = -t21 * t15 + t22 * t16;
t13 = -t21 * t19 + t22 * t20;
t9 = -t22 * t15 - t21 * t16;
t4 = (t13 ^ 2 + t32) * mrSges(5,3) + m(5) * (t10 * t13 - t9 * t14) + (m(4) * qJ(3) + mrSges(4,3)) * (t19 ^ 2 + t20 ^ 2);
t28 = t4 * qJD(2);
t8 = t14 * mrSges(5,1) + t13 * mrSges(5,2);
t27 = t8 * qJD(2);
t26 = t8 * qJD(4);
t1 = -t32 * Ifges(5,4) + (-t20 * pkin(3) - pkin(2)) * t8 + (Ifges(5,4) * t13 + (Ifges(5,1) - Ifges(5,2)) * t14) * t13;
t23 = t1 * qJD(2);
t2 = [0, 0, 0, -t26; 0, t4 * qJD(3) + t1 * qJD(4), t28, (-t10 * mrSges(5,1) - t9 * mrSges(5,2) + Ifges(5,5) * t13 - Ifges(5,6) * t14) * qJD(4) + t23; 0, t26 - t28, 0, t27; 0, -t8 * qJD(3) - t23, -t27, 0;];
Cq = t2;
