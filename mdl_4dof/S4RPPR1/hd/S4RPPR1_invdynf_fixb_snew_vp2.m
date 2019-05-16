% Calculate vector of cutting forces with Newton-Euler
% S4RPPR1
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d4,theta2]';
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
% f_new [3x5]
%   vector of cutting forces (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 19:08
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S4RPPR1_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPPR1_invdynf_fixb_snew_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPPR1_invdynf_fixb_snew_vp2: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RPPR1_invdynf_fixb_snew_vp2: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPPR1_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPPR1_invdynf_fixb_snew_vp2: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RPPR1_invdynf_fixb_snew_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RPPR1_invdynf_fixb_snew_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RPPR1_invdynf_fixb_snew_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 19:08:26
% EndTime: 2019-05-04 19:08:27
% DurationCPUTime: 0.17s
% Computational Cost: add. (1142->57), mult. (1745->67), div. (0->0), fcn. (716->6), ass. (0->35)
t46 = -pkin(2) - pkin(3);
t26 = g(3) - qJDD(2);
t45 = m(5) * t26;
t44 = mrSges(3,1) + mrSges(4,1);
t30 = sin(qJ(1));
t32 = cos(qJ(1));
t41 = t30 * g(1) - t32 * g(2);
t15 = qJDD(1) * pkin(1) + t41;
t33 = qJD(1) ^ 2;
t37 = -t32 * g(1) - t30 * g(2);
t16 = -t33 * pkin(1) + t37;
t27 = sin(pkin(6));
t28 = cos(pkin(6));
t43 = t27 * t15 + t28 * t16;
t42 = -m(4) * t26 - t45;
t40 = t28 * t15 - t27 * t16;
t39 = qJDD(1) * qJ(3) + (2 * qJD(3) * qJD(1)) + t43;
t38 = -m(3) * t26 + t42;
t29 = sin(qJ(4));
t31 = cos(qJ(4));
t34 = -t33 * qJ(3) + qJDD(3) - t40;
t10 = t46 * qJDD(1) + t34;
t23 = -qJD(1) + qJD(4);
t21 = t23 ^ 2;
t22 = -qJDD(1) + qJDD(4);
t8 = t46 * t33 + t39;
t6 = m(5) * (t31 * t10 - t29 * t8) + t22 * mrSges(5,1) - (t21 * mrSges(5,2));
t7 = m(5) * (t29 * t10 + t31 * t8) - t22 * mrSges(5,2) - t21 * mrSges(5,1);
t36 = -t29 * t6 + t31 * t7 + qJDD(1) * mrSges(4,3) + m(4) * (-t33 * pkin(2) + t39);
t35 = -m(4) * (-qJDD(1) * pkin(2) + t34) - t29 * t7 - t31 * t6;
t4 = m(3) * t40 + (-mrSges(3,2) + mrSges(4,3)) * t33 + t44 * qJDD(1) + t35;
t3 = m(3) * t43 - qJDD(1) * mrSges(3,2) - t44 * t33 + t36;
t2 = m(2) * t37 - t33 * mrSges(2,1) - qJDD(1) * mrSges(2,2) - t27 * t4 + t28 * t3;
t1 = m(2) * t41 + qJDD(1) * mrSges(2,1) - t33 * mrSges(2,2) + t27 * t3 + t28 * t4;
t5 = [-m(1) * g(1) - t30 * t1 + t32 * t2, t2, t3, -t33 * mrSges(4,1) + t36, t7; -m(1) * g(2) + t32 * t1 + t30 * t2, t1, t4, t42, t6; (-m(1) - m(2)) * g(3) + t38, -m(2) * g(3) + t38, t38, -qJDD(1) * mrSges(4,1) - t33 * mrSges(4,3) - t35, t45;];
f_new  = t5;
