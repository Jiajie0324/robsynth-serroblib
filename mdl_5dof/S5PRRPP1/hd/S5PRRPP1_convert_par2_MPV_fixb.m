% Return the minimum parameter vector for
% S5PRRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,theta1,theta4]';
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
% MPV [17x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:07
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5PRRPP1_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRPP1_convert_par2_MPV_fixb: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRPP1_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRRPP1_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRRPP1_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t69 = sin(pkin(8));
t67 = t69 ^ 2;
t70 = cos(pkin(8));
t68 = t70 ^ 2;
t80 = t68 - t67;
t79 = t69 * t70;
t72 = Ifges(5,2) + Ifges(6,3);
t75 = Ifges(5,1) + Ifges(6,1);
t78 = t72 - t75;
t74 = Ifges(5,4) - Ifges(6,5);
t77 = t74 * t79;
t76 = t70 * mrSges(5,1) - t69 * mrSges(5,2);
t73 = Ifges(5,5) + Ifges(6,4);
t71 = Ifges(5,6) - Ifges(6,6);
t1 = [m(2) + m(3) + m(4); Ifges(3,3) + Ifges(4,2) + t67 * t75 + 0.2e1 * t77 + t68 * t72 + (2 * pkin(6) * mrSges(4,3)) + ((pkin(2) ^ 2 + pkin(6) ^ 2) * m(4)); m(4) * pkin(2) + mrSges(3,1); -pkin(6) * m(4) + mrSges(3,2) - mrSges(4,3); -t80 * t78 + Ifges(4,1) - Ifges(4,2) - 0.4e1 * t77; t80 * t74 - t78 * t79 + Ifges(4,4); -t69 * t71 + t70 * t73 + Ifges(4,5); t69 * t73 + t70 * t71 + Ifges(4,6); 0.2e1 * pkin(3) * t76 + Ifges(6,2) + Ifges(4,3) + Ifges(5,3); mrSges(4,1) + t76; t69 * mrSges(5,1) + t70 * mrSges(5,2) + mrSges(4,2); mrSges(5,3); m(5); mrSges(6,1); mrSges(6,2); mrSges(6,3); m(6);];
MPV = t1;
