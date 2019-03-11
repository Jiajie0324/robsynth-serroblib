% Convert inverse dynamics regressor matrix to a vector for
% S6RPPPRR1
% Use sparsity of the regressor matrix: 68/(6*24) elements are non-zero
%
% Input:
% RM [6x24]
%   minimal parameter regressor of inverse dynamics joint torque vector
%
% Output:
% RV [68x1]
%   vector of non-Null entries of the input matrix. (columns, then rows).

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:30
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function RV = S6RPPPRR1_invdynJ_fixb_regmin2vec(RM)

% From invdyn_joint_fixb_regressor_minpar_occupancy_vector_matlab.m
t1 = [RM(1, 1); RM(1, 2); RM(1, 3); RM(1, 4); RM(2, 4); RM(1, 5); RM(3, 5); RM(1, 6); RM(3, 6); RM(1, 7); RM(2, 7); RM(3, 7); RM(1, 8); RM(3, 8); RM(4, 8); RM(1, 9); RM(3, 9); RM(4, 9); RM(1, 10); RM(2, 10); RM(3, 10); RM(4, 10); RM(1, 11); RM(5, 11); RM(1, 12); RM(5, 12); RM(1, 13); RM(5, 13); RM(1, 14); RM(5, 14); RM(5, 15); RM(1, 16); RM(2, 16); RM(3, 16); RM(4, 16); RM(5, 16); RM(1, 17); RM(2, 17); RM(3, 17); RM(4, 17); RM(5, 17); RM(1, 18); RM(5, 18); RM(6, 18); RM(1, 19); RM(5, 19); RM(6, 19); RM(1, 20); RM(5, 20); RM(6, 20); RM(1, 21); RM(5, 21); RM(6, 21); RM(1, 22); RM(5, 22); RM(6, 22); RM(1, 23); RM(2, 23); RM(3, 23); RM(4, 23); RM(5, 23); RM(6, 23); RM(1, 24); RM(2, 24); RM(3, 24); RM(4, 24); RM(5, 24); RM(6, 24);];
RV  = t1;
