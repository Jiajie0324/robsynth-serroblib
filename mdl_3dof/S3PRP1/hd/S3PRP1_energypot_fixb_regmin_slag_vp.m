% Calculate minimal parameter regressor of potential energy for
% S3PRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [3x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [3x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d2]';
% 
% Output:
% U_reg [1x7]
%   minimal parameter regressor of Potential energy

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function U_reg = S3PRP1_energypot_fixb_regmin_slag_vp(qJ, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(3,1),zeros(3,1),zeros(3,1)}
assert(isreal(qJ) && all(size(qJ) == [3 1]), ...
  'S3PRP1_energypot_fixb_regmin_slag_vp: qJ has to be [3x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S3PRP1_energypot_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [3 1]), ...
  'S3PRP1_energypot_fixb_regmin_slag_vp: pkin has to be [3x1] (double)');

%% Symbolic Calculation
% From energy_potential_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:03:01
% EndTime: 2019-03-08 18:03:01
% DurationCPUTime: 0.02s
% Computational Cost: add. (11->10), mult. (16->12), div. (0->0), fcn. (12->2), ass. (0->5)
t22 = cos(qJ(2));
t21 = sin(qJ(2));
t20 = -g(1) * t22 - g(2) * t21;
t19 = g(1) * t21 - g(2) * t22;
t1 = [-g(2) * qJ(1), 0, t20, t19, t20, -t19, -g(1) * (t22 * pkin(2) + t21 * qJ(3) + pkin(1)) - g(2) * (t21 * pkin(2) - t22 * qJ(3) + qJ(1)) - g(3) * pkin(3);];
U_reg  = t1;
