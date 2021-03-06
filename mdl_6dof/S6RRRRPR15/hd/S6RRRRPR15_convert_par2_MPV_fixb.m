% Return the minimum parameter vector for
% S6RRRRPR15
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d6]';
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
% Datum: 2019-03-10 00:54
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6RRRRPR15_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR15_convert_par2_MPV_fixb: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRPR15_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRRPR15_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRRPR15_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t194 = sin(pkin(7));
t197 = (m(4) + m(5));
t208 = pkin(10) * t197 + mrSges(4,3);
t216 = t208 * t194;
t196 = cos(pkin(7));
t215 = t208 * t196;
t214 = (pkin(10) * mrSges(4,3));
t213 = (pkin(12) * mrSges(7,3));
t191 = m(3) + t197;
t212 = t191 * pkin(9);
t203 = (pkin(3) ^ 2);
t186 = (t203 * m(5) + Ifges(4,2));
t211 = pkin(11) * m(5) + mrSges(5,3);
t210 = -pkin(12) * m(7) - mrSges(7,3);
t209 = t186 + 2 * t214;
t199 = (pkin(12) ^ 2);
t202 = (pkin(5) ^ 2);
t207 = (Ifges(5,2) + Ifges(7,2) + Ifges(6,3) + (t199 + t202) * m(7));
t192 = 2 * t213;
t206 = 2 * pkin(11) * mrSges(5,3) + t192 + t207;
t201 = (pkin(10) ^ 2);
t205 = t201 * t197 + t209;
t204 = pkin(2) ^ 2;
t200 = pkin(11) ^ 2;
t195 = sin(pkin(6));
t190 = t196 ^ 2;
t184 = t201 * t190 + t204;
t183 = mrSges(3,3) + t215;
t1 = [pkin(1) ^ 2 * t191 + Ifges(2,3) + (t184 * t197 + Ifges(3,2) + t209 * t190 + (0.2e1 * t183 + t212) * pkin(9)) * t195 ^ 2; pkin(1) * t191 + mrSges(2,1); mrSges(2,2) + (-t183 - t212) * t195; -t190 * t186 + Ifges(3,1) - Ifges(3,2) + (-t184 + t201) * t197 + (-0.2e1 * t190 + 0.2e1) * t214 + t186; pkin(2) * t216 + Ifges(3,4); -pkin(2) * t215 + Ifges(3,5); t205 * t196 * t194 + Ifges(3,6); t205 * t194 ^ 2 + t204 * t197 + Ifges(3,3); pkin(2) * t197 + mrSges(3,1); mrSges(3,2) - t216; t200 * m(5) + Ifges(4,1) - t186 + t206; t211 * pkin(3) + Ifges(4,4); Ifges(4,5); Ifges(4,6); Ifges(4,3) + (t200 + t203) * m(5) + t206; m(5) * pkin(3) + mrSges(4,1); mrSges(4,2) - t211; t202 * m(7) + Ifges(5,1) + Ifges(6,2) - t207 - 2 * t213; Ifges(5,4) + Ifges(6,6); t210 * pkin(5) - Ifges(6,4) + Ifges(5,5); Ifges(5,6) - Ifges(6,5); m(7) * t199 + Ifges(6,1) + Ifges(7,2) + Ifges(5,3) + t192; mrSges(5,1); mrSges(5,2); m(7) * pkin(5) + mrSges(6,1); mrSges(6,2) + t210; mrSges(6,3); m(6) + m(7); Ifges(7,1) - Ifges(7,2); Ifges(7,4); Ifges(7,5); Ifges(7,6); Ifges(7,3); mrSges(7,1); mrSges(7,2);];
MPV  = t1;
