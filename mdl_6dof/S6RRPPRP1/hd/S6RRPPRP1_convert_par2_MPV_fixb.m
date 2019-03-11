% Return the minimum parameter vector for
% S6RRPPRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,theta3,theta4]';
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
% MPV [27x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6RRPPRP1_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRP1_convert_par2_MPV_fixb: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPPRP1_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPPRP1_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPPRP1_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t138 = (pkin(8) ^ 2);
t139 = (pkin(4) ^ 2);
t148 = (-Ifges(6,2) - Ifges(7,3));
t144 = 2 * pkin(8) * mrSges(6,3) - t148;
t125 = Ifges(5,2) + (t138 + t139) * m(6) + t144;
t126 = t138 * m(6) + Ifges(5,1) + t144;
t134 = sin(pkin(10));
t129 = t134 ^ 2;
t136 = cos(pkin(10));
t131 = t136 ^ 2;
t147 = t134 * t136;
t143 = Ifges(5,4) * t147;
t122 = t129 * t125 + t131 * t126 + Ifges(4,1) - 0.2e1 * t143;
t128 = t139 * m(6) + Ifges(4,2) + Ifges(5,3);
t149 = t122 - t128;
t135 = sin(pkin(9));
t137 = cos(pkin(9));
t146 = t135 * t137;
t130 = t135 ^ 2;
t132 = t137 ^ 2;
t145 = t132 - t130;
t142 = -pkin(8) * m(6) - mrSges(6,3);
t127 = t142 * pkin(4) + Ifges(5,5);
t124 = t134 * Ifges(5,6) - t136 * t127 + Ifges(4,4);
t141 = t124 * t146;
t140 = t137 * mrSges(4,1) - t135 * mrSges(4,2);
t123 = -t136 * Ifges(5,6) - t134 * t127 + Ifges(4,6);
t121 = Ifges(4,5) + (t131 - t129) * Ifges(5,4) + (-t125 + t126) * t147;
t1 = [Ifges(2,3) + Ifges(3,2) + t130 * t122 + 0.2e1 * t141 + t132 * t128 + (2 * pkin(7) * mrSges(3,3)) + ((pkin(1) ^ 2 + pkin(7) ^ 2) * m(3)); m(3) * pkin(1) + mrSges(2,1); -pkin(7) * m(3) + mrSges(2,2) - mrSges(3,3); t145 * t149 + Ifges(3,1) - Ifges(3,2) - 0.4e1 * t141; t145 * t124 + t146 * t149 + Ifges(3,4); t137 * t121 - t135 * t123 + Ifges(3,5); t135 * t121 + t137 * t123 + Ifges(3,6); 0.2e1 * pkin(2) * t140 + t131 * t125 + t129 * t126 + Ifges(3,3) + Ifges(4,3) + 0.2e1 * t143; mrSges(3,1) + t140; t135 * mrSges(4,1) + t137 * mrSges(4,2) + mrSges(3,2); mrSges(4,3); m(4); m(6) * pkin(4) + mrSges(5,1); mrSges(5,2); mrSges(5,3) - t142; m(5) + m(6); Ifges(6,1) + Ifges(7,1) + t148; Ifges(6,4) - Ifges(7,5); Ifges(6,5) + Ifges(7,4); Ifges(6,6) - Ifges(7,6); Ifges(6,3) + Ifges(7,2); mrSges(6,1); mrSges(6,2); mrSges(7,1); mrSges(7,2); mrSges(7,3); m(7);];
MPV  = t1;
