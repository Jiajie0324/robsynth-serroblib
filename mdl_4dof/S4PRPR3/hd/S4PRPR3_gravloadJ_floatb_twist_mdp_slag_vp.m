% Calculate Gravitation load on the joints for
% S4PRPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d2,d4,theta1,theta3]';
% MDP [15x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S4PRPR3_convert_par2_MPV_fixb.m
% 
% Output:
% taug [4x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:21
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S4PRPR3_gravloadJ_floatb_twist_mdp_slag_vp(qJ, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(7,1),zeros(15,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PRPR3_gravloadJ_floatb_twist_mdp_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4PRPR3_gravloadJ_floatb_twist_mdp_slag_vp: pkin has to be [7x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [15 1]), ...
  'S4PRPR3_gravloadJ_floatb_twist_mdp_slag_vp: MDP has to be [15x1] (double)'); 

%% Symbolic Calculation
% From gravload_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:20:55
% EndTime: 2019-12-31 16:20:55
% DurationCPUTime: 0.05s
% Computational Cost: add. (58->19), mult. (53->25), div. (0->0), fcn. (38->6), ass. (0->9)
t18 = pkin(6) + qJ(2);
t14 = sin(t18);
t16 = cos(t18);
t21 = g(1) * t16 + g(2) * t14;
t11 = g(1) * t14 - g(2) * t16;
t17 = pkin(7) + qJ(4);
t15 = cos(t17);
t13 = sin(t17);
t1 = [(-MDP(1) - MDP(8)) * g(3); (-g(1) * (-t14 * pkin(2) + t16 * qJ(3)) - g(2) * (t16 * pkin(2) + t14 * qJ(3))) * MDP(8) + (MDP(4) - MDP(7)) * t21 + (t15 * MDP(14) - t13 * MDP(15) + MDP(5) * cos(pkin(7)) - MDP(6) * sin(pkin(7)) + MDP(3)) * t11; -t11 * MDP(8); (-g(3) * t15 + t21 * t13) * MDP(14) + (g(3) * t13 + t21 * t15) * MDP(15);];
taug = t1;
