% Calculate potential energy for
% S3PRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% r_base [3x1]
%   Base position in world frame
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [3x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d2]';
% m_mdh [4x1]
%   mass of all robot links (including the base)
% mrSges [4x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% 
% Output:
% U [1x1]
%   Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U = S3PRP1_energypot_floatb_twist_slag_vp2(qJ, r_base, g, ...
  pkin, m, mrSges)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(3,1),zeros(3,1),zeros(4,1),zeros(4,3)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3PRP1_energypot_floatb_twist_slag_vp2: qJ has to be [3x1] (double)');
assert(isreal(r_base) && all(size(r_base) == [3 1]), ...
  'S3PRP1_energypot_floatb_twist_slag_vp2: r_base has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S3PRP1_energypot_floatb_twist_slag_vp2: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [3 1]), ...
  'S3PRP1_energypot_floatb_twist_slag_vp2: pkin has to be [3x1] (double)');
assert(isreal(m) && all(size(m) == [4 1]), ...
  'S3PRP1_energypot_floatb_twist_slag_vp2: m has to be [4x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [4,3]), ...
  'S3PRP1_energypot_floatb_twist_slag_vp2: mrSges has to be [4x3] (double)');

%% Symbolic Calculation
% From energy_potential_floatb_twist_worldframe_par2_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:02:50
% EndTime: 2019-03-08 18:02:50
% DurationCPUTime: 0.09s
% Computational Cost: add. (38->27), mult. (36->15), div. (0->0), fcn. (12->2), ass. (0->7)
t8 = -m(3) - m(4);
t9 = -m(1) - m(2);
t6 = -m(4) * pkin(2) - mrSges(3,1) - mrSges(4,1);
t5 = m(4) * qJ(3) - mrSges(3,2) + mrSges(4,3);
t4 = cos(qJ(2));
t3 = sin(qJ(2));
t1 = (mrSges(2,2) - mrSges(4,2) - mrSges(1,3) - mrSges(3,3) + t9 * r_base(3) + t8 * (pkin(3) + r_base(3))) * g(3) + (-m(1) * r_base(2) + t6 * t3 + t5 * t4 - mrSges(1,2) - mrSges(2,3) + (-m(2) + t8) * (qJ(1) + r_base(2))) * g(2) + (-mrSges(1,1) - mrSges(2,1) + t8 * pkin(1) + (t8 + t9) * r_base(1) + t6 * t4 - t5 * t3) * g(1);
U  = t1;
