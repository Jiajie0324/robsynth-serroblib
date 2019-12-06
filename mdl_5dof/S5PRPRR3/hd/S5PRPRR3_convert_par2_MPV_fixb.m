% Return the minimum parameter vector for
% S5PRPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1,theta3]';
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
% MPV [19x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:48
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5PRPRR3_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR3_convert_par2_MPV_fixb: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPRR3_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRPRR3_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRPRR3_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t87 = (m(5) + m(6));
t92 = -pkin(7) * m(6) - mrSges(6,3);
t91 = (mrSges(5,3) - t92);
t82 = -pkin(6) * t87 + mrSges(4,2) - t91;
t83 = pkin(3) * t87 + mrSges(4,1);
t85 = sin(pkin(9));
t86 = cos(pkin(9));
t90 = -t85 * t82 + t86 * t83;
t89 = pkin(4) ^ 2;
t88 = pkin(7) ^ 2;
t84 = t88 + t89;
t1 = [m(2) + m(3); Ifges(3,3) + Ifges(4,3) + Ifges(5,2) + Ifges(6,2) + (2 * pkin(7) * mrSges(6,3)) + t84 * m(6) + (2 * pkin(6) * t91) + ((pkin(3) ^ 2 + pkin(6) ^ 2) * t87) + 0.2e1 * t90 * pkin(2); mrSges(3,1) + t90; t86 * t82 + t85 * t83 + mrSges(3,2); m(4) + t87; Ifges(5,1) - Ifges(5,2) + (-t84 + t88) * m(6); Ifges(5,4); t92 * pkin(4) + Ifges(5,5); Ifges(5,6); t89 * m(6) + Ifges(5,3); m(6) * pkin(4) + mrSges(5,1); mrSges(5,2); Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV = t1;
