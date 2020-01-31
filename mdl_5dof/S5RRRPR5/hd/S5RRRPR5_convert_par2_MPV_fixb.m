% Return the minimum parameter vector for
% S5RRRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d5,theta4]';
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
% MPV [26x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:15
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5RRRPR5_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR5_convert_par2_MPV_fixb: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPR5_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRPR5_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRRPR5_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t103 = cos(pkin(9));
t100 = t103 ^ 2;
t102 = sin(pkin(9));
t99 = t102 ^ 2;
t117 = t100 - t99;
t105 = (pkin(8) ^ 2);
t115 = 2 * pkin(8) * mrSges(6,3) + Ifges(6,2);
t93 = m(6) * t105 + Ifges(5,1) + t115;
t107 = (pkin(4) ^ 2);
t96 = t107 * m(6) + Ifges(5,2);
t116 = t93 - t96;
t114 = t102 * t103;
t111 = pkin(8) * m(6) + mrSges(6,3);
t94 = t111 * pkin(4) + Ifges(5,4);
t113 = t94 * t114;
t112 = -pkin(7) * m(4) - mrSges(4,3);
t110 = (mrSges(3,3) - t112);
t95 = mrSges(5,2) - t111;
t97 = m(6) * pkin(4) + mrSges(5,1);
t109 = -t102 * t95 + t103 * t97;
t108 = pkin(2) ^ 2;
t106 = pkin(7) ^ 2;
t104 = (m(3) + m(4));
t98 = t106 + t108;
t1 = [Ifges(2,3) + Ifges(3,2) + Ifges(4,2) + t99 * t93 + 0.2e1 * t113 + t100 * t96 + (2 * pkin(7) * mrSges(4,3)) + t98 * m(4) + (2 * pkin(6) * t110) + ((pkin(1) ^ 2 + pkin(6) ^ 2) * t104); pkin(1) * t104 + mrSges(2,1); -pkin(6) * t104 + mrSges(2,2) - t110; Ifges(3,1) - Ifges(3,2) + (t106 - t98) * m(4); Ifges(3,4); t112 * pkin(2) + Ifges(3,5); Ifges(3,6); t108 * m(4) + Ifges(3,3); m(4) * pkin(2) + mrSges(3,1); mrSges(3,2); t117 * t116 + Ifges(4,1) - Ifges(4,2) - 0.4e1 * t113; t116 * t114 + t117 * t94 + Ifges(4,4); t103 * Ifges(5,5) - t102 * Ifges(5,6) + Ifges(4,5); t102 * Ifges(5,5) + t103 * Ifges(5,6) + Ifges(4,6); Ifges(4,3) + Ifges(5,3) + ((t105 + t107) * m(6)) + 0.2e1 * t109 * pkin(3) + t115; mrSges(4,1) + t109; t102 * t97 + t103 * t95 + mrSges(4,2); mrSges(5,3); m(5) + m(6); Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV = t1;