% Convert inverse dynamics regressor matrix to a vector for
% S4PRRP5
% Use sparsity of the regressor matrix: 29/(4*13) elements are non-zero
%
% Input:
% RM [4x13]
%   minimal parameter regressor of inverse dynamics joint torque vector
%
% Output:
% RV [29x1]
%   vector of non-Null entries of the input matrix. (columns, then rows).

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:29
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function RV = S4PRRP5_invdynJ_fixb_regmin2vec(RM)

% From invdyn_joint_fixb_regressor_minpar_occupancy_vector_matlab.m
t1 = [RM(1, 1); RM(2, 2); RM(1, 3); RM(2, 3); RM(1, 4); RM(2, 4); RM(2, 5); RM(3, 5); RM(2, 6); RM(3, 6); RM(2, 7); RM(3, 7); RM(2, 8); RM(3, 8); RM(3, 9); RM(1, 10); RM(2, 10); RM(3, 10); RM(1, 11); RM(2, 11); RM(3, 11); RM(1, 12); RM(2, 12); RM(3, 12); RM(4, 12); RM(1, 13); RM(2, 13); RM(3, 13); RM(4, 13);];
RV = t1;
