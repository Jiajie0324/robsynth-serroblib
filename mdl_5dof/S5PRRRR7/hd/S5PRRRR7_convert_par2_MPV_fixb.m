% Return the minimum parameter vector for
% S5PRRRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,d5,theta1]';
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
% Datum: 2019-12-05 17:13
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5PRRRR7_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRR7_convert_par2_MPV_fixb: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRRR7_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5PRRRR7_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5PRRRR7_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t98 = -pkin(8) * m(6) - mrSges(6,3);
t85 = (mrSges(5,3) - t98);
t89 = (m(5) + m(6));
t97 = -pkin(7) * t89 - t85;
t88 = (m(4) + t89);
t95 = (mrSges(4,3) - t97);
t94 = (pkin(3) ^ 2);
t93 = (pkin(4) ^ 2);
t92 = (pkin(7) ^ 2);
t91 = (pkin(8) ^ 2);
t87 = (t92 + t94);
t86 = (t91 + t93);
t1 = [m(2) + m(3) + t88; Ifges(3,3) + Ifges(4,2) + Ifges(5,2) + Ifges(6,2) + 2 * pkin(8) * mrSges(6,3) + t86 * m(6) + 2 * pkin(7) * t85 + t87 * t89 + 2 * pkin(6) * t95 + (pkin(2) ^ 2 + pkin(6) ^ 2) * t88; pkin(2) * t88 + mrSges(3,1); -pkin(6) * t88 + mrSges(3,2) - t95; Ifges(4,1) - Ifges(4,2) + (-t87 + t92) * t89; Ifges(4,4); pkin(3) * t97 + Ifges(4,5); Ifges(4,6); t94 * t89 + Ifges(4,3); pkin(3) * t89 + mrSges(4,1); mrSges(4,2); Ifges(5,1) - Ifges(5,2) + (-t86 + t91) * m(6); Ifges(5,4); pkin(4) * t98 + Ifges(5,5); Ifges(5,6); t93 * m(6) + Ifges(5,3); m(6) * pkin(4) + mrSges(5,1); mrSges(5,2); Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV = t1;
