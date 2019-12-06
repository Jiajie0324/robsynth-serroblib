% Return the minimum parameter vector for
% S5RPRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[dummy]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% mrSges [6x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [6x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% MPV [27x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:10
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5RPRRR1_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(1,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S5RPRRR1_convert_par2_MPV_fixb: pkin has to be [1x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR1_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRRR1_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPRRR1_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t1 = [Ifges(2,3) + Ifges(3,2) + Ifges(4,2); mrSges(2,1); mrSges(2,2); mrSges(3,1); mrSges(3,3) + mrSges(4,3); m(3) + m(4) + m(5) + m(6); Ifges(4,1) + Ifges(5,2) - Ifges(4,2); Ifges(4,4); Ifges(4,5); Ifges(4,6); Ifges(4,3) + Ifges(5,2); mrSges(4,1); mrSges(4,2) - mrSges(5,3); Ifges(5,1) + Ifges(6,2) - Ifges(5,2); Ifges(5,4); Ifges(5,5); Ifges(5,6); Ifges(5,3) + Ifges(6,2); mrSges(5,1); mrSges(5,2) - mrSges(6,3); Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV = t1;
