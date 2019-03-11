% Return the minimum parameter vector for
% S6RRRRPR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6]';
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
% MPV [35x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 00:07
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6RRRRPR13_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR13_convert_par2_MPV_fixb: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPR13_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRPR13_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRPR13_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t162 = (m(4) + m(5));
t157 = m(3) + t162;
t177 = (t157 * pkin(8));
t168 = (pkin(3) ^ 2);
t176 = (t168 * m(5) + Ifges(4,2));
t164 = (pkin(11) ^ 2);
t167 = (pkin(5) ^ 2);
t175 = (Ifges(5,2) + Ifges(6,3) + (t164 + t167) * m(7));
t174 = 2 * pkin(9) * mrSges(4,3) + t176;
t173 = pkin(10) * m(5) + mrSges(5,3);
t172 = pkin(11) * m(7) + mrSges(7,3);
t171 = pkin(9) * t162 + mrSges(4,3);
t170 = 2 * pkin(10) * mrSges(5,3) + 2 * pkin(11) * mrSges(7,3) + Ifges(7,2) + t175;
t169 = (pkin(2) ^ 2);
t166 = pkin(9) ^ 2;
t165 = pkin(10) ^ 2;
t161 = sin(pkin(6));
t1 = [pkin(1) ^ 2 * t157 + Ifges(2,3) + (t169 * t162 + Ifges(3,2) + (2 * mrSges(3,3) + t177) * pkin(8)) * t161 ^ 2; pkin(1) * t157 + mrSges(2,1); mrSges(2,2) + (-mrSges(3,3) - t177) * t161; Ifges(3,1) - Ifges(3,2) + (t166 - t169) * t162 + t174; pkin(2) * t171 + Ifges(3,4); Ifges(3,5); Ifges(3,6); Ifges(3,3) + (t166 + t169) * t162 + t174; pkin(2) * t162 + mrSges(3,1); mrSges(3,2) - t171; t165 * m(5) + Ifges(4,1) + t170 - t176; pkin(3) * t173 + Ifges(4,4); Ifges(4,5); Ifges(4,6); Ifges(4,3) + (t165 + t168) * m(5) + t170; m(5) * pkin(3) + mrSges(4,1); mrSges(4,2) - t173; m(7) * t164 + Ifges(5,1) + Ifges(6,1) - t175; Ifges(5,4) - Ifges(6,5); pkin(5) * t172 + Ifges(6,4) + Ifges(5,5); Ifges(5,6) - Ifges(6,6); t167 * m(7) + Ifges(6,2) + Ifges(5,3); mrSges(5,1); mrSges(5,2); m(7) * pkin(5) + mrSges(6,1); mrSges(6,2) - t172; mrSges(6,3); m(6) + m(7); Ifges(7,1) - Ifges(7,2); Ifges(7,4); Ifges(7,5); Ifges(7,6); Ifges(7,3); mrSges(7,1); mrSges(7,2);];
MPV  = t1;
