% Return the minimum parameter vector for
% S5RRPPR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta3]';
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
% MPV [25x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:45
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5RRPPR10_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPPR10_convert_par2_MPV_fixb: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPPR10_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRPPR10_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRPPR10_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t118 = 2 * pkin(7) * mrSges(6,3) + Ifges(6,2);
t108 = sin(pkin(8));
t109 = cos(pkin(8));
t117 = t108 * t109;
t116 = pkin(7) * m(6) + mrSges(6,3);
t111 = Ifges(4,4) - Ifges(5,5);
t115 = t111 * t117;
t113 = (pkin(4) ^ 2);
t114 = t113 * m(6) + Ifges(3,2) + Ifges(5,2) + Ifges(4,3);
t112 = pkin(7) ^ 2;
t110 = Ifges(4,6) - Ifges(5,6);
t106 = t109 ^ 2;
t105 = t108 ^ 2;
t104 = t116 * pkin(4) + Ifges(5,4) + Ifges(4,5);
t103 = m(6) * t112 + Ifges(4,1) + Ifges(5,1) + t118;
t102 = Ifges(4,2) + Ifges(5,3) + (t112 + t113) * m(6) + t118;
t1 = [Ifges(2,3) + 2 * pkin(6) * mrSges(3,3) + (pkin(1) ^ 2 + pkin(6) ^ 2) * m(3) + t114; m(3) * pkin(1) + mrSges(2,1); -pkin(6) * m(3) + mrSges(2,2) - mrSges(3,3); t105 * t102 + t106 * t103 + Ifges(3,1) - t114 - 0.2e1 * t115; -t109 * t104 + t108 * t110 + Ifges(3,4); Ifges(3,5) + (t106 - t105) * t111 + (-t102 + t103) * t117; -t108 * t104 - t109 * t110 + Ifges(3,6); t106 * t102 + t105 * t103 + Ifges(3,3) + 0.2e1 * t115; mrSges(3,1); mrSges(3,2); mrSges(4,1); mrSges(4,2); mrSges(4,3); m(4); m(6) * pkin(4) + mrSges(5,1); mrSges(5,2) - t116; mrSges(5,3); m(5) + m(6); Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV = t1;
