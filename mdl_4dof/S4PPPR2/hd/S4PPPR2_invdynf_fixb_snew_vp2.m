% Calculate vector of cutting forces with Newton-Euler
% S4PPPR2
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
%   pkin=[a2,a3,a4,d4,theta2]';
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
% Datum: 2019-05-04 18:38
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new = S4PPPR2_invdynf_fixb_snew_vp2(qJ, qJD, qJDD, g, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(5,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPPR2_invdynf_fixb_snew_vp2: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PPPR2_invdynf_fixb_snew_vp2: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4PPPR2_invdynf_fixb_snew_vp2: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PPPR2_invdynf_fixb_snew_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPPR2_invdynf_fixb_snew_vp2: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4PPPR2_invdynf_fixb_snew_vp2: m has to be [5x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [5,3]), ...
  'S4PPPR2_invdynf_fixb_snew_vp2: mrSges has to be [5x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [5 6]), ...
  'S4PPPR2_invdynf_fixb_snew_vp2: Ifges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_linkframe_f_i_i_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 18:37:51
% EndTime: 2019-05-04 18:37:51
% DurationCPUTime: 0.08s
% Computational Cost: add. (326->28), mult. (379->36), div. (0->0), fcn. (232->4), ass. (0->23)
t30 = -m(1) - m(2);
t16 = g(3) - qJDD(2);
t12 = m(5) * t16;
t29 = -m(4) * t16 - t12;
t17 = -g(2) + qJDD(1);
t18 = sin(pkin(5));
t19 = cos(pkin(5));
t20 = sin(qJ(4));
t21 = cos(qJ(4));
t11 = -t19 * g(1) + t18 * t17;
t22 = qJD(4) ^ 2;
t24 = t18 * g(1) + t19 * t17;
t9 = qJDD(3) - t24;
t7 = m(5) * (-t20 * t11 + t21 * t9) + qJDD(4) * mrSges(5,1) - t22 * mrSges(5,2);
t8 = m(5) * (t21 * t11 + t20 * t9) - qJDD(4) * mrSges(5,2) - t22 * mrSges(5,1);
t23 = m(4) * t9 + t20 * t8 + t21 * t7;
t4 = m(3) * t24 - t23;
t25 = m(4) * t11 - t20 * t7 + t21 * t8;
t5 = m(3) * t11 + t25;
t28 = m(2) * t17 + t18 * t5 + t19 * t4;
t27 = -m(3) * t16 + t29;
t26 = -t18 * t4 + t19 * t5;
t1 = [t30 * g(1) + t26, -m(2) * g(1) + t26, t5, t25, t8; -m(1) * g(2) + t28, m(2) * g(3) - t27, t4, t29, t7; t30 * g(3) + t27, t28, t27, t23, t12;];
f_new  = t1;
