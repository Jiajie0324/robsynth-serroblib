% Calculate inertial parameters regressor of potential energy for
% S5RRRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% 
% Output:
% U_reg [1x(5*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 12:13
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S5RRRRR5_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR5_energypot_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR5_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR5_energypot_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 12:13:22
% EndTime: 2020-01-03 12:13:22
% DurationCPUTime: 0.06s
% Computational Cost: add. (118->41), mult. (74->45), div. (0->0), fcn. (61->10), ass. (0->24)
t69 = pkin(6) + pkin(5);
t56 = pkin(7) + t69;
t68 = g(1) * t56;
t58 = qJ(1) + qJ(2);
t51 = sin(t58);
t60 = sin(qJ(1));
t67 = t60 * pkin(1) + pkin(2) * t51;
t53 = cos(t58);
t62 = cos(qJ(1));
t66 = -t62 * pkin(1) - pkin(2) * t53;
t54 = qJ(3) + t58;
t47 = sin(t54);
t48 = cos(t54);
t65 = g(2) * t47 - g(3) * t48;
t64 = -g(2) * t60 + g(3) * t62;
t63 = -pkin(9) - pkin(8);
t61 = cos(qJ(4));
t59 = sin(qJ(4));
t57 = qJ(4) + qJ(5);
t52 = cos(t57);
t50 = sin(t57);
t49 = t61 * pkin(4) + pkin(3);
t45 = g(2) * t48 + g(3) * t47;
t1 = [0, 0, 0, 0, 0, 0, t64, -g(2) * t62 - g(3) * t60, -g(1), -g(1) * pkin(5), 0, 0, 0, 0, 0, 0, -g(2) * t51 + g(3) * t53, -g(2) * t53 - g(3) * t51, -g(1), t64 * pkin(1) - g(1) * t69, 0, 0, 0, 0, 0, 0, -t65, -t45, -g(1), -g(2) * t67 - g(3) * t66 - t68, 0, 0, 0, 0, 0, 0, -g(1) * t59 - t65 * t61, -g(1) * t61 + t65 * t59, t45, -t68 - g(2) * (t47 * pkin(3) - t48 * pkin(8) + t67) - g(3) * (-t48 * pkin(3) - t47 * pkin(8) + t66), 0, 0, 0, 0, 0, 0, -g(1) * t50 - t65 * t52, -g(1) * t52 + t65 * t50, t45, -g(1) * (t59 * pkin(4) + t56) - g(2) * (t47 * t49 + t48 * t63 + t67) - g(3) * (t47 * t63 - t48 * t49 + t66);];
U_reg = t1;
