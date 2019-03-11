% Convert inverse dynamics regressor matrix to a vector for
% S4PPRP3
% Use sparsity of the regressor matrix: 14/(4*6) elements are non-zero
%
% Input:
% RM [4x6]
%   minimal parameter regressor of inverse dynamics joint torque vector
%
% Output:
% RV [14x1]
%   vector of non-Null entries of the input matrix. (columns, then rows).

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function RV = S4PPRP3_invdynJ_fixb_regmin2vec(RM)

% From invdyn_joint_fixb_regressor_minpar_occupancy_vector_matlab.m
t1 = [RM(1, 1); RM(1, 2); RM(2, 2); RM(3, 3); RM(1, 4); RM(2, 4); RM(3, 4); RM(1, 5); RM(2, 5); RM(3, 5); RM(1, 6); RM(2, 6); RM(3, 6); RM(4, 6);];
RV  = t1;
