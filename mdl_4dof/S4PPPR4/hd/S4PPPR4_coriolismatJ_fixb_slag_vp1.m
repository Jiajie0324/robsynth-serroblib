% Calculate matrix of centrifugal and coriolis load on the joints for
% S4PPPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d4,theta3]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [5x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% Cq [4x4]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-14 14:04
% Revision: ea61b7cc8771fdd0208f11149c97a676b461e858
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function Cq = S4PPPR4_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(5,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4PPPR4_coriolismatJ_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4PPPR4_coriolismatJ_fixb_slag_vp1: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S4PPPR4_coriolismatJ_fixb_slag_vp1: pkin has to be [5x1] (double)');
assert( isreal(m) && all(size(m) == [5 1]), ...
  'S4PPPR4_coriolismatJ_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4PPPR4_coriolismatJ_fixb_slag_vp1: rSges has to be [5x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [5 6]), ...
  'S4PPPR4_coriolismatJ_fixb_slag_vp1: Icges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-14 14:04:11
% EndTime: 2018-11-14 14:04:11
% DurationCPUTime: 0.06s
% Computational Cost: add. (19->4), mult. (29->7), div. (0->0), fcn. (12->2), ass. (0->5)
t6 = m(5) * qJD(4);
t5 = pkin(5) + qJ(4);
t4 = cos(t5);
t3 = sin(t5);
t1 = [0, 0, 0 (-t4 * rSges(5,1) + t3 * rSges(5,2)) * t6; 0, 0, 0 -(t3 * rSges(5,1) + t4 * rSges(5,2)) * t6; 0, 0, 0, 0; 0, 0, 0, 0;];
Cq  = t1;
