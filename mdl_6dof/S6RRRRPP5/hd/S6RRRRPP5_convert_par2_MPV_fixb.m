% Return the minimum parameter vector for
% S6RRRRPP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% mrSges [7x3]
%  first moment of all robot links (mass times center of mass in body frames)
%  rows: links of the robot (starting with base)
%  columns: x-, y-, z-coordinates
% Ifges [7x6]
%   inertia of all robot links about their respective body frame origins, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertial_parameters_convert_par1_par2.m)
% 
% Output:
% MPV [32x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 21:10
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6RRRRPP5_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP5_convert_par2_MPV_fixb: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPP5_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRPP5_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRPP5_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t130 = (m(4) + m(5));
t131 = (pkin(9) ^ 2);
t133 = (pkin(3) ^ 2);
t139 = (Ifges(4,2) + (t131 + t133) * m(5));
t138 = (-Ifges(5,2) - Ifges(7,2) - Ifges(6,3));
t137 = -pkin(9) * m(5) - mrSges(5,3);
t126 = (mrSges(4,3) - t137);
t136 = pkin(8) * t130 + t126;
t135 = 2 * pkin(9) * mrSges(5,3) + 2 * pkin(8) * t126 - t138 + t139;
t134 = (pkin(2) ^ 2);
t132 = pkin(8) ^ 2;
t128 = (m(3) + t130);
t1 = [Ifges(2,3) + Ifges(3,2) + t134 * t130 + 2 * pkin(7) * mrSges(3,3) + (pkin(1) ^ 2 + pkin(7) ^ 2) * t128; pkin(1) * t128 + mrSges(2,1); -pkin(7) * t128 + mrSges(2,2) - mrSges(3,3); Ifges(3,1) - Ifges(3,2) + (t132 - t134) * t130 + t135; pkin(2) * t136 + Ifges(3,4); Ifges(3,5); Ifges(3,6); Ifges(3,3) + (t132 + t134) * t130 + t135; pkin(2) * t130 + mrSges(3,1); mrSges(3,2) - t136; m(5) * t131 + Ifges(4,1) - t139; Ifges(4,4); pkin(3) * t137 + Ifges(4,5); Ifges(4,6); m(5) * t133 + Ifges(4,3); m(5) * pkin(3) + mrSges(4,1); mrSges(4,2); Ifges(5,1) + Ifges(6,1) + Ifges(7,1) + t138; Ifges(5,4) - Ifges(6,5) - Ifges(7,4); Ifges(5,5) + Ifges(6,4) - Ifges(7,5); Ifges(5,6) - Ifges(6,6) + Ifges(7,6); Ifges(5,3) + Ifges(6,2) + Ifges(7,3); mrSges(5,1); mrSges(5,2); mrSges(6,1); mrSges(6,2); mrSges(6,3); m(6); mrSges(7,1); mrSges(7,2); mrSges(7,3); m(7);];
MPV  = t1;
