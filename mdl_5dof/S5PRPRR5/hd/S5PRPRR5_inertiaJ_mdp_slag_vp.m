% Calculate joint inertia matrix for
% S5PRPRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1,theta3]';
% MDP [22x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S5PRPRR5_convert_par2_MPV_fixb.m
% 
% Output:
% Mq [5x5]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:55
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5PRPRR5_inertiaJ_mdp_slag_vp(qJ, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(9,1),zeros(22,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR5_inertiaJ_mdp_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR5_inertiaJ_mdp_slag_vp: pkin has to be [9x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [22 1]), ...
  'S5PRPRR5_inertiaJ_mdp_slag_vp: MDP has to be [22x1] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:54:42
% EndTime: 2019-12-05 15:54:43
% DurationCPUTime: 0.17s
% Computational Cost: add. (178->56), mult. (364->86), div. (0->0), fcn. (391->8), ass. (0->36)
t65 = sin(pkin(9));
t66 = cos(pkin(9));
t68 = sin(qJ(4));
t71 = cos(qJ(4));
t56 = t68 * t65 - t71 * t66;
t61 = -t66 * pkin(3) - pkin(2);
t89 = 0.2e1 * t56 * pkin(4) + 0.2e1 * t61;
t88 = 0.2e1 * t61;
t87 = pkin(2) * MDP(8);
t86 = pkin(6) + qJ(3);
t57 = t71 * t65 + t68 * t66;
t69 = sin(qJ(2));
t52 = t57 * t69;
t53 = t56 * t69;
t67 = sin(qJ(5));
t70 = cos(qJ(5));
t85 = (-t70 * t52 + t67 * t53) * MDP(21) + (t67 * t52 + t70 * t53) * MDP(22);
t84 = t65 ^ 2 + t66 ^ 2;
t83 = t65 * MDP(6);
t82 = t66 * MDP(5);
t49 = t70 * t56 + t67 * t57;
t81 = t49 * MDP(21);
t80 = t56 * MDP(14);
t58 = t86 * t65;
t59 = t86 * t66;
t79 = -t71 * t58 - t68 * t59;
t78 = t84 * qJ(3);
t45 = -t57 * pkin(7) + t79;
t76 = t68 * t58 - t71 * t59;
t46 = -t56 * pkin(7) - t76;
t50 = -t67 * t56 + t70 * t57;
t77 = t50 * MDP(18) - t49 * MDP(19) + (t70 * t45 - t67 * t46) * MDP(21) + (-t67 * t45 - t70 * t46) * MDP(22);
t75 = (MDP(21) * t70 - MDP(22) * t67) * pkin(4);
t74 = t57 * MDP(15) + t50 * MDP(22) + t80 + t81 - t82 + t83 - t87;
t72 = cos(qJ(2));
t1 = [MDP(1) + (t69 ^ 2 * t84 + t72 ^ 2) * MDP(8); (MDP(7) * t84 + MDP(8) * t78 - MDP(4)) * t69 + (MDP(3) - t74) * t72; t80 * t88 + t81 * t89 + MDP(2) + t84 * MDP(8) * qJ(3) ^ 2 + 0.2e1 * MDP(7) * t78 + (0.2e1 * t82 - 0.2e1 * t83 + t87) * pkin(2) + (-0.2e1 * t56 * MDP(10) + MDP(15) * t88 + MDP(9) * t57) * t57 + (MDP(16) * t50 - 0.2e1 * t49 * MDP(17) + MDP(22) * t89) * t50; -t72 * MDP(8); t74; MDP(8); -t52 * MDP(14) + t53 * MDP(15) + t85; t57 * MDP(11) - t56 * MDP(12) + MDP(14) * t79 + MDP(15) * t76 + t77; 0; MDP(13) + MDP(20) + 0.2e1 * t75; t85; t77; 0; MDP(20) + t75; MDP(20);];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;
