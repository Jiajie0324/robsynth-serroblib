% Calculate inertial parameters regressor of potential energy for
% S4RPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d3,d4,theta2]';
% 
% Output:
% U_reg [1x(4*10)]
%   inertial parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S4RPRR2_energypot_fixb_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRR2_energypot_fixb_reg2_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPRR2_energypot_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RPRR2_energypot_fixb_reg2_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:48:12
% EndTime: 2019-12-31 16:48:12
% DurationCPUTime: 0.04s
% Computational Cost: add. (70->29), mult. (48->32), div. (0->0), fcn. (38->8), ass. (0->18)
t47 = qJ(2) + pkin(4);
t48 = g(3) * (pkin(5) + t47);
t38 = qJ(1) + pkin(7);
t32 = sin(t38);
t40 = sin(qJ(1));
t46 = t40 * pkin(1) + pkin(2) * t32;
t33 = cos(t38);
t42 = cos(qJ(1));
t45 = t42 * pkin(1) + pkin(2) * t33;
t34 = qJ(3) + t38;
t30 = sin(t34);
t31 = cos(t34);
t44 = g(1) * t31 + g(2) * t30;
t43 = -g(1) * t42 - g(2) * t40;
t41 = cos(qJ(4));
t39 = sin(qJ(4));
t27 = g(1) * t30 - g(2) * t31;
t1 = [0, 0, 0, 0, 0, 0, t43, g(1) * t40 - g(2) * t42, -g(3), -g(3) * pkin(4), 0, 0, 0, 0, 0, 0, -g(1) * t33 - g(2) * t32, g(1) * t32 - g(2) * t33, -g(3), t43 * pkin(1) - g(3) * t47, 0, 0, 0, 0, 0, 0, -t44, t27, -g(3), -g(1) * t45 - g(2) * t46 - t48, 0, 0, 0, 0, 0, 0, -g(3) * t39 - t44 * t41, -g(3) * t41 + t44 * t39, -t27, -g(1) * (t31 * pkin(3) + t30 * pkin(6) + t45) - g(2) * (t30 * pkin(3) - t31 * pkin(6) + t46) - t48;];
U_reg = t1;
