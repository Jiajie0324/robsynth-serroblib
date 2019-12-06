% Calculate joint inertia matrix for
% S5PRPPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta3]';
% MDP [15x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S5PRPPR3_convert_par2_MPV_fixb.m
% 
% Output:
% Mq [5x5]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:27
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5PRPPR3_inertiaJ_mdp_slag_vp(qJ, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(8,1),zeros(15,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPPR3_inertiaJ_mdp_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPPR3_inertiaJ_mdp_slag_vp: pkin has to be [8x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [15 1]), ...
  'S5PRPPR3_inertiaJ_mdp_slag_vp: MDP has to be [15x1] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:26:55
% EndTime: 2019-12-05 15:26:56
% DurationCPUTime: 0.09s
% Computational Cost: add. (59->30), mult. (106->42), div. (0->0), fcn. (94->6), ass. (0->20)
t44 = MDP(5) + MDP(8);
t43 = MDP(5) * pkin(2);
t28 = sin(pkin(8));
t24 = t28 * pkin(2) + qJ(4);
t42 = t24 * MDP(8);
t29 = cos(pkin(8));
t27 = -t29 * pkin(2) - pkin(3);
t41 = t27 * MDP(8);
t30 = sin(qJ(5));
t40 = t30 * MDP(14);
t32 = cos(qJ(5));
t39 = t32 * MDP(15);
t37 = MDP(6) + t41;
t36 = t32 * MDP(14) - t30 * MDP(15);
t35 = -t39 - t40;
t33 = cos(qJ(2));
t31 = sin(qJ(2));
t21 = t28 * t33 + t29 * t31;
t19 = t28 * t31 - t29 * t33;
t1 = [MDP(1) + t44 * (t19 ^ 2 + t21 ^ 2); t33 * MDP(3) - t31 * MDP(4) + (-t29 * t43 + t37) * t19 + (t28 * t43 + MDP(7) - t35 + t42) * t21; MDP(2) + (t28 ^ 2 + t29 ^ 2) * MDP(5) * pkin(2) ^ 2 + (-0.2e1 * t30 * MDP(10) + MDP(9) * t32) * t32 + (0.2e1 * MDP(6) + t41) * t27 + (0.2e1 * MDP(7) + 0.2e1 * t39 + 0.2e1 * t40 + t42) * t24; 0; 0; t44; t19 * MDP(8); t37; 0; MDP(8); t36 * t19; t32 * MDP(11) - t30 * MDP(12) + t36 * (-pkin(6) + t27); t35; t36; MDP(13);];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;
