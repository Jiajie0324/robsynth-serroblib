% Calculate time derivative of joint inertia matrix for
% S3PRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% qJD [3x1]
%   Generalized joint velocities
% pkin [3x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d2]';
% m_mdh [4x1]
%   mass of all robot links (including the base)
% mrSges [4x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [4x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% MqD [3x3]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S3PRP1_inertiaDJ_slag_vp2(qJ, qJD, ...
  pkin, m, mrSges, Ifges)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(3,1),zeros(4,1),zeros(4,3),zeros(4,6)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3PRP1_inertiaDJ_slag_vp2: qJ has to be [3x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [3 1]), ...
  'S3PRP1_inertiaDJ_slag_vp2: qJD has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [3 1]), ...
  'S3PRP1_inertiaDJ_slag_vp2: pkin has to be [3x1] (double)');
assert(isreal(m) && all(size(m) == [4 1]), ...
  'S3PRP1_inertiaDJ_slag_vp2: m has to be [4x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [4,3]), ...
  'S3PRP1_inertiaDJ_slag_vp2: mrSges has to be [4x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [4 6]), ...
  'S3PRP1_inertiaDJ_slag_vp2: Ifges has to be [4x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:02:55
% EndTime: 2019-03-08 18:02:55
% DurationCPUTime: 0.06s
% Computational Cost: add. (7->6), mult. (25->10), div. (0->0), fcn. (8->2), ass. (0->4)
t4 = m(4) * qJ(3) + mrSges(4,3);
t1 = sin(qJ(2));
t3 = m(4) * t1;
t2 = [0; qJD(3) * t3 + ((-mrSges(3,2) + t4) * cos(qJ(2)) + (-m(4) * pkin(2) - mrSges(3,1) - mrSges(4,1)) * t1) * qJD(2); 0.2e1 * t4 * qJD(3); qJD(2) * t3; 0; 0;];
%% Postprocessing: Reshape Output
% From vec2symmat_3_matlab.m
res = [t2(1) t2(2) t2(4); t2(2) t2(3) t2(5); t2(4) t2(5) t2(6);];
Mq  = res;
