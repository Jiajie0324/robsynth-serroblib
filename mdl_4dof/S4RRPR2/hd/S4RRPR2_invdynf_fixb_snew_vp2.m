% Calculate vector of cutting forces with Newton-Euler
% S4RRPR2
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
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2]';
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
% Datum: 2019-07-18 18:16
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S4RRPR2_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(5,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR2_invdynf_fixb_snew_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRPR2_invdynf_fixb_snew_vp2: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RRPR2_invdynf_fixb_snew_vp2: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRPR2_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4RRPR2_invdynf_fixb_snew_vp2: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRPR2_invdynf_fixb_snew_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4RRPR2_invdynf_fixb_snew_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4RRPR2_invdynf_fixb_snew_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-07-18 18:16:32
% EndTime: 2019-07-18 18:16:32
% DurationCPUTime: 0.18s
% Computational Cost: add. (1536->57), mult. (1745->68), div. (0->0), fcn. (716->6), ass. (0->37)
t46 = -m(4) - m(5);
t45 = -pkin(2) - pkin(3);
t44 = mrSges(3,1) + mrSges(4,1);
t29 = sin(qJ(1));
t32 = cos(qJ(1));
t40 = t29 * g(1) - t32 * g(2);
t15 = qJDD(1) * pkin(1) + t40;
t33 = qJD(1) ^ 2;
t37 = -t32 * g(1) - t29 * g(2);
t16 = -t33 * pkin(1) + t37;
t28 = sin(qJ(2));
t31 = cos(qJ(2));
t43 = t28 * t15 + t31 * t16;
t42 = -m(3) + t46;
t26 = (qJD(1) + qJD(2));
t25 = qJDD(1) + qJDD(2);
t41 = -m(2) + t42;
t39 = t31 * t15 - t28 * t16;
t38 = t25 * qJ(3) + (2 * qJD(3) * t26) + t43;
t24 = t26 ^ 2;
t27 = sin(qJ(4));
t30 = cos(qJ(4));
t34 = -t24 * qJ(3) + qJDD(3) - t39;
t10 = t45 * t25 + t34;
t22 = qJD(4) - t26;
t20 = t22 ^ 2;
t21 = qJDD(4) - t25;
t8 = t45 * t24 + t38;
t6 = m(5) * (t30 * t10 - t27 * t8) + t21 * mrSges(5,1) - (t20 * mrSges(5,2));
t7 = m(5) * (t27 * t10 + t30 * t8) - t21 * mrSges(5,2) - t20 * mrSges(5,1);
t36 = -t27 * t6 + t30 * t7 + t25 * mrSges(4,3) + m(4) * (-(t24 * pkin(2)) + t38);
t35 = -m(4) * (-t25 * pkin(2) + t34) - t27 * t7 - t30 * t6;
t4 = m(3) * t39 + t44 * t25 + (-mrSges(3,2) + mrSges(4,3)) * t24 + t35;
t3 = m(3) * t43 - t25 * mrSges(3,2) - t44 * t24 + t36;
t2 = m(2) * t37 - t33 * mrSges(2,1) - qJDD(1) * mrSges(2,2) - t28 * t4 + t31 * t3;
t1 = m(2) * t40 + qJDD(1) * mrSges(2,1) - t33 * mrSges(2,2) + t28 * t3 + t31 * t4;
t5 = [-m(1) * g(1) - t29 * t1 + t32 * t2, t2, t3, -(t24 * mrSges(4,1)) + t36, t7; -m(1) * g(2) + t32 * t1 + t29 * t2, t1, t4, t46 * g(3), t6; (-m(1) + t41) * g(3), t41 * g(3), t42 * g(3), -t25 * mrSges(4,1) - t24 * mrSges(4,3) - t35, m(5) * g(3);];
f_new  = t5;
