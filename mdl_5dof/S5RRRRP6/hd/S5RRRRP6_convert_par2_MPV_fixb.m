% Return the minimum parameter vector for
% S5RRRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
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
% Datum: 2019-12-31 21:55
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5RRRRP6_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP6_convert_par2_MPV_fixb: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRP6_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRRRP6_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRRRP6_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t94 = (m(4) + m(5));
t103 = (-Ifges(5,2) - Ifges(6,2));
t102 = 2 * pkin(8) * mrSges(5,3) - t103;
t101 = m(5) * pkin(8) + mrSges(5,3);
t100 = -pkin(7) * t94 - mrSges(4,3);
t99 = (mrSges(3,3) - t100);
t98 = (pkin(2) ^ 2);
t97 = (pkin(3) ^ 2);
t96 = (pkin(7) ^ 2);
t95 = pkin(8) ^ 2;
t92 = (m(3) + t94);
t91 = (t96 + t98);
t1 = [Ifges(2,3) + Ifges(3,2) + t97 * m(5) + Ifges(4,2) + 2 * pkin(7) * mrSges(4,3) + t91 * t94 + 2 * pkin(6) * t99 + (pkin(1) ^ 2 + pkin(6) ^ 2) * t92; pkin(1) * t92 + mrSges(2,1); -pkin(6) * t92 + mrSges(2,2) - t99; Ifges(3,1) - Ifges(3,2) + (-t91 + t96) * t94; Ifges(3,4); pkin(2) * t100 + Ifges(3,5); Ifges(3,6); t94 * t98 + Ifges(3,3); pkin(2) * t94 + mrSges(3,1); mrSges(3,2); Ifges(4,1) - Ifges(4,2) + (t95 - t97) * m(5) + t102; pkin(3) * t101 + Ifges(4,4); Ifges(4,5); Ifges(4,6); Ifges(4,3) + (t95 + t97) * m(5) + t102; m(5) * pkin(3) + mrSges(4,1); mrSges(4,2) - t101; Ifges(5,1) + Ifges(6,1) + t103; Ifges(5,4) + Ifges(6,4); Ifges(5,5) + Ifges(6,5); Ifges(5,6) + Ifges(6,6); 2 * mrSges(6,1) * pkin(4) + Ifges(5,3) + Ifges(6,3); mrSges(5,1) + mrSges(6,1); mrSges(5,2) + mrSges(6,2); mrSges(6,3); m(6);];
MPV = t1;
