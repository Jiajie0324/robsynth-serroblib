% Calculate Gravitation load on the joints for
% S3PRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d2,d3]';
% m_mdh [4x1]
%   mass of all robot links (including the base)
% rSges [4x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% 
% Output:
% taug [3x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 10:13
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function taug = S3PRR2_gravloadJ_floatb_twist_slag_vp1(qJ, g, ...
  pkin, m, rSges)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(4,1),zeros(4,1),zeros(4,3)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3PRR2_gravloadJ_floatb_twist_slag_vp1: qJ has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S3PRR2_gravloadJ_floatb_twist_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S3PRR2_gravloadJ_floatb_twist_slag_vp1: pkin has to be [4x1] (double)');
assert( isreal(m) && all(size(m) == [4 1]), ...
  'S3PRR2_gravloadJ_floatb_twist_slag_vp1: m has to be [4x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [4,3]), ...
  'S3PRR2_gravloadJ_floatb_twist_slag_vp1: rSges has to be [4x3] (double)');

%% Symbolic Calculation
% From joint_gravload_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 10:12:45
% EndTime: 2018-11-14 10:12:45
% DurationCPUTime: 0.07s
% Computational Cost: add. (23->14), mult. (26->20), div. (0->0), fcn. (14->4), ass. (0->8)
t4 = qJ(2) + qJ(3);
t2 = sin(t4);
t3 = cos(t4);
t8 = t3 * rSges(4,1) - t2 * rSges(4,2);
t7 = -t2 * rSges(4,1) - t3 * rSges(4,2);
t6 = cos(qJ(2));
t5 = sin(qJ(2));
t1 = [(-m(2) - m(3) - m(4)) * g(1), -m(3) * (g(1) * (t6 * rSges(3,1) - t5 * rSges(3,2)) + g(2) * (-t5 * rSges(3,1) - t6 * rSges(3,2))) - m(4) * (g(1) * (t6 * pkin(2) + t8) + g(2) * (-t5 * pkin(2) + t7)) -m(4) * (g(1) * t8 + g(2) * t7)];
taug  = t1(:);
