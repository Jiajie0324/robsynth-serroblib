% Calculate vector of inverse dynamics joint torques for
% S6RRRPRR2
% The function exploits the sparsity of the regressor matrix
% 
% Input:
% RV [111x1]
%   vector of non-Null entries of the regressor matrix. (columns, then rows).
%   see S6RRRPRR2_invdynJ_fixb_regmin2vec.m
% MDP [33x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRPRR2_convert_par2_MPV_fixb.m
% 
% Output:
% tauJ [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ = S6RRRPRR2_invdynJ_fixb_mdp_slag_vr(RV, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(111,1), zeros(33,1)}
assert(isreal(MDP) && all(size(MDP) == [33 1]), ...
  'S6RRRPRR2_invdynJ_fixb_mdp_slag_vr: MDP has to be [33x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_mult_matlab.m
t1 = [RV(106) * MDP(33) + RV(90) * MDP(30) + RV(95) * MDP(31) + RV(100) * MDP(32) + RV(75) * MDP(27) + RV(80) * MDP(28) + RV(85) * MDP(29) + RV(57) * MDP(23) + RV(61) * MDP(24) + RV(65) * MDP(25) + RV(70) * MDP(26) + RV(41) * MDP(19) + RV(45) * MDP(20) + RV(49) * MDP(21) + RV(53) * MDP(22) + RV(23) * MDP(13) + RV(26) * MDP(14) + RV(31) * MDP(16) + RV(34) * MDP(17) + RV(37) * MDP(18) + RV(8) * MDP(6) + RV(10) * MDP(7) + RV(13) * MDP(9) + RV(15) * MDP(10) + RV(17) * MDP(11) + RV(20) * MDP(12) + RV(1) * MDP(1) + RV(2) * MDP(2) + RV(3) * MDP(3) + RV(4) * MDP(4) + RV(6) * MDP(5); RV(101) * MDP(32) + RV(107) * MDP(33) + RV(86) * MDP(29) + RV(91) * MDP(30) + RV(96) * MDP(31) + RV(71) * MDP(26) + RV(76) * MDP(27) + RV(81) * MDP(28) + RV(58) * MDP(23) + RV(62) * MDP(24) + RV(66) * MDP(25) + RV(42) * MDP(19) + RV(46) * MDP(20) + RV(50) * MDP(21) + RV(54) * MDP(22) + RV(24) * MDP(13) + RV(27) * MDP(14) + RV(29) * MDP(15) + RV(32) * MDP(16) + RV(35) * MDP(17) + RV(38) * MDP(18) + RV(7) * MDP(5) + RV(9) * MDP(6) + RV(11) * MDP(7) + RV(12) * MDP(8) + RV(14) * MDP(9) + RV(16) * MDP(10) + RV(18) * MDP(11) + RV(21) * MDP(12) + RV(5) * MDP(4); RV(19) * MDP(11) + RV(22) * MDP(12) + RV(25) * MDP(13) + RV(28) * MDP(14) + RV(30) * MDP(15) + RV(33) * MDP(16) + RV(36) * MDP(17) + RV(39) * MDP(18) + RV(43) * MDP(19) + RV(47) * MDP(20) + RV(51) * MDP(21) + RV(55) * MDP(22) + RV(59) * MDP(23) + RV(63) * MDP(24) + RV(67) * MDP(25) + RV(72) * MDP(26) + RV(77) * MDP(27) + RV(82) * MDP(28) + RV(87) * MDP(29) + RV(92) * MDP(30) + RV(97) * MDP(31) + RV(102) * MDP(32) + RV(108) * MDP(33); RV(40) * MDP(18) + RV(44) * MDP(19) + RV(68) * MDP(25) + RV(73) * MDP(26) + RV(103) * MDP(32) + RV(109) * MDP(33); RV(48) * MDP(20) + RV(52) * MDP(21) + RV(56) * MDP(22) + RV(60) * MDP(23) + RV(64) * MDP(24) + RV(69) * MDP(25) + RV(74) * MDP(26) + RV(78) * MDP(27) + RV(83) * MDP(28) + RV(88) * MDP(29) + RV(93) * MDP(30) + RV(98) * MDP(31) + RV(104) * MDP(32) + RV(110) * MDP(33); RV(79) * MDP(27) + RV(84) * MDP(28) + RV(89) * MDP(29) + RV(94) * MDP(30) + RV(99) * MDP(31) + RV(105) * MDP(32) + RV(111) * MDP(33);];
tauJ  = t1;
