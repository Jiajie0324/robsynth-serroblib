% Return the minimum parameter vector for
% S6RPRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta2,theta4]';
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
% Datum: 2019-03-09 02:43
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6RPRPPR2_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPPR2_convert_par2_MPV_fixb: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPPR2_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6RPRPPR2_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6RPRPPR2_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t123 = (pkin(8) ^ 2);
t124 = (pkin(5) ^ 2);
t131 = 2 * pkin(8) * mrSges(7,3) + Ifges(7,2);
t109 = Ifges(5,2) + Ifges(6,3) + (t123 + t124) * m(7) + t131;
t111 = t124 * m(7) + Ifges(5,1) + Ifges(6,2);
t132 = -t109 + t111;
t117 = sin(pkin(10));
t119 = cos(pkin(10));
t130 = t117 * t119;
t114 = t117 ^ 2;
t115 = t119 ^ 2;
t129 = t115 - t114;
t128 = -pkin(8) * m(7) - mrSges(7,3);
t122 = Ifges(5,4) + Ifges(6,6);
t127 = t122 * t130;
t126 = t119 * mrSges(5,1) - t117 * mrSges(5,2);
t112 = -pkin(7) * m(4) + mrSges(3,2) - mrSges(4,3);
t113 = m(4) * pkin(2) + mrSges(3,1);
t118 = sin(pkin(9));
t120 = cos(pkin(9));
t125 = -t118 * t112 + t120 * t113;
t121 = Ifges(5,6) - Ifges(6,5);
t110 = t128 * pkin(5) - Ifges(6,4) + Ifges(5,5);
t1 = [Ifges(2,3) + Ifges(3,3) + Ifges(4,2) + t114 * t111 + 0.2e1 * t127 + t115 * t109 + (2 * pkin(7) * mrSges(4,3)) + ((pkin(2) ^ 2 + pkin(7) ^ 2) * m(4)) + 0.2e1 * t125 * pkin(1); mrSges(2,1) + t125; t120 * t112 + t118 * t113 + mrSges(2,2); m(3) + m(4); t132 * t129 + Ifges(4,1) - Ifges(4,2) - 0.4e1 * t127; t129 * t122 + t132 * t130 + Ifges(4,4); t119 * t110 - t117 * t121 + Ifges(4,5); t117 * t110 + t119 * t121 + Ifges(4,6); (m(7) * t123) + 0.2e1 * pkin(3) * t126 + Ifges(6,1) + Ifges(4,3) + Ifges(5,3) + t131; mrSges(4,1) + t126; t117 * mrSges(5,1) + t119 * mrSges(5,2) + mrSges(4,2); mrSges(5,3); m(5); m(7) * pkin(5) + mrSges(6,1); mrSges(6,2) + t128; mrSges(6,3); m(6) + m(7); Ifges(7,1) - Ifges(7,2); Ifges(7,4); Ifges(7,5); Ifges(7,6); Ifges(7,3); mrSges(7,1); mrSges(7,2);];
MPV  = t1;
