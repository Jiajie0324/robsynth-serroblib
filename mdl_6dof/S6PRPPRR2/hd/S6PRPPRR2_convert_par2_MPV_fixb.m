% Return the minimum parameter vector for
% S6PRPPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d5,d6,theta1,theta3]';
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
% MPV [22x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S6PRPPRR2_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPPRR2_convert_par2_MPV_fixb: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRPPRR2_convert_par2_MPV_fixb: m has to be [7x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [7,3]), ...
  'S6PRPPRR2_convert_par2_MPV_fixb: mrSges has to be [7x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [7 6]), ...
  'S6PRPPRR2_convert_par2_MPV_fixb: Ifges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t123 = m(6) + m(7);
t129 = (pkin(8) * t123);
t128 = 2 * pkin(9) * mrSges(7,3) + Ifges(7,2);
t127 = pkin(9) * m(7) + mrSges(7,3);
t121 = sin(pkin(11));
t122 = cos(pkin(11));
t126 = t122 * mrSges(4,1) - t121 * mrSges(4,2);
t125 = (pkin(5) ^ 2);
t124 = pkin(9) ^ 2;
t1 = [m(2) + m(3); (t125 * m(7)) + Ifges(5,1) + Ifges(6,2) + Ifges(3,3) + Ifges(4,3) + ((2 * mrSges(6,3) + t129) * pkin(8)) + 0.2e1 * t126 * pkin(2); mrSges(3,1) + t126; t121 * mrSges(4,1) + t122 * mrSges(4,2) + mrSges(3,2); m(4); mrSges(5,2) - mrSges(6,3) - t129; mrSges(5,3); m(5) + t123; Ifges(6,1) - Ifges(6,2) + ((t124 - t125) * m(7)) + t128; t127 * pkin(5) + Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3) + (t124 + t125) * m(7) + t128; m(7) * pkin(5) + mrSges(6,1); mrSges(6,2) - t127; Ifges(7,1) - Ifges(7,2); Ifges(7,4); Ifges(7,5); Ifges(7,6); Ifges(7,3); mrSges(7,1); mrSges(7,2);];
MPV  = t1;
