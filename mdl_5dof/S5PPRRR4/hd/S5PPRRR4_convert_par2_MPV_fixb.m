% Return the minimum parameter vector for
% S5PPRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,alpha3,d3,d4,d5,theta1,theta2]';
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
% MPV [19x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:20
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5PPRRR4_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(11,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S5PPRRR4_convert_par2_MPV_fixb: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PPRRR4_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PPRRR4_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PPRRR4_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t133 = (m(5) + m(6));
t137 = 2 * pkin(9) * mrSges(6,3) + Ifges(6,2);
t136 = pkin(9) * m(6) + mrSges(6,3);
t135 = (pkin(4) ^ 2);
t134 = pkin(9) ^ 2;
t1 = [m(2); m(3) + m(4) + t133; Ifges(4,3) + t135 * m(6) + Ifges(5,2) + 2 * pkin(8) * mrSges(5,3) + (pkin(3) ^ 2 + pkin(8) ^ 2) * t133; pkin(3) * t133 + mrSges(4,1); -pkin(8) * t133 + mrSges(4,2) - mrSges(5,3); Ifges(5,1) - Ifges(5,2) + (t134 - t135) * m(6) + t137; t136 * pkin(4) + Ifges(5,4); Ifges(5,5); Ifges(5,6); Ifges(5,3) + (t134 + t135) * m(6) + t137; m(6) * pkin(4) + mrSges(5,1); mrSges(5,2) - t136; Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV = t1;
