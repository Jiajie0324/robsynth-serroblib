% Convert inverse dynamics regressor matrix to a vector for
% S5PPRPR1
% Use sparsity of the regressor matrix: 40/(5*16) elements are non-zero
%
% Input:
% RM [5x16]
%   minimal parameter regressor of inverse dynamics joint torque vector
%
% Output:
% RV [40x1]
%   vector of non-Null entries of the input matrix. (columns, then rows).

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:01
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function RV = S5PPRPR1_invdynJ_fixb_regmin2vec(RM)

% From invdyn_joint_fixb_regressor_minpar_occupancy_vector_matlab.m
t1 = [RM(1, 1); RM(1, 2); RM(2, 2); RM(3, 3); RM(1, 4); RM(3, 4); RM(1, 5); RM(3, 5); RM(1, 6); RM(3, 6); RM(4, 6); RM(1, 7); RM(3, 7); RM(4, 7); RM(1, 8); RM(3, 8); RM(4, 8); RM(1, 9); RM(2, 9); RM(3, 9); RM(4, 9); RM(3, 10); RM(5, 10); RM(3, 11); RM(5, 11); RM(3, 12); RM(5, 12); RM(3, 13); RM(5, 13); RM(5, 14); RM(1, 15); RM(2, 15); RM(3, 15); RM(4, 15); RM(5, 15); RM(1, 16); RM(2, 16); RM(3, 16); RM(4, 16); RM(5, 16);];
RV = t1;
