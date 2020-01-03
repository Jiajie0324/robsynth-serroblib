% Calculate inertial parameters regressor of potential energy for
% S4PRRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,theta1]';
% 
% Output:
% U_reg [1x(4*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:28
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S4PRRP4_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRP4_energypot_fixb_reg2_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRRP4_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4PRRP4_energypot_fixb_reg2_slag_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:27:57
% EndTime: 2019-12-31 16:27:57
% DurationCPUTime: 0.08s
% Computational Cost: add. (68->29), mult. (66->32), div. (0->0), fcn. (56->6), ass. (0->18)
t37 = pkin(4) + qJ(1);
t45 = g(3) * t37;
t34 = pkin(6) + qJ(2);
t30 = sin(t34);
t31 = cos(t34);
t36 = cos(pkin(6));
t44 = t36 * pkin(1) + t31 * pkin(2) + t30 * pkin(5);
t35 = sin(pkin(6));
t43 = t35 * pkin(1) + t30 * pkin(2) - t31 * pkin(5);
t42 = g(1) * t31 + g(2) * t30;
t41 = -g(1) * t36 - g(2) * t35;
t38 = sin(qJ(3));
t39 = cos(qJ(3));
t40 = pkin(3) * t39 + qJ(4) * t38;
t25 = g(1) * t30 - g(2) * t31;
t24 = -g(3) * t38 - t42 * t39;
t23 = -g(3) * t39 + t42 * t38;
t1 = [0, 0, 0, 0, 0, 0, t41, g(1) * t35 - g(2) * t36, -g(3), -g(3) * qJ(1), 0, 0, 0, 0, 0, 0, -t42, t25, -g(3), t41 * pkin(1) - t45, 0, 0, 0, 0, 0, 0, t24, t23, -t25, -g(1) * t44 - g(2) * t43 - t45, 0, 0, 0, 0, 0, 0, t24, -t25, -t23, -g(1) * (t40 * t31 + t44) - g(2) * (t40 * t30 + t43) - g(3) * (t38 * pkin(3) - t39 * qJ(4) + t37);];
U_reg = t1;
