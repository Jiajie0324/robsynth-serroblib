% Return the minimum parameter vector for
% S6RRRPRP9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5]';
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
% Datum: 2019-03-09 17:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6RRRPRP9_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRPRP9_convert_par2_MPV_fixb: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRP9_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRRPRP9_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRRPRP9_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t146 = (-Ifges(6,2) - Ifges(7,3));
t138 = (pkin(9) ^ 2);
t140 = (pkin(4) ^ 2);
t145 = (Ifges(4,2) + Ifges(5,3) + (t138 + t140) * m(6));
t144 = pkin(8) * m(4) + mrSges(4,3);
t143 = pkin(9) * m(6) + mrSges(6,3);
t142 = 2 * pkin(8) * mrSges(4,3) + 2 * pkin(9) * mrSges(6,3) + t145 - t146;
t141 = (pkin(2) ^ 2);
t139 = pkin(8) ^ 2;
t137 = (m(3) + m(4));
t1 = [Ifges(2,3) + t141 * m(4) + Ifges(3,2) + 2 * pkin(7) * mrSges(3,3) + (pkin(1) ^ 2 + pkin(7) ^ 2) * t137; pkin(1) * t137 + mrSges(2,1); -pkin(7) * t137 + mrSges(2,2) - mrSges(3,3); Ifges(3,1) - Ifges(3,2) + (t139 - t141) * m(4) + t142; t144 * pkin(2) + Ifges(3,4); Ifges(3,5); Ifges(3,6); Ifges(3,3) + (t139 + t141) * m(4) + t142; m(4) * pkin(2) + mrSges(3,1); mrSges(3,2) - t144; t138 * m(6) + Ifges(4,1) + Ifges(5,1) - t145; Ifges(4,4) - Ifges(5,5); t143 * pkin(4) + Ifges(5,4) + Ifges(4,5); Ifges(4,6) - Ifges(5,6); t140 * m(6) + Ifges(5,2) + Ifges(4,3); mrSges(4,1); mrSges(4,2); m(6) * pkin(4) + mrSges(5,1); mrSges(5,2) - t143; mrSges(5,3); m(5) + m(6); Ifges(6,1) + Ifges(7,1) + t146; Ifges(6,4) - Ifges(7,5); Ifges(6,5) + Ifges(7,4); Ifges(6,6) - Ifges(7,6); Ifges(6,3) + Ifges(7,2); mrSges(6,1); mrSges(6,2); mrSges(7,1); mrSges(7,2); mrSges(7,3); m(7);];
MPV  = t1;
