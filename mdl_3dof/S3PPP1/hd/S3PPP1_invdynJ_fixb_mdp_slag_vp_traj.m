% Inverse Dynamik für komplette Trajektorie für
% S3PPP1
%
% Eingabe:
% Q [NTx3]
%   Trajektorie von Gelenkpositionen (NT Zeitschritte in den Zeilen)
% QD [NTx3]
%   Trajektorie von Gelenkgeschwindigkeiten
% QDD [NTx3]
%   Trajektorie von Gelenkbeschleunigungen
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [3x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,theta1]';
% MDP [3x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S3PPP1_convert_par2_MPV_fixb.m
%
% Ausgabe:
% TAU [NTx3]
%   Time series of inverse Dynamics joint torque

% Quelle: HybrDyn-Toolbox
% Datum: 2019-04-17 09:48
% Revision: 3acd05283b8979b361f80d69cfa1c98d98241298 (2019-04-12)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function TAU = S3PPP1_invdynJ_fixb_mdp_slag_vp_traj(Q, QD, QDD, g, pkin, MDP)

%% Coder Information
%#codegen
%$cgargs {coder.newtype('double',[inf,3]),
%$cgargs  coder.newtype('double',[inf,3]),
%$cgargs  coder.newtype('double',[inf,3]),
%$cgargs  zeros(3,1), zeros(3,1), zeros(3,1)}
assert(isreal(Q) && all(size(Q,2) == 3), ...
  'S3PPP1_invdynJ_fixb_mdp_slag_vp_traj: Q needs to be [NTx3] (double)');
assert(isreal(QD) && all(size(QD,2) == 3), ...
  'S3PPP1_invdynJ_fixb_mdp_slag_vp_traj: QD needs to be [NTx3] (double)');
assert(isreal(QDD) && all(size(QDD,2) == 3), ...
  'S3PPP1_invdynJ_fixb_mdp_slag_vp_traj: QDD needs to be [NTx3] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S3PPP1_invdynJ_fixb_mdp_slag_vp_traj: Gravity vector g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [3 1]), ...
  'S3PPP1_invdynJ_fixb_mdp_slag_vp_traj: Kinematic parameters pkin have to be [3x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [3 1]), ...
  'S3PPP1_invdynJ_fixb_mdp_slag_vp_traj: Dynamics parameter vector MDP has to be [3x1] (double)');

%% Inverse Dynamik für jeden Zeitschritt der Trajektorie berechnen
TAU = NaN(size(Q));
for k = 1:size(Q,1)
  TAU(k,:) = S3PPP1_invdynJ_fixb_mdp_slag_vp(Q(k,:)', QD(k,:)', QDD(k,:)', g, pkin, MDP);
end