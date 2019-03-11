% Return the minimum parameter vector for
% S3RRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,d1,d2]';
% m_mdh [4x1]
%   mass of all robot links (including the base)
% mrSges [4x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [4x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% MPV [9x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:07
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S3RRP1_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,3),zeros(4,6)}
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S3RRP1_convert_par2_MPV_fixb: pkin has to be [4x1] (double)');
assert(isreal(m) && all(size(m) == [4 1]), ...
  'S3RRP1_convert_par2_MPV_fixb: m has to be [4x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [4,3]), ...
  'S3RRP1_convert_par2_MPV_fixb: mrSges has to be [4x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [4 6]), ...
  'S3RRP1_convert_par2_MPV_fixb: Ifges has to be [4x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t1 = [pkin(1) ^ 2 * m(3) + Ifges(2,3); m(3) * pkin(1) + mrSges(2,1); mrSges(2,2); Ifges(3,3) + Ifges(4,2); mrSges(3,1); mrSges(3,2); mrSges(4,1); mrSges(4,3); m(4);];
MPV  = t1;
