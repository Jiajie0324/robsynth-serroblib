% Convert inverse dynamics regressor matrix to a vector for
% S6RPPRRR6
% Use sparsity of the regressor matrix: 92/(6*30) elements are non-zero
%
% Input:
% RM [6x30]
%   minimal parameter regressor of inverse dynamics joint torque vector
%
% Output:
% RV [92x1]
%   vector of non-Null entries of the input matrix. (columns, then rows).

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 02:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function RV = S6RPPRRR6_invdynJ_fixb_regmin2vec(RM)

% From invdyn_joint_fixb_regressor_minpar_occupancy_vector_matlab.m
t1 = [RM(1, 1); RM(1, 2); RM(1, 3); RM(1, 4); RM(2, 4); RM(1, 5); RM(2, 5); RM(1, 6); RM(2, 6); RM(1, 7); RM(2, 7); RM(3, 7); RM(1, 8); RM(2, 8); RM(3, 8); RM(1, 9); RM(2, 9); RM(3, 9); RM(1, 10); RM(4, 10); RM(1, 11); RM(4, 11); RM(1, 12); RM(4, 12); RM(1, 13); RM(4, 13); RM(4, 14); RM(1, 15); RM(2, 15); RM(3, 15); RM(4, 15); RM(1, 16); RM(2, 16); RM(3, 16); RM(4, 16); RM(1, 17); RM(4, 17); RM(5, 17); RM(1, 18); RM(4, 18); RM(5, 18); RM(1, 19); RM(4, 19); RM(5, 19); RM(1, 20); RM(4, 20); RM(5, 20); RM(1, 21); RM(4, 21); RM(5, 21); RM(1, 22); RM(2, 22); RM(3, 22); RM(4, 22); RM(5, 22); RM(1, 23); RM(2, 23); RM(3, 23); RM(4, 23); RM(5, 23); RM(1, 24); RM(4, 24); RM(5, 24); RM(6, 24); RM(1, 25); RM(4, 25); RM(5, 25); RM(6, 25); RM(1, 26); RM(4, 26); RM(5, 26); RM(6, 26); RM(1, 27); RM(4, 27); RM(5, 27); RM(6, 27); RM(1, 28); RM(4, 28); RM(5, 28); RM(6, 28); RM(1, 29); RM(2, 29); RM(3, 29); RM(4, 29); RM(5, 29); RM(6, 29); RM(1, 30); RM(2, 30); RM(3, 30); RM(4, 30); RM(5, 30); RM(6, 30);];
RV  = t1;
