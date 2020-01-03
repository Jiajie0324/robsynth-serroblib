% Return the minimum parameter vector for
% S5RPRRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
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
% MPV [20x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 11:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5RPRRP3_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP3_convert_par2_MPV_fixb: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRP3_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPRRP3_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPRRP3_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t75 = (m(4) + m(5));
t81 = -Ifges(5,2) - Ifges(6,2);
t80 = -pkin(7) * m(5) - mrSges(5,3);
t79 = (mrSges(4,3) - t80);
t70 = -pkin(6) * t75 + mrSges(3,2) - t79;
t71 = pkin(2) * t75 + mrSges(3,1);
t73 = sin(pkin(8));
t74 = cos(pkin(8));
t78 = -t73 * t70 + t74 * t71;
t77 = pkin(3) ^ 2;
t76 = pkin(7) ^ 2;
t72 = t76 + t77;
t1 = [Ifges(2,3) + Ifges(3,3) + Ifges(4,2) + (2 * pkin(7) * mrSges(5,3)) + t72 * m(5) + (2 * pkin(6) * t79) + ((pkin(2) ^ 2 + pkin(6) ^ 2) * t75) + 0.2e1 * t78 * pkin(1) - t81; mrSges(2,1) + t78; t74 * t70 + t73 * t71 + mrSges(2,2); m(3) + t75; Ifges(4,1) - Ifges(4,2) + (-t72 + t76) * m(5); Ifges(4,4); t80 * pkin(3) + Ifges(4,5); Ifges(4,6); t77 * m(5) + Ifges(4,3); m(5) * pkin(3) + mrSges(4,1); mrSges(4,2); Ifges(5,1) + Ifges(6,1) + t81; Ifges(5,4) + Ifges(6,4); Ifges(5,5) + Ifges(6,5); Ifges(5,6) + Ifges(6,6); 2 * pkin(4) * mrSges(6,1) + Ifges(5,3) + Ifges(6,3); mrSges(5,1) + mrSges(6,1); mrSges(5,2) + mrSges(6,2); mrSges(6,3); m(6);];
MPV = t1;
