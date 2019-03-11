% Return the minimum parameter vector for
% S6RPRPPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta2,theta4,theta5]';
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
% MPV [24x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 02:40
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6RPRPPR1_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPPR1_convert_par2_MPV_fixb: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPPR1_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRPPR1_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRPPR1_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t130 = (pkin(8) ^ 2);
t131 = (pkin(5) ^ 2);
t140 = 2 * pkin(8) * mrSges(7,3) + Ifges(7,2);
t113 = Ifges(6,2) + (t130 + t131) * m(7) + t140;
t114 = m(7) * t130 + Ifges(6,1) + t140;
t124 = sin(pkin(11));
t119 = t124 ^ 2;
t127 = cos(pkin(11));
t121 = t127 ^ 2;
t139 = t124 * t127;
t136 = Ifges(6,4) * t139;
t110 = t119 * t113 + t121 * t114 + Ifges(5,1) - 0.2e1 * t136;
t116 = t131 * m(7) + Ifges(5,2) + Ifges(6,3);
t141 = t110 - t116;
t125 = sin(pkin(10));
t128 = cos(pkin(10));
t138 = t125 * t128;
t120 = t125 ^ 2;
t122 = t128 ^ 2;
t137 = t122 - t120;
t135 = -pkin(8) * m(7) - mrSges(7,3);
t115 = t135 * pkin(5) + Ifges(6,5);
t112 = t124 * Ifges(6,6) - t127 * t115 + Ifges(5,4);
t134 = t112 * t138;
t133 = t128 * mrSges(5,1) - t125 * mrSges(5,2);
t117 = -pkin(7) * m(4) + mrSges(3,2) - mrSges(4,3);
t118 = m(4) * pkin(2) + mrSges(3,1);
t126 = sin(pkin(9));
t129 = cos(pkin(9));
t132 = -t126 * t117 + t129 * t118;
t111 = -t127 * Ifges(6,6) - t124 * t115 + Ifges(5,6);
t109 = Ifges(5,5) + (t121 - t119) * Ifges(6,4) + (-t113 + t114) * t139;
t1 = [Ifges(2,3) + Ifges(3,3) + Ifges(4,2) + t120 * t110 + 0.2e1 * t134 + t122 * t116 + (2 * pkin(7) * mrSges(4,3)) + ((pkin(2) ^ 2 + pkin(7) ^ 2) * m(4)) + 0.2e1 * t132 * pkin(1); mrSges(2,1) + t132; t129 * t117 + t126 * t118 + mrSges(2,2); m(3) + m(4); t141 * t137 + Ifges(4,1) - Ifges(4,2) - 0.4e1 * t134; t137 * t112 + t141 * t138 + Ifges(4,4); t128 * t109 - t125 * t111 + Ifges(4,5); t125 * t109 + t128 * t111 + Ifges(4,6); 0.2e1 * pkin(3) * t133 + t121 * t113 + t119 * t114 + Ifges(4,3) + Ifges(5,3) + 0.2e1 * t136; mrSges(4,1) + t133; t125 * mrSges(5,1) + t128 * mrSges(5,2) + mrSges(4,2); mrSges(5,3); m(5); m(7) * pkin(5) + mrSges(6,1); mrSges(6,2); mrSges(6,3) - t135; m(6) + m(7); Ifges(7,1) - Ifges(7,2); Ifges(7,4); Ifges(7,5); Ifges(7,6); Ifges(7,3); mrSges(7,1); mrSges(7,2);];
MPV  = t1;
