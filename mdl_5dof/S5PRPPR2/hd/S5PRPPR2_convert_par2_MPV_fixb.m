% Return the minimum parameter vector for
% S5PRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d5,theta1,theta3,theta4]';
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
% MPV [16x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:25
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5PRPPR2_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPPR2_convert_par2_MPV_fixb: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPPR2_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRPPR2_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRPPR2_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t88 = 2 * pkin(6) * mrSges(6,3) + Ifges(6,2);
t83 = sin(pkin(8));
t85 = cos(pkin(8));
t87 = t85 * mrSges(4,1) - t83 * mrSges(4,2);
t86 = pkin(6) ^ 2;
t84 = cos(pkin(9));
t82 = sin(pkin(9));
t1 = [m(2) + m(3); Ifges(3,3) + Ifges(4,3) + t84 ^ 2 * (Ifges(5,2) + (pkin(4) ^ 2 + t86) * m(6) + t88) + (0.2e1 * t84 * Ifges(5,4) + (m(6) * t86 + Ifges(5,1) + t88) * t82) * t82 + 0.2e1 * t87 * pkin(2); mrSges(3,1) + t87; t83 * mrSges(4,1) + t85 * mrSges(4,2) + mrSges(3,2); m(4); m(6) * pkin(4) + mrSges(5,1); mrSges(5,2); pkin(6) * m(6) + mrSges(5,3) + mrSges(6,3); m(5) + m(6); Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV = t1;
