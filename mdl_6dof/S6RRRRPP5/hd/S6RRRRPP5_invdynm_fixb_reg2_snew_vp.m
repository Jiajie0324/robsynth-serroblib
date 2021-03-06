% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRRRPP5
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 18:30
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRRRPP5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP5_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP5_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP5_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP5_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 18:29:29
% EndTime: 2019-05-07 18:30:11
% DurationCPUTime: 45.17s
% Computational Cost: add. (147899->883), mult. (297475->962), div. (0->0), fcn. (212455->8), ass. (0->555)
t1916 = sin(qJ(3));
t1920 = cos(qJ(3));
t1915 = sin(qJ(4));
t1917 = sin(qJ(2));
t2053 = qJD(1) * t1917;
t1874 = -t1920 * qJD(2) + t1916 * t2053;
t1875 = qJD(2) * t1916 + t1920 * t2053;
t1919 = cos(qJ(4));
t1831 = -t1915 * t1874 + t1919 * t1875;
t1828 = t1831 ^ 2;
t1921 = cos(qJ(2));
t2052 = qJD(1) * t1921;
t1904 = -qJD(3) + t2052;
t1896 = -qJD(4) + t1904;
t2073 = t1896 ^ 2;
t2097 = t1828 + t2073;
t1907 = qJD(2) * t2053;
t1995 = t1921 * qJDD(1);
t1879 = -t1907 + t1995;
t1871 = -qJDD(3) + t1879;
t1868 = -qJDD(4) + t1871;
t1829 = t1919 * t1874 + t1875 * t1915;
t2021 = t1831 * t1829;
t2093 = -t2021 + t1868;
t2118 = t2093 * t1919;
t2167 = -t2097 * t1915 - t2118;
t2119 = t2093 * t1915;
t2168 = t2097 * t1919 - t2119;
t1586 = t1916 * t2168 - t1920 * t2167;
t1991 = qJD(2) * t2052;
t1996 = t1917 * qJDD(1);
t1966 = t1991 + t1996;
t1938 = -t1916 * qJDD(2) - t1920 * t1966;
t1823 = -t1874 * qJD(3) - t1938;
t1937 = t1920 * qJDD(2) - t1916 * t1966;
t1934 = t1875 * qJD(3) - t1937;
t1928 = -t1829 * qJD(4) + t1919 * t1823 - t1915 * t1934;
t2011 = t1896 * t1829;
t2095 = t1928 + t2011;
t1516 = t1586 * t1921 + t2095 * t1917;
t1918 = sin(qJ(1));
t1922 = cos(qJ(1));
t2179 = t1916 * t2167 + t1920 * t2168;
t2223 = pkin(6) * (t1516 * t1922 - t1918 * t2179);
t2224 = pkin(6) * (t1516 * t1918 + t1922 * t2179);
t2094 = -t2011 + t1928;
t1644 = t1919 * t2094;
t1987 = t1915 * t1823 + t1919 * t1934;
t1653 = (qJD(4) + t1896) * t1831 + t1987;
t1570 = t1653 * t1915 + t1644;
t2040 = t2094 * t1915;
t1576 = t1653 * t1919 - t2040;
t1491 = t1570 * t1916 - t1576 * t1920;
t2075 = t1829 ^ 2;
t2090 = -t2075 - t1828;
t2134 = t1917 * t2090;
t1469 = t1491 * t1921 + t2134;
t1480 = t1570 * t1920 + t1576 * t1916;
t2238 = pkin(6) * (t1469 * t1922 - t1480 * t1918);
t2237 = pkin(6) * (t1469 * t1918 + t1480 * t1922);
t1708 = qJD(4) * t1831 + t1987;
t2020 = t1831 * t1896;
t2104 = t1708 - t2020;
t1572 = t2104 * t1915 - t1919 * t2095;
t2039 = t2095 * t1915;
t2117 = t2104 * t1919;
t2154 = t2117 + t2039;
t1490 = t1572 * t1916 - t1920 * t2154;
t2096 = t1828 - t2075;
t1476 = t1490 * t1921 + t2096 * t1917;
t1484 = -t1572 * t1920 - t1916 * t2154;
t2236 = t1476 * t1918 - t1484 * t1922;
t2235 = t1476 * t1922 + t1484 * t1918;
t2089 = t2075 - t2073;
t1683 = -t1915 * t2089 + t2118;
t2152 = t1919 * t2089 + t2119;
t1595 = t1683 * t1920 - t1916 * t2152;
t2103 = t1708 + t2020;
t2161 = t1683 * t1916 + t1920 * t2152;
t2183 = -t2103 * t1917 + t1921 * t2161;
t2201 = t1595 * t1922 + t1918 * t2183;
t2199 = -t1595 * t1918 + t1922 * t2183;
t2125 = t1921 * t2090;
t1466 = t1491 * t1917 - t2125;
t2234 = pkin(1) * t1466;
t1513 = t1586 * t1917 - t1921 * t2095;
t2233 = pkin(1) * t1513;
t2232 = pkin(7) * t1466;
t2231 = pkin(7) * t1513;
t2230 = -pkin(1) * t1480 - pkin(7) * t1469;
t2229 = -pkin(1) * t2179 - pkin(7) * t1516;
t2098 = t1828 - t2073;
t2092 = t2021 + t1868;
t2120 = t2092 * t1915;
t1680 = t1919 * t2098 + t2120;
t2127 = t1919 * t2092;
t1686 = -t2098 * t1915 + t2127;
t1592 = t1680 * t1920 + t1686 * t1916;
t2180 = t1680 * t1916 - t1686 * t1920;
t2200 = t1917 * t2094 + t1921 * t2180;
t2209 = t1592 * t1922 + t1918 * t2200;
t2208 = -t1592 * t1918 + t1922 * t2200;
t1473 = t1490 * t1917 - t1921 * t2096;
t2185 = t1917 * t2161 + t2103 * t1921;
t2217 = pkin(2) * t1480;
t2206 = pkin(2) * t2179;
t2216 = pkin(8) * t1480;
t2205 = pkin(8) * t2179;
t2143 = pkin(2) * t2090;
t2211 = -pkin(8) * t1491 + t2143;
t2210 = pkin(2) * t2095 - pkin(8) * t1586;
t2202 = t1917 * t2180 - t1921 * t2094;
t2091 = -t2073 - t2075;
t2150 = t1915 * t2091 - t2127;
t2151 = t1919 * t2091 + t2120;
t2162 = -t1916 * t2150 + t1920 * t2151;
t2186 = t1917 * t2162 - t1921 * t2104;
t2198 = pkin(1) * t2186;
t2196 = pkin(7) * t2186;
t2163 = t1916 * t2151 + t1920 * t2150;
t2184 = t2104 * t1917 + t1921 * t2162;
t2189 = -pkin(1) * t2163 + pkin(7) * t2184;
t2182 = pkin(6) * (t1918 * t2184 - t1922 * t2163);
t2181 = pkin(6) * (t1918 * t2163 + t1922 * t2184);
t2177 = pkin(2) * t2163;
t2067 = pkin(3) * t1570;
t2197 = pkin(3) * t2168;
t2175 = pkin(8) * t2163;
t2195 = pkin(9) * t1570;
t2194 = pkin(9) * t2167;
t2193 = pkin(9) * t2168;
t2158 = pkin(9) * t2151;
t2190 = -pkin(3) * t2104 + t2158;
t2166 = -pkin(2) * t2104 + pkin(8) * t2162;
t2142 = pkin(3) * t2090;
t2188 = -pkin(9) * t1576 - t2142;
t2187 = -pkin(3) * t2095 - t2194;
t2176 = pkin(3) * t2150;
t2157 = pkin(9) * t2150;
t2156 = qJ(5) * t2090;
t2059 = qJ(5) * t2095;
t1893 = g(1) * t1922 + g(2) * t1918;
t1923 = qJD(1) ^ 2;
t1867 = -pkin(1) * t1923 + qJDD(1) * pkin(7) - t1893;
t2069 = pkin(2) * t1921;
t1976 = -pkin(8) * t1917 - t2069;
t1877 = t1976 * qJD(1);
t2061 = t1921 * g(3);
t2076 = qJD(2) ^ 2;
t1794 = -qJDD(2) * pkin(2) - pkin(8) * t2076 + (qJD(1) * t1877 + t1867) * t1917 + t2061;
t1849 = -pkin(3) * t1904 - pkin(9) * t1875;
t2074 = t1874 ^ 2;
t1678 = t1934 * pkin(3) - t2074 * pkin(9) + t1875 * t1849 + t1794;
t2155 = t1708 * pkin(4) + t1678 - t2059;
t2101 = pkin(4) * t2097 - qJ(5) * t2093;
t2010 = t1896 * t1915;
t1799 = t1831 * t2010;
t2009 = t1896 * t1919;
t1994 = t1829 * t2009;
t1971 = -t1799 + t1994;
t1963 = (t1829 * t1915 + t1831 * t1919) * t1896;
t2105 = t1920 * t1963;
t2082 = t1916 * t1971 + t2105;
t2017 = t1868 * t1917;
t2107 = t1916 * t1963;
t2081 = t1920 * t1971 - t2107;
t2109 = t1921 * t2081 - t2017;
t2149 = t1918 * t2109 - t1922 * t2082;
t1967 = t1708 * t1915 - t1994;
t1972 = -t1919 * t1708 - t1829 * t2010;
t2079 = t1916 * t1967 + t1920 * t1972;
t1752 = t1917 * t2021;
t2080 = -t1916 * t1972 + t1920 * t1967;
t2114 = t1921 * t2080 - t1752;
t2148 = t1918 * t2114 - t1922 * t2079;
t1973 = -t1831 * t2009 + t1915 * t1928;
t1999 = t1919 * t1928 + t1799;
t2078 = t1916 * t1999 + t1920 * t1973;
t2077 = -t1916 * t1973 + t1920 * t1999;
t2115 = t1921 * t2077 + t1752;
t2085 = t1918 * t2115 - t1922 * t2078;
t2147 = t1918 * t2082 + t1922 * t2109;
t2146 = t1918 * t2079 + t1922 * t2114;
t2084 = t1918 * t2078 + t1922 * t2115;
t2139 = pkin(4) * t2094;
t2137 = qJ(6) * t2094;
t1753 = t1921 * t2021;
t2113 = t1917 * t2077 - t1753;
t2112 = t1917 * t2080 + t1753;
t1857 = t1921 * t1868;
t2111 = t1917 * t2081 + t1857;
t2102 = -pkin(4) * t2092 + qJ(5) * t2091;
t2015 = t1875 * t1874;
t1958 = -t1871 - t2015;
t2108 = t1916 * t1958;
t2106 = t1920 * t1958;
t2051 = qJD(5) * t1896;
t1881 = -0.2e1 * t2051;
t2050 = qJD(6) * t1829;
t2100 = 0.2e1 * t2050 + t1881;
t1882 = 0.2e1 * t2051;
t2099 = -0.2e1 * t2050 + t1882;
t1854 = t1874 * t1904;
t1778 = -t1854 + t1823;
t1798 = pkin(5) * t1896 - qJ(6) * t1831;
t2088 = t1831 * t1798 + qJDD(6);
t2083 = (t2104 + t1708) * pkin(5) + qJ(6) * (t2091 + t2075);
t1870 = t1875 ^ 2;
t1902 = t1904 ^ 2;
t2072 = 0.2e1 * t1831;
t2071 = pkin(4) + pkin(5);
t2070 = pkin(2) * t1917;
t1892 = t1918 * g(1) - t1922 * g(2);
t1866 = qJDD(1) * pkin(1) + t1923 * pkin(7) + t1892;
t1878 = 0.2e1 * t1991 + t1996;
t1974 = -t1879 + t1907;
t1773 = pkin(2) * t1974 - pkin(8) * t1878 - t1866;
t1848 = -g(3) * t1917 + t1921 * t1867;
t1795 = -pkin(2) * t2076 + qJDD(2) * pkin(8) + t1877 * t2052 + t1848;
t1710 = -t1920 * t1773 + t1916 * t1795;
t1609 = t1958 * pkin(3) - pkin(9) * t1778 - t1710;
t1711 = t1916 * t1773 + t1920 * t1795;
t1618 = -pkin(3) * t2074 - pkin(9) * t1934 + t1904 * t1849 + t1711;
t1533 = -t1919 * t1609 + t1915 * t1618;
t1534 = t1915 * t1609 + t1919 * t1618;
t1457 = -t1533 * t1919 + t1534 * t1915;
t2068 = pkin(3) * t1457;
t2065 = pkin(4) * t1919;
t1962 = t1868 * pkin(4) - qJ(5) * t2073 + qJDD(5) + t1533;
t1943 = t1868 * pkin(5) + t1962 - t2137;
t1751 = pkin(4) * t1829 - qJ(5) * t1831;
t1989 = -pkin(5) * t1829 - t1751;
t1460 = (-0.2e1 * qJD(6) - t1989) * t1831 + t1943;
t2064 = pkin(5) * t1460;
t2063 = pkin(5) * t2094;
t2062 = t1708 * pkin(5);
t2060 = qJ(5) * t2104;
t2058 = qJ(6) * t1460;
t1970 = pkin(4) * t2073 + t1868 * qJ(5) + t1829 * t1751 - t1534;
t1956 = pkin(5) * t2075 - t1708 * qJ(6) + t1896 * t1798 + t1970;
t1462 = -t1956 + t2100;
t2057 = qJ(6) * t1462;
t2056 = qJ(6) * t2092;
t2055 = qJ(6) * t2093;
t2054 = qJD(1) * qJD(2);
t2049 = t1457 * t1916;
t2048 = t1457 * t1920;
t2037 = t1678 * t1915;
t2036 = t1678 * t1919;
t2027 = t1794 * t1916;
t2026 = t1794 * t1920;
t1814 = t1871 - t2015;
t2024 = t1814 * t1916;
t2023 = t1814 * t1920;
t2022 = t1831 * t1751;
t2019 = t1866 * t1917;
t2018 = t1866 * t1921;
t1838 = t1878 * t1917;
t1903 = t1921 * t1923 * t1917;
t1890 = -t1903 + qJDD(2);
t2014 = t1890 * t1917;
t2013 = t1890 * t1921;
t1891 = qJDD(2) + t1903;
t2012 = t1891 * t1917;
t2008 = t1904 * t1916;
t2007 = t1904 * t1920;
t1911 = t1917 ^ 2;
t2006 = t1911 * t1923;
t1499 = t1881 - t1970;
t1501 = t1962 + t2022;
t2004 = -pkin(4) * t1501 + qJ(5) * t1499;
t2001 = -qJ(5) * t2103 - t2139;
t1912 = t1921 ^ 2;
t1997 = t1911 + t1912;
t1993 = t1917 * t2015;
t1992 = t1921 * t2015;
t1990 = -qJ(5) * t1915 - pkin(3);
t1458 = t1533 * t1915 + t1919 * t1534;
t1606 = t1710 * t1916 + t1920 * t1711;
t1847 = t1917 * t1867 + t2061;
t1782 = t1847 * t1917 + t1921 * t1848;
t1986 = -t1892 * t1918 - t1922 * t1893;
t1985 = t1918 * t1903;
t1984 = t1922 * t1903;
t1445 = t1499 * t1915 - t1501 * t1919;
t1983 = pkin(3) * t1445 + t2004;
t1573 = -t1915 * t2103 - t1644;
t1982 = pkin(3) * t1573 + t2001;
t1981 = -t1534 - t2197;
t1980 = -pkin(4) * t1460 + qJ(5) * t1462 - t2064;
t1979 = qJ(5) * t1653 + t2063 + t2139;
t1977 = -pkin(2) * t1794 + pkin(8) * t1606;
t1885 = qJDD(1) * t1922 - t1918 * t1923;
t1975 = -pkin(6) * t1885 - g(3) * t1918;
t1605 = -t1710 * t1920 + t1711 * t1916;
t1781 = t1847 * t1921 - t1848 * t1917;
t1969 = t1892 * t1922 - t1893 * t1918;
t1968 = -t1533 + t2176;
t1427 = -t1460 * t1919 + t1462 * t1915;
t1965 = pkin(3) * t1427 + t1980;
t1964 = t1979 + t2067;
t1824 = -t1902 - t2074;
t1739 = t1824 * t1920 - t2108;
t1855 = t1904 * t1875;
t1775 = t1855 - t1934;
t1961 = pkin(2) * t1775 + pkin(8) * t1739 - t2026;
t1834 = -t1870 - t1902;
t1748 = -t1834 * t1916 + t2023;
t1779 = (qJD(3) - t1904) * t1874 + t1938;
t1960 = pkin(2) * t1779 + pkin(8) * t1748 + t2027;
t1959 = -t1970 + t2101;
t1776 = (-qJD(3) - t1904) * t1875 + t1937;
t1700 = t1776 * t1920 + t1778 * t1916;
t1813 = t1870 + t2074;
t1957 = pkin(2) * t1813 + pkin(8) * t1700 + t1606;
t1931 = qJD(5) * t2072 - t2155;
t1493 = (-t2104 + t2020) * pkin(4) + t1931;
t1443 = t1493 - t2083 + t2088;
t1604 = -t2056 - t2060;
t1421 = t1443 * t1919 + t1604 * t1915 + t2190;
t1431 = -t1443 * t1915 + t1604 * t1919 - t2157;
t1955 = t1421 * t1920 + t1431 * t1916 + t2166;
t1926 = pkin(4) * t2020 + t1931;
t1924 = t1926 + (t2097 - t2075) * qJ(6) - t2062 + t2088;
t1454 = t1924 + t2059;
t1547 = t2071 * t2095 + t2055;
t1424 = t1454 * t1915 + t1547 * t1919 - t2187;
t1432 = t1454 * t1919 - t1547 * t1915 - t2193;
t1954 = t1424 * t1920 + t1432 * t1916 + t2210;
t1492 = t1926 + t2059;
t1440 = t2194 + t1915 * t1492 + (pkin(3) + t2065) * t2095;
t1449 = -pkin(4) * t2039 + t1492 * t1919 - t2193;
t1953 = t1440 * t1920 + t1449 * t1916 + t2210;
t1444 = t1919 * t1493 + t1990 * t2104 + t2158;
t1453 = -qJ(5) * t2117 - t1493 * t1915 - t2157;
t1952 = t1444 * t1920 + t1453 * t1916 + t2166;
t1951 = t1959 + t2197;
t1509 = (-pkin(4) * t1896 - 0.2e1 * qJD(5)) * t1831 + t2155;
t1925 = t1509 - t2088;
t1477 = qJ(6) * t2075 + t1925 + t2062;
t1413 = -t1477 * t2071 - t2057;
t1428 = t1460 * t1915 + t1462 * t1919;
t1430 = -qJ(5) * t1477 - t2058;
t1370 = -pkin(3) * t1477 + pkin(9) * t1428 + t1413 * t1919 + t1430 * t1915;
t1378 = -pkin(9) * t1427 - t1413 * t1915 + t1430 * t1919;
t1397 = -t1427 * t1916 + t1428 * t1920;
t1950 = -pkin(2) * t1477 + pkin(8) * t1397 + t1370 * t1920 + t1378 * t1916;
t1940 = -qJ(6) * t1653 + t1956;
t1438 = t2071 * t2090 + t1940 + t2099;
t1939 = qJD(6) * t2072 - t1943;
t1930 = t1831 * t1989 + t1939 + t2137;
t1447 = t1930 + t2156;
t1404 = t1438 * t1919 + t1447 * t1915 - t2188;
t1407 = -t1438 * t1915 + t1447 * t1919 - t2195;
t1949 = t1404 * t1920 + t1407 * t1916 + t2211;
t1446 = t1499 * t1919 + t1501 * t1915;
t1406 = pkin(9) * t1446 + (t1990 - t2065) * t1509;
t1415 = -t1445 * t1916 + t1446 * t1920;
t1416 = -pkin(9) * t1445 + (pkin(4) * t1915 - qJ(5) * t1919) * t1509;
t1948 = -pkin(2) * t1509 + pkin(8) * t1415 + t1406 * t1920 + t1416 * t1916;
t1478 = -pkin(4) * t2090 + t1499;
t1479 = t1501 - t2156;
t1579 = -t1919 * t2103 + t2040;
t1420 = pkin(9) * t1579 + t1478 * t1919 + t1479 * t1915 - t2142;
t1426 = -pkin(9) * t1573 - t1478 * t1915 + t1479 * t1919;
t1489 = -t1573 * t1916 + t1579 * t1920;
t1947 = pkin(8) * t1489 + t1420 * t1920 + t1426 * t1916 - t2143;
t1436 = t1458 + t2188;
t1439 = -t1457 + t2195;
t1946 = t1436 * t1920 + t1439 * t1916 - t2211;
t1511 = -t2036 + t2190;
t1582 = t2037 - t2157;
t1945 = t1511 * t1920 + t1582 * t1916 + t2166;
t1519 = t2037 + t2187;
t1589 = t2036 + t2193;
t1944 = t1519 * t1920 + t1589 * t1916 - t2210;
t1423 = t1458 * t1920 - t2049;
t1452 = -pkin(3) * t1678 + pkin(9) * t1458;
t1942 = -pkin(2) * t1678 + pkin(8) * t1423 - pkin(9) * t2049 + t1452 * t1920;
t1941 = pkin(5) * t2097 - t1956;
t1936 = -t1501 + t2102;
t1935 = t1941 + t2100;
t1933 = t1936 + t2176;
t1932 = t1941 + t2101 + t2197;
t1929 = -t2022 + (-t2092 - t2021) * pkin(5) + t1939;
t1927 = t1929 + t2102;
t1909 = t1912 * t1923;
t1901 = -t1909 - t2076;
t1900 = t1909 - t2076;
t1899 = -t2006 - t2076;
t1898 = -t2006 + t2076;
t1887 = -t1909 + t2006;
t1886 = t1909 + t2006;
t1884 = qJDD(1) * t1918 + t1922 * t1923;
t1883 = t1997 * qJDD(1);
t1880 = -0.2e1 * t1907 + t1995;
t1873 = t1921 * t1891;
t1872 = t1997 * t2054;
t1859 = -pkin(6) * t1884 + g(3) * t1922;
t1853 = -t1870 + t1902;
t1852 = -t1902 + t2074;
t1851 = -t1911 * t2054 + t1921 * t1966;
t1850 = -t1879 * t1917 - t1912 * t2054;
t1846 = -t1899 * t1917 - t2013;
t1845 = -t1898 * t1917 + t1873;
t1844 = t1901 * t1921 - t2012;
t1843 = t1900 * t1921 - t2014;
t1842 = t1899 * t1921 - t2014;
t1841 = t1898 * t1921 + t2012;
t1840 = t1901 * t1917 + t1873;
t1839 = t1900 * t1917 + t2013;
t1837 = t1974 * t1921;
t1835 = -t1870 + t2074;
t1833 = t1880 * t1921 - t1838;
t1832 = t1878 * t1921 + t1880 * t1917;
t1797 = -pkin(7) * t1842 - t2018;
t1796 = -pkin(7) * t1840 - t2019;
t1792 = (t1874 * t1920 - t1875 * t1916) * t1904;
t1791 = (t1874 * t1916 + t1875 * t1920) * t1904;
t1789 = -pkin(1) * t1842 + t1848;
t1788 = -pkin(1) * t1840 + t1847;
t1777 = t1854 + t1823;
t1774 = t1855 + t1934;
t1772 = pkin(1) * t1880 + pkin(7) * t1844 + t2018;
t1771 = -pkin(1) * t1878 + pkin(7) * t1846 - t2019;
t1768 = t1823 * t1920 + t1875 * t2008;
t1767 = t1823 * t1916 - t1875 * t2007;
t1766 = -t1874 * t2007 + t1916 * t1934;
t1765 = t1874 * t2008 + t1920 * t1934;
t1761 = t1792 * t1921 - t1871 * t1917;
t1760 = t1792 * t1917 + t1871 * t1921;
t1757 = t1852 * t1920 + t2024;
t1756 = -t1853 * t1916 + t2106;
t1755 = t1852 * t1916 - t2023;
t1754 = t1853 * t1920 + t2108;
t1749 = pkin(1) * t1866 + pkin(7) * t1782;
t1747 = t1834 * t1920 + t2024;
t1741 = pkin(1) * t1886 + pkin(7) * t1883 + t1782;
t1738 = t1824 * t1916 + t2106;
t1723 = (t1829 * t1919 - t1831 * t1915) * t1896;
t1719 = t1768 * t1921 + t1993;
t1718 = t1766 * t1921 - t1993;
t1717 = t1768 * t1917 - t1992;
t1716 = t1766 * t1917 + t1992;
t1699 = t1775 * t1920 - t1777 * t1916;
t1698 = t1776 * t1916 - t1778 * t1920;
t1697 = t1775 * t1916 + t1777 * t1920;
t1696 = -pkin(8) * t1747 + t2026;
t1695 = t1757 * t1921 - t1774 * t1917;
t1694 = t1756 * t1921 + t1778 * t1917;
t1693 = t1757 * t1917 + t1774 * t1921;
t1692 = t1756 * t1917 - t1778 * t1921;
t1679 = -pkin(8) * t1738 + t2027;
t1677 = t1748 * t1921 - t1779 * t1917;
t1676 = t1748 * t1917 + t1779 * t1921;
t1669 = t1739 * t1921 - t1775 * t1917;
t1668 = t1739 * t1917 + t1775 * t1921;
t1667 = t1699 * t1921 - t1835 * t1917;
t1666 = t1699 * t1917 + t1835 * t1921;
t1627 = t1700 * t1921 - t1813 * t1917;
t1626 = t1700 * t1917 + t1813 * t1921;
t1625 = -pkin(2) * t1747 + t1711;
t1622 = t1723 * t1920 - t2107;
t1619 = t1723 * t1916 + t2105;
t1617 = -pkin(2) * t1738 + t1710;
t1613 = t1622 * t1921 - t2017;
t1610 = t1622 * t1917 + t1857;
t1591 = t1606 * t1921 + t1794 * t1917;
t1590 = t1606 * t1917 - t1794 * t1921;
t1569 = -pkin(1) * t1676 - t1960;
t1555 = -pkin(1) * t1668 - t1961;
t1548 = -pkin(8) * t1698 - t1605;
t1512 = -pkin(7) * t1676 - t1625 * t1917 + t1696 * t1921;
t1510 = -pkin(7) * t1668 - t1617 * t1917 + t1679 * t1921;
t1502 = -pkin(1) * t1747 + pkin(7) * t1677 + t1625 * t1921 + t1696 * t1917;
t1497 = -pkin(1) * t1626 - t1957;
t1496 = -pkin(1) * t1590 - t1977;
t1495 = -pkin(1) * t1738 + pkin(7) * t1669 + t1617 * t1921 + t1679 * t1917;
t1494 = -pkin(7) * t1626 + t1548 * t1921 + t1698 * t2070;
t1483 = t1573 * t1920 + t1579 * t1916;
t1470 = -pkin(7) * t1590 + (-pkin(8) * t1921 + t2070) * t1605;
t1468 = t1489 * t1921 + t2134;
t1465 = t1489 * t1917 - t2125;
t1463 = pkin(7) * t1627 + t1917 * t1548 + (-pkin(1) - t2069) * t1698;
t1456 = -t1981 + t2206;
t1455 = -t1968 - t2177;
t1451 = t2067 + t2217;
t1450 = pkin(7) * t1591 + (-pkin(1) + t1976) * t1605;
t1448 = -t1519 * t1916 + t1589 * t1920 + t2205;
t1442 = -t1933 - t2177;
t1441 = -t1511 * t1916 + t1582 * t1920 - t2175;
t1437 = t1882 - t1951 - t2206;
t1435 = -pkin(2) * t1483 - t1982;
t1434 = -t1932 + t2099 - t2206;
t1433 = -t1964 - t2217;
t1429 = pkin(5) * t2092 + t1460 - t2102 - t2176 - t2177;
t1425 = -t1944 - t2233;
t1422 = t1458 * t1916 + t2048;
t1419 = -t1945 - t2198;
t1418 = t1423 * t1921 + t1678 * t1917;
t1417 = t1423 * t1917 - t1678 * t1921;
t1414 = t1445 * t1920 + t1446 * t1916;
t1412 = t1448 * t1921 - t1456 * t1917 - t2231;
t1411 = -t1444 * t1916 + t1453 * t1920 - t2175;
t1410 = -t1440 * t1916 + t1449 * t1920 - t2205;
t1409 = -pkin(2) * t1422 - t2068;
t1408 = t1441 * t1921 - t1455 * t1917 - t2196;
t1405 = t1448 * t1917 + t1456 * t1921 - t2229;
t1403 = t1415 * t1921 + t1509 * t1917;
t1402 = t1415 * t1917 - t1509 * t1921;
t1401 = t1441 * t1917 + t1455 * t1921 + t2189;
t1400 = -t1952 - t2198;
t1399 = -t1436 * t1916 + t1439 * t1920 + t2216;
t1398 = -t1953 + t2233;
t1396 = t1427 * t1920 + t1428 * t1916;
t1395 = -t1424 * t1916 + t1432 * t1920 - t2205;
t1394 = -pkin(8) * t1422 - pkin(9) * t2048 - t1452 * t1916;
t1393 = -t1421 * t1916 + t1431 * t1920 - t2175;
t1392 = -t1946 - t2234;
t1391 = t1411 * t1921 - t1442 * t1917 - t2196;
t1390 = t1397 * t1921 + t1477 * t1917;
t1389 = t1397 * t1917 - t1477 * t1921;
t1388 = -pkin(8) * t1483 - t1420 * t1916 + t1426 * t1920;
t1387 = -t1954 + t2233;
t1386 = t1410 * t1921 - t1437 * t1917 + t2231;
t1385 = t1411 * t1917 + t1442 * t1921 + t2189;
t1384 = -t1955 - t2198;
t1383 = -pkin(2) * t1414 - t1983;
t1382 = t1410 * t1917 + t1437 * t1921 + t2229;
t1381 = t1399 * t1921 - t1451 * t1917 - t2232;
t1380 = -pkin(1) * t1465 - t1947;
t1379 = t1395 * t1921 - t1434 * t1917 + t2231;
t1377 = -pkin(1) * t1417 - t1942;
t1376 = t1399 * t1917 + t1451 * t1921 - t2230;
t1375 = t1395 * t1917 + t1434 * t1921 + t2229;
t1374 = t1393 * t1921 - t1429 * t1917 - t2196;
t1373 = -t1404 * t1916 + t1407 * t1920 - t2216;
t1372 = t1393 * t1917 + t1429 * t1921 + t2189;
t1371 = -pkin(7) * t1465 + t1388 * t1921 - t1435 * t1917;
t1369 = -pkin(1) * t1483 + pkin(7) * t1468 + t1388 * t1917 + t1435 * t1921;
t1368 = -t1949 + t2234;
t1367 = -pkin(8) * t1414 - t1406 * t1916 + t1416 * t1920;
t1366 = -pkin(2) * t1396 - t1965;
t1365 = -pkin(7) * t1417 + t1394 * t1921 - t1409 * t1917;
t1364 = t1373 * t1921 - t1433 * t1917 + t2232;
t1363 = t1373 * t1917 + t1433 * t1921 + t2230;
t1362 = -pkin(1) * t1422 + pkin(7) * t1418 + t1394 * t1917 + t1409 * t1921;
t1361 = -pkin(1) * t1402 - t1948;
t1360 = -pkin(7) * t1402 + t1367 * t1921 - t1383 * t1917;
t1359 = -pkin(8) * t1396 - t1370 * t1916 + t1378 * t1920;
t1358 = -pkin(1) * t1414 + pkin(7) * t1403 + t1367 * t1917 + t1383 * t1921;
t1357 = -pkin(1) * t1389 - t1950;
t1356 = -pkin(7) * t1389 + t1359 * t1921 - t1366 * t1917;
t1355 = -pkin(1) * t1396 + pkin(7) * t1390 + t1359 * t1917 + t1366 * t1921;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1885, 0, -t1884, 0, t1975, -t1859, -t1969, -pkin(6) * t1969, t1851 * t1922 - t1985, t1833 * t1922 + t1887 * t1918, t1845 * t1922 + t1918 * t1996, t1850 * t1922 + t1985, t1843 * t1922 + t1918 * t1995, qJDD(2) * t1918 + t1872 * t1922, t1922 * t1796 - t1918 * t1788 - pkin(6) * (t1844 * t1918 + t1880 * t1922), t1922 * t1797 - t1918 * t1789 - pkin(6) * (t1846 * t1918 - t1878 * t1922), t1922 * t1781 - pkin(6) * (t1883 * t1918 + t1886 * t1922), -pkin(6) * (t1782 * t1918 + t1866 * t1922) - (pkin(1) * t1918 - pkin(7) * t1922) * t1781, t1719 * t1922 + t1767 * t1918, t1667 * t1922 + t1697 * t1918, t1694 * t1922 + t1754 * t1918, t1718 * t1922 - t1765 * t1918, t1695 * t1922 + t1755 * t1918, t1761 * t1922 + t1791 * t1918, t1922 * t1510 - t1918 * t1555 - pkin(6) * (t1669 * t1918 - t1738 * t1922), t1922 * t1512 - t1918 * t1569 - pkin(6) * (t1677 * t1918 - t1747 * t1922), t1922 * t1494 - t1918 * t1497 - pkin(6) * (t1627 * t1918 - t1698 * t1922), t1922 * t1470 - t1918 * t1496 - pkin(6) * (t1591 * t1918 - t1605 * t1922), t2084, t2235, t2208, t2146, t2199, t2147, t1922 * t1408 - t1918 * t1419 - t2182, t1922 * t1412 - t1918 * t1425 - t2224, t1922 * t1381 - t1918 * t1392 - t2237, t1922 * t1365 - t1918 * t1377 - pkin(6) * (t1418 * t1918 - t1422 * t1922), t2084, t2208, -t2235, t2147, -t2199, t2146, t1922 * t1391 - t1918 * t1400 - t2182, t1922 * t1371 - t1918 * t1380 - pkin(6) * (t1468 * t1918 - t1483 * t1922), t1922 * t1386 - t1918 * t1398 + t2224, t1922 * t1360 - t1918 * t1361 - pkin(6) * (t1403 * t1918 - t1414 * t1922), t2084, -t2235, -t2208, t2146, t2199, t1613 * t1922 + t1619 * t1918, t1922 * t1374 - t1918 * t1384 - t2182, t1922 * t1379 - t1918 * t1387 + t2224, t1922 * t1364 - t1918 * t1368 + t2237, t1922 * t1356 - t1918 * t1357 - pkin(6) * (t1390 * t1918 - t1396 * t1922); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1884, 0, t1885, 0, t1859, t1975, t1986, pkin(6) * t1986, t1851 * t1918 + t1984, t1833 * t1918 - t1887 * t1922, t1845 * t1918 - t1922 * t1996, t1850 * t1918 - t1984, t1843 * t1918 - t1922 * t1995, -qJDD(2) * t1922 + t1872 * t1918, t1918 * t1796 + t1922 * t1788 + pkin(6) * (t1844 * t1922 - t1880 * t1918), t1918 * t1797 + t1922 * t1789 + pkin(6) * (t1846 * t1922 + t1878 * t1918), t1918 * t1781 + pkin(6) * (t1883 * t1922 - t1886 * t1918), pkin(6) * (t1782 * t1922 - t1866 * t1918) - (-pkin(1) * t1922 - pkin(7) * t1918) * t1781, t1719 * t1918 - t1767 * t1922, t1667 * t1918 - t1697 * t1922, t1694 * t1918 - t1754 * t1922, t1718 * t1918 + t1765 * t1922, t1695 * t1918 - t1755 * t1922, t1761 * t1918 - t1791 * t1922, t1918 * t1510 + t1922 * t1555 + pkin(6) * (t1669 * t1922 + t1738 * t1918), t1918 * t1512 + t1922 * t1569 + pkin(6) * (t1677 * t1922 + t1747 * t1918), t1918 * t1494 + t1922 * t1497 + pkin(6) * (t1627 * t1922 + t1698 * t1918), t1918 * t1470 + t1922 * t1496 + pkin(6) * (t1591 * t1922 + t1605 * t1918), t2085, t2236, t2209, t2148, t2201, t2149, t1918 * t1408 + t1922 * t1419 + t2181, t1918 * t1412 + t1922 * t1425 + t2223, t1918 * t1381 + t1922 * t1392 + t2238, t1918 * t1365 + t1922 * t1377 + pkin(6) * (t1418 * t1922 + t1422 * t1918), t2085, t2209, -t2236, t2149, -t2201, t2148, t1918 * t1391 + t1922 * t1400 + t2181, t1918 * t1371 + t1922 * t1380 + pkin(6) * (t1468 * t1922 + t1483 * t1918), t1918 * t1386 + t1922 * t1398 - t2223, t1918 * t1360 + t1922 * t1361 + pkin(6) * (t1403 * t1922 + t1414 * t1918), t2085, -t2236, -t2209, t2148, t2201, t1613 * t1918 - t1619 * t1922, t1918 * t1374 + t1922 * t1384 + t2181, t1918 * t1379 + t1922 * t1387 - t2223, t1918 * t1364 + t1922 * t1368 - t2238, t1918 * t1356 + t1922 * t1357 + pkin(6) * (t1390 * t1922 + t1396 * t1918); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1892, t1893, 0, 0, t1838, t1832, t1841, -t1837, t1839, 0, t1772, t1771, t1741, t1749, t1717, t1666, t1692, t1716, t1693, t1760, t1495, t1502, t1463, t1450, t2113, t1473, t2202, t2112, t2185, t2111, t1401, t1405, t1376, t1362, t2113, t2202, -t1473, t2111, -t2185, t2112, t1385, t1369, t1382, t1358, t2113, -t1473, -t2202, t2112, t2185, t1610, t1372, t1375, t1363, t1355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1923, 0, 0, -g(3), -t1892, 0, t1851, t1833, t1845, t1850, t1843, t1872, t1796, t1797, t1781, pkin(7) * t1781, t1719, t1667, t1694, t1718, t1695, t1761, t1510, t1512, t1494, t1470, t2115, t1476, t2200, t2114, t2183, t2109, t1408, t1412, t1381, t1365, t2115, t2200, -t1476, t2109, -t2183, t2114, t1391, t1371, t1386, t1360, t2115, -t1476, -t2200, t2114, t2183, t1613, t1374, t1379, t1364, t1356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1923, 0, qJDD(1), 0, g(3), 0, -t1893, 0, t1903, -t1887, -t1996, -t1903, -t1995, -qJDD(2), t1788, t1789, 0, pkin(1) * t1781, -t1767, -t1697, -t1754, t1765, -t1755, -t1791, t1555, t1569, t1497, t1496, -t2078, -t1484, t1592, -t2079, t1595, -t2082, t1419, t1425, t1392, t1377, -t2078, t1592, t1484, -t2082, -t1595, -t2079, t1400, t1380, t1398, t1361, -t2078, t1484, -t1592, -t2079, t1595, -t1619, t1384, t1387, t1368, t1357; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1892, t1893, 0, 0, t1838, t1832, t1841, -t1837, t1839, 0, t1772, t1771, t1741, t1749, t1717, t1666, t1692, t1716, t1693, t1760, t1495, t1502, t1463, t1450, t2113, t1473, t2202, t2112, t2185, t2111, t1401, t1405, t1376, t1362, t2113, t2202, -t1473, t2111, -t2185, t2112, t1385, t1369, t1382, t1358, t2113, -t1473, -t2202, t2112, t2185, t1610, t1372, t1375, t1363, t1355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1966, t1880, t1891, -t1991, t1900, t1991, 0, -t1866, t1847, 0, t1768, t1699, t1756, t1766, t1757, t1792, t1679, t1696, t1548, -pkin(8) * t1605, t2077, t1490, t2180, t2080, t2161, t2081, t1441, t1448, t1399, t1394, t2077, t2180, -t1490, t2081, -t2161, t2080, t1411, t1388, t1410, t1367, t2077, -t1490, -t2180, t2080, t2161, t1622, t1393, t1395, t1373, t1359; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1907, t1878, t1898, t1879, t1890, -t1907, t1866, 0, t1848, 0, -t2015, t1835, -t1778, t2015, t1774, t1871, t1617, t1625, -pkin(2) * t1698, -pkin(2) * t1605, -t2021, -t2096, -t2094, t2021, t2103, t1868, t1455, t1456, t1451, t1409, -t2021, -t2094, t2096, t1868, -t2103, t2021, t1442, t1435, t1437, t1383, -t2021, t2096, t2094, t2021, t2103, t1868, t1429, t1434, t1433, t1366; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1903, t1887, t1996, t1903, t1995, qJDD(2), -t1847, -t1848, 0, 0, t1767, t1697, t1754, -t1765, t1755, t1791, t1961, t1960, t1957, t1977, t2078, t1484, -t1592, t2079, -t1595, t2082, t1945, t1944, t1946, t1942, t2078, -t1592, -t1484, t2082, t1595, t2079, t1952, t1947, t1953, t1948, t2078, -t1484, t1592, t2079, -t1595, t1619, t1955, t1954, t1949, t1950; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1823, t1775, t1958, -t1854, t1852, t1854, 0, t1794, t1710, 0, t1999, -t2154, -t1686, t1967, t2152, t1971, t1582, t1589, t1439, -pkin(9) * t1457, t1999, -t1686, t2154, t1971, -t2152, t1967, t1453, t1426, t1449, t1416, t1999, t2154, t1686, t1967, t2152, t1723, t1431, t1432, t1407, t1378; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1855, t1777, t1853, -t1934, -t1814, t1855, -t1794, 0, t1711, 0, t1973, -t1572, -t1680, t1972, -t1683, t1963, t1511, t1519, t1436, t1452, t1973, -t1680, t1572, t1963, t1683, t1972, t1444, t1420, t1440, t1406, t1973, t1572, t1680, t1972, -t1683, t1963, t1421, t1424, t1404, t1370; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2015, -t1835, t1778, -t2015, -t1774, -t1871, -t1710, -t1711, 0, 0, t2021, t2096, t2094, -t2021, -t2103, -t1868, t1968, t1981, -t2067, t2068, t2021, t2094, -t2096, -t1868, t2103, -t2021, t1933, t1982, t1881 + t1951, t1983, t2021, -t2096, -t2094, -t2021, -t2103, -t1868, t1927 + t2176, t1932 + t2100, t1964, t1965; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1928, -t2104, -t2092, -t2011, t2089, t2011, 0, t1678, t1533, 0, t1928, -t2092, t2104, t2011, -t2089, -t2011, -t2060, t1479, t1492, -qJ(5) * t1509, t1928, t2104, t2092, -t2011, t2089, t2011, t1604, t1454, t1447, t1430; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2020, t2095, -t2098, -t1708, -t2093, t2020, -t1678, 0, t1534, 0, -t2020, -t2098, -t2095, t2020, t2093, -t1708, t1493, t1478, pkin(4) * t2095, -pkin(4) * t1509, -t2020, -t2095, t2098, -t1708, -t2093, t2020, t1443, t1547, t1438, t1413; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2021, t2096, t2094, -t2021, -t2103, -t1868, -t1533, -t1534, 0, 0, t2021, t2094, -t2096, -t1868, t2103, -t2021, t1936, t2001, t1881 + t1959, t2004, t2021, -t2096, -t2094, -t2021, -t2103, -t1868, t1927, t1935 + t2101, t1979, t1980; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1928, -t2092, t2104, t2011, -t2089, -t2011, 0, t1501, -t1509, 0, t1928, t2104, t2092, -t2011, t2089, t2011, -t2056, t1924, t1930, -t2058; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2021, t2094, -t2096, -t1868, t2103, -t2021, -t1501, 0, t1499, 0, t2021, -t2096, -t2094, -t2021, -t2103, -t1868, t1929, t1935, t2063, -t2064; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2020, t2098, t2095, -t2020, -t2093, t1708, t1509, -t1499, 0, 0, t2020, t2095, -t2098, t1708, t2093, -t2020, t1925 + t2083, -pkin(5) * t2095 - t2055, -pkin(5) * t2090 - t1940 + t2100, pkin(5) * t1477 + t2057; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1928, t2104, t2092, -t2011, t2089, t2011, 0, -t1477, -t1460, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2020, t2095, -t2098, t1708, t2093, -t2020, t1477, 0, t1462, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2021, t2096, t2094, t2021, t2103, t1868, t1460, -t1462, 0, 0;];
m_new_reg  = t1;
