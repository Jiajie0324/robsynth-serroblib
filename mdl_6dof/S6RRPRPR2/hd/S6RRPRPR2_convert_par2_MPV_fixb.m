% Return the minimum parameter vector for
% S6RRPRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3]';
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
% MPV [30x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 10:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6RRPRPR2_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR2_convert_par2_MPV_fixb: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRPR2_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RRPRPR2_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RRPRPR2_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t131 = (pkin(8) ^ 2);
t133 = (pkin(3) ^ 2);
t142 = (pkin(9) * mrSges(7,3));
t126 = 2 * t142;
t130 = (pkin(9) ^ 2);
t132 = (pkin(5) ^ 2);
t136 = (Ifges(5,2) + Ifges(7,2) + Ifges(6,3) + (t130 + t132) * m(7));
t134 = 2 * pkin(8) * mrSges(5,3) + t126 + t136;
t118 = Ifges(4,2) + (t131 + t133) * m(5) + t134;
t119 = t131 * m(5) + Ifges(4,1) + t134;
t143 = -t118 + t119;
t128 = sin(pkin(10));
t129 = cos(pkin(10));
t141 = t128 * t129;
t124 = t128 ^ 2;
t125 = t129 ^ 2;
t140 = t125 - t124;
t139 = Ifges(4,4) * t141;
t138 = -pkin(8) * m(5) - mrSges(5,3);
t137 = -pkin(9) * m(7) - mrSges(7,3);
t122 = m(5) * pkin(3) + mrSges(4,1);
t135 = -t128 * mrSges(4,2) + t129 * t122;
t120 = t138 * pkin(3) + Ifges(4,5);
t1 = [Ifges(2,3) + Ifges(3,2) + t124 * t119 + 0.2e1 * t139 + t125 * t118 + (2 * pkin(7) * mrSges(3,3)) + ((pkin(1) ^ 2 + pkin(7) ^ 2) * m(3)); m(3) * pkin(1) + mrSges(2,1); -pkin(7) * m(3) + mrSges(2,2) - mrSges(3,3); t140 * t143 + Ifges(3,1) - Ifges(3,2) - 0.4e1 * t139; t140 * Ifges(4,4) + t141 * t143 + Ifges(3,4); -t128 * Ifges(4,6) + t129 * t120 + Ifges(3,5); t129 * Ifges(4,6) + t128 * t120 + Ifges(3,6); (t133 * m(5)) + 0.2e1 * pkin(2) * t135 + Ifges(3,3) + Ifges(4,3); mrSges(3,1) + t135; t129 * mrSges(4,2) + t128 * t122 + mrSges(3,2); mrSges(4,3) - t138; m(4) + m(5); t132 * m(7) + Ifges(5,1) + Ifges(6,2) - t136 - 2 * t142; Ifges(5,4) + Ifges(6,6); t137 * pkin(5) - Ifges(6,4) + Ifges(5,5); Ifges(5,6) - Ifges(6,5); m(7) * t130 + Ifges(6,1) + Ifges(7,2) + Ifges(5,3) + t126; mrSges(5,1); mrSges(5,2); m(7) * pkin(5) + mrSges(6,1); mrSges(6,2) + t137; mrSges(6,3); m(6) + m(7); Ifges(7,1) - Ifges(7,2); Ifges(7,4); Ifges(7,5); Ifges(7,6); Ifges(7,3); mrSges(7,1); mrSges(7,2);];
MPV  = t1;
