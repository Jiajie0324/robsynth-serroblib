% Calculate minimal parameter regressor of gravitation load for
% S4PPRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g_base [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d3]';
% 
% Output:
% taug_reg [4x6]
%   minimal parameter regressor of gravitation joint torque vector

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 13:58
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function taug_reg = S4PPRP3_gravloadJ_regmin_slag_vp(qJ, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPRP3_gravloadJ_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4PPRP3_gravloadJ_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S4PPRP3_gravloadJ_regmin_slag_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From joint_gravload_fixb_regressor_minpar_matlab.m
t1 = sin(qJ(3));
t2 = cos(qJ(3));
t3 = -g(1) * t2 + g(2) * t1;
t4 = [-g(2), -g(2), 0, 0, 0, -g(2); 0, -g(1), 0, 0, 0, -g(1); 0, 0, 0, t3, g(1) * t1 + g(2) * t2, t3 * pkin(3); 0, 0, 0, 0, 0, g(3);];
taug_reg  = t4;
