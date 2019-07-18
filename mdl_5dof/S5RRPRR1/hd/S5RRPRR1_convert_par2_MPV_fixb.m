% Return the minimum parameter vector for
% S5RRPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a3,a4,d4,d5]';
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
% Datum: 2019-07-18 17:22
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MPV = S5RRPRR1_convert_par2_MPV_fixb(pkin, m, mrSges, Ifges)

%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S5RRPRR1_convert_par2_MPV_fixb: pkin has to be [4x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPRR1_convert_par2_MPV_fixb: m has to be [6x1] (double)'); 
assert(isreal(mrSges) && all(size(mrSges) == [6,3]), ...
  'S5RRPRR1_convert_par2_MPV_fixb: mrSges has to be [6x3] (double)');
assert(isreal(Ifges) && all(size(Ifges) == [6 6]), ...
  'S5RRPRR1_convert_par2_MPV_fixb: Ifges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From minimal_parameter_vector_fixb_matlab.m
t91 = (pkin(4) * m(6));
t83 = (m(5) + m(6));
t90 = (-Ifges(3,2) - Ifges(4,2));
t89 = (pkin(2) * t83 + mrSges(4,1));
t88 = Ifges(6,2) + (2 * mrSges(6,3) + t91) * pkin(4);
t87 = -pkin(3) * t83 - mrSges(5,3);
t86 = (pkin(2) ^ 2);
t85 = (pkin(3) ^ 2);
t81 = (t85 + t86);
t1 = [2 * pkin(3) * mrSges(5,3) + t81 * t83 + Ifges(5,2) + Ifges(2,3) - t90; mrSges(2,1); mrSges(2,2) - mrSges(3,3); Ifges(3,1) + Ifges(4,1) + (-t81 + t85) * t83 + t90; Ifges(3,4) + Ifges(4,4); t87 * pkin(2) + Ifges(3,5) + Ifges(4,5); Ifges(3,6) + Ifges(4,6); 2 * pkin(1) * t89 + t86 * t83 + Ifges(3,3) + Ifges(4,3); mrSges(3,1) + t89; mrSges(3,2) + mrSges(4,2); mrSges(4,3) - t87; m(4) + t83; Ifges(5,1) - Ifges(5,2) + t88; Ifges(5,4); Ifges(5,5); Ifges(5,6); Ifges(5,3) + t88; mrSges(5,1); mrSges(5,2) - mrSges(6,3) - t91; Ifges(6,1) - Ifges(6,2); Ifges(6,4); Ifges(6,5); Ifges(6,6); Ifges(6,3); mrSges(6,1); mrSges(6,2);];
MPV  = t1;
