% Return the minimum parameter vector for
% S5RPPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta3]';
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
% MPV [23x1]
%   base parameter vector (minimal parameter vector)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:03
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5RPPRR9_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRR9_convert_par2_MPV_fixb: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPPRR9_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RPPRR9_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RPPRR9_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t76 = (m(5) + m(6));
t80 = 2 * pkin(7) * mrSges(6,3) + Ifges(6,2);
t79 = m(6) * pkin(7) + mrSges(6,3);
t78 = (pkin(4) ^ 2);
t77 = pkin(7) ^ 2;
t1 = [Ifges(2,3) + Ifges(3,2) + Ifges(4,3) + t78 * m(6) + Ifges(5,2) + 2 * pkin(6) * mrSges(5,3) + (pkin(3) ^ 2 + pkin(6) ^ 2) * t76; mrSges(2,1); mrSges(2,2); mrSges(3,1); mrSges(3,3); m(3); pkin(3) * t76 + mrSges(4,1); -pkin(6) * t76 + mrSges(4,2) - mrSges(5,3); m(4) + t76; Ifges(5,1) - Ifges(5,2) + (t77 - t78) * m(6) + t80; pkin(4) * t79 + Ifges(5,4); Ifges(5,5); Ifges(5,6); Ifges(5,3) + (t77 + t78) * m(6) + t80; m(6) * pkin(4) + mrSges(5,1); mrSges(5,2) - t79; Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV = t1;
