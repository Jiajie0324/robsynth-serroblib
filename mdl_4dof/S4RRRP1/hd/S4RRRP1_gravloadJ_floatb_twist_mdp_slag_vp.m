% Calculate Gravitation load on the joints for
% S4RRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3]';
% MDP [10x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S4RRRP1_convert_par2_MPV_fixb.m
% 
% Output:
% taug [4x1]
%   joint torques required to compensate gravitation load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug = S4RRRP1_gravloadJ_floatb_twist_mdp_slag_vp(qJ, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(3,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRP1_gravloadJ_floatb_twist_mdp_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRRP1_gravloadJ_floatb_twist_mdp_slag_vp: pkin has to be [6x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [10 1]), ...
  'S4RRRP1_gravloadJ_floatb_twist_mdp_slag_vp: MDP has to be [10x1] (double)'); 

%% Symbolic Calculation
% From gravload_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:36:04
% EndTime: 2019-03-08 18:36:04
% DurationCPUTime: 0.04s
% Computational Cost: add. (82->23), mult. (58->33), div. (0->0), fcn. (36->6), ass. (0->14)
t28 = qJ(1) + qJ(2);
t27 = qJ(3) + t28;
t23 = sin(t27);
t24 = cos(t27);
t31 = g(1) * t23 - g(2) * t24;
t35 = t31 * MDP(8) + (g(1) * t24 + g(2) * t23) * MDP(9);
t26 = cos(t28);
t34 = pkin(2) * t26 + pkin(3) * t24;
t25 = sin(t28);
t33 = (g(1) * t25 - g(2) * t26) * MDP(5) + (g(1) * t26 + g(2) * t25) * MDP(6) + t35;
t32 = -pkin(2) * t25 - pkin(3) * t23;
t30 = cos(qJ(1));
t29 = sin(qJ(1));
t1 = [(g(1) * t29 - g(2) * t30) * MDP(2) + (g(1) * t30 + g(2) * t29) * MDP(3) + (-g(1) * (-t29 * pkin(1) + t32) - g(2) * (t30 * pkin(1) + t34)) * MDP(10) + t33; (-g(1) * t32 - g(2) * t34) * MDP(10) + t33; t31 * MDP(10) * pkin(3) + t35; -g(3) * MDP(10);];
taug  = t1;
