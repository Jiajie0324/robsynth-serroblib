% Calculate minimal parameter regressor of potential energy for
% S5PPRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d3,d4,d5,theta1]';
% 
% Output:
% U_reg [1x15]
%   minimal parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:35
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S5PPRRR5_energypot_fixb_regmin_slag_vp(qJ, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR5_energypot_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPRRR5_energypot_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PPRRR5_energypot_fixb_regmin_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:35:44
% EndTime: 2019-12-31 17:35:44
% DurationCPUTime: 0.03s
% Computational Cost: add. (41->16), mult. (50->27), div. (0->0), fcn. (58->8), ass. (0->16)
t99 = g(3) * qJ(1);
t98 = qJ(3) + qJ(4);
t97 = cos(t98);
t96 = sin(t98);
t89 = sin(pkin(8));
t90 = cos(pkin(8));
t83 = -t89 * t96 - t90 * t97;
t84 = t89 * t97 - t90 * t96;
t95 = g(1) * t83 - g(2) * t84;
t94 = cos(qJ(3));
t93 = cos(qJ(5));
t92 = sin(qJ(3));
t91 = sin(qJ(5));
t86 = t89 * t94 - t90 * t92;
t85 = -t89 * t92 - t90 * t94;
t1 = [-t99, -g(1) * (t90 * pkin(1) + t89 * qJ(2)) - g(2) * (t89 * pkin(1) - t90 * qJ(2)) - t99, 0, g(1) * t85 - g(2) * t86, -g(1) * t86 - g(2) * t85, 0, t95, -g(1) * t84 - g(2) * t83, 0, 0, 0, 0, 0, g(3) * t91 + t95 * t93, g(3) * t93 - t95 * t91;];
U_reg = t1;
