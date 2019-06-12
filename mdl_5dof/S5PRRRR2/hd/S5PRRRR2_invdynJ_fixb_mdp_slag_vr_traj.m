% Inverse Dynamik für komplette Trajektorie für
% S5PRRRR2
%
% Eingabe:
% RV_Traj [NTxNOTDEFINED]
%   time series of regressor matrices as vectors
%   Number of time steps (NT) in rows
%   see S5PRRRR2_invdynJ_fixb_regmin2vec.m
% MDP [NOTDEFINEDx1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S5PRRRR2_convert_par2_MPV_fixb.m
%
% Ausgabe:
% TAU [NTx5]
%   Time series of inverse Dynamics joint torque

% Quelle: HybrDyn-Toolbox
% Datum: 2019-06-03 15:11
% Revision: 36f6366a01c4a552c0708fcd8ed3e0fb9da693e2 (2019-05-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function TAU = S5PRRRR2_invdynJ_fixb_mdp_slag_vr_traj(RV_Traj, MDP)

%% Coder Information
%#codegen
%$cgargs {coder.newtype('double',[inf,NOTDEFINED]), zeros(NOTDEFINED,1)}
assert(isreal(RV_Traj) && all(size(RV_Traj,2) == NOTDEFINED), ...
  'S5PRRRR2_invdynJ_fixb_mdp_slag_vr_traj: RV_Traj needs to be [NTxNOTDEFINED] (double)');
assert(isreal(MDP) && all(size(MDP) == [NOTDEFINED 1]), ...
  'S5PRRRR2_invdynJ_fixb_mdp_slag_vr_traj: Dynamics parameter vector MDP has to be [NOTDEFINEDx1] (double)');

%% Inverse Dynamik für jeden Zeitschritt der Trajektorie berechnen
TAU = NaN(size(RV_Traj,1), 5);
for ii = 1:size(RV_Traj,1)
  TAU(ii,:) = S5PRRRR2_invdynJ_fixb_mdp_slag_vr(RV_Traj(ii,:), MDP);
end
