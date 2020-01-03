% Calculate minimal parameter regressor of potential energy for
% S4PRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d3,d4,theta1]';
% 
% Output:
% U_reg [1x18]
%   minimal parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:32
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S4PRRR4_energypot_fixb_regmin_slag_vp(qJ, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRRR4_energypot_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PRRR4_energypot_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRRR4_energypot_fixb_regmin_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:32:39
% EndTime: 2019-12-31 16:32:39
% DurationCPUTime: 0.02s
% Computational Cost: add. (29->10), mult. (25->13), div. (0->0), fcn. (24->6), ass. (0->10)
t78 = pkin(7) + qJ(2);
t74 = sin(t78);
t75 = cos(t78);
t82 = g(1) * t75 + g(2) * t74;
t81 = cos(qJ(3));
t80 = sin(qJ(3));
t79 = qJ(3) + qJ(4);
t77 = cos(t79);
t76 = sin(t79);
t1 = [-g(3) * qJ(1), 0, -t82, g(1) * t74 - g(2) * t75, 0, 0, 0, 0, 0, -g(3) * t80 - t82 * t81, -g(3) * t81 + t82 * t80, 0, 0, 0, 0, 0, -g(3) * t76 - t82 * t77, -g(3) * t77 + t82 * t76;];
U_reg = t1;
