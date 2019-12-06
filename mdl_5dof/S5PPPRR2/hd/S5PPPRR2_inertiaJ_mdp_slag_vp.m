% Calculate joint inertia matrix for
% S5PPPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d4,d5,theta1,theta2,theta3]';
% MDP [13x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S5PPPRR2_convert_par2_MPV_fixb.m
% 
% Output:
% Mq [5x5]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 14:59
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5PPPRR2_inertiaJ_mdp_slag_vp(qJ, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(9,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPPRR2_inertiaJ_mdp_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PPPRR2_inertiaJ_mdp_slag_vp: pkin has to be [9x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [13 1]), ...
  'S5PPPRR2_inertiaJ_mdp_slag_vp: MDP has to be [13x1] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 14:59:38
% EndTime: 2019-12-05 14:59:38
% DurationCPUTime: 0.06s
% Computational Cost: add. (37->27), mult. (92->51), div. (0->0), fcn. (89->8), ass. (0->19)
t29 = sin(pkin(9));
t30 = sin(pkin(8));
t43 = t29 * t30;
t36 = cos(qJ(4));
t42 = t29 * t36;
t31 = cos(pkin(9));
t41 = t30 * t31;
t40 = t29 ^ 2 + t31 ^ 2;
t35 = cos(qJ(5));
t39 = t35 * MDP(12);
t33 = sin(qJ(5));
t38 = -t33 * MDP(12) - t35 * MDP(13);
t37 = -t33 * MDP(13) + MDP(5) + t39;
t34 = sin(qJ(4));
t32 = cos(pkin(8));
t28 = t32 ^ 2;
t26 = t30 ^ 2;
t24 = -t32 * t34 + t36 * t41;
t1 = [MDP(1) + (t26 + t28) * MDP(2) + (t40 * t26 + t28) * MDP(3); 0; t40 * MDP(3) + MDP(2); -t32 * MDP(3); 0; MDP(3); -t24 * MDP(6) - t37 * (t32 * t36 + t34 * t41); (-MDP(6) * t36 - t37 * t34) * t29; -t34 * MDP(6) + t37 * t36; 0.2e1 * pkin(4) * t39 + MDP(4) + (-0.2e1 * MDP(13) * pkin(4) + MDP(7) * t33 + 0.2e1 * MDP(8) * t35) * t33; (-t24 * t33 + t35 * t43) * MDP(12) + (-t24 * t35 - t33 * t43) * MDP(13); (-t35 * t31 - t33 * t42) * MDP(12) + (t33 * t31 - t35 * t42) * MDP(13); t38 * t34; t35 * MDP(10) + t33 * MDP(9) + t38 * pkin(6); MDP(11);];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;
