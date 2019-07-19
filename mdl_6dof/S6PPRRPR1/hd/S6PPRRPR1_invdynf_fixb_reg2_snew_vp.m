% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PPRRPR1
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
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d6,theta1,theta2,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 20:07
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PPRRPR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRPR1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRPR1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PPRRPR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PPRRPR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PPRRPR1_invdynf_fixb_reg2_snew_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 20:07:32
% EndTime: 2019-05-04 20:07:40
% DurationCPUTime: 8.33s
% Computational Cost: add. (68846->312), mult. (132817->507), div. (0->0), fcn. (107426->16), ass. (0->278)
t2108 = sin(pkin(11));
t2113 = cos(pkin(11));
t2087 = -t2113 * g(1) - t2108 * g(2);
t2107 = sin(pkin(12));
t2112 = cos(pkin(12));
t2086 = t2108 * g(1) - t2113 * g(2);
t2103 = -g(3) + qJDD(1);
t2110 = sin(pkin(6));
t2115 = cos(pkin(6));
t2126 = t2086 * t2115 + t2103 * t2110;
t2035 = -t2107 * t2087 + t2112 * t2126;
t2114 = cos(pkin(7));
t2167 = t2114 * t2035;
t2060 = -t2110 * t2086 + t2115 * t2103 + qJDD(2);
t2109 = sin(pkin(7));
t2168 = t2109 * t2060;
t2181 = t2167 + t2168;
t2121 = cos(qJ(4));
t2166 = t2121 * qJD(3);
t2093 = -qJD(6) + t2166;
t2180 = qJD(6) - t2093;
t2161 = qJD(4) * t2166;
t2118 = sin(qJ(4));
t2163 = t2118 * qJDD(3);
t2079 = t2161 + t2163;
t2106 = sin(pkin(13));
t2111 = cos(pkin(13));
t2061 = t2106 * qJDD(4) + t2111 * t2079;
t2172 = qJD(3) * t2118;
t2074 = -t2111 * qJD(4) + t2106 * t2172;
t2064 = t2074 * t2166;
t2040 = -t2061 + t2064;
t2096 = qJD(4) * t2172;
t2099 = t2121 * qJDD(3);
t2080 = t2099 - t2096;
t2076 = t2106 * qJD(4) + t2111 * t2172;
t2170 = t2076 * t2074;
t2042 = -t2080 - t2170;
t2179 = qJD(4) ^ 2;
t2117 = sin(qJ(6));
t2120 = cos(qJ(6));
t2045 = t2120 * t2074 + t2117 * t2076;
t2178 = t2045 ^ 2;
t2047 = -t2117 * t2074 + t2120 * t2076;
t2177 = t2047 ^ 2;
t2176 = t2074 ^ 2;
t2175 = t2076 ^ 2;
t2174 = t2093 ^ 2;
t2173 = -2 * qJD(5);
t2171 = t2047 * t2045;
t2102 = t2121 ^ 2;
t2123 = qJD(3) ^ 2;
t2169 = t2102 * t2123;
t2165 = qJD(6) + t2093;
t2036 = t2112 * t2087 + t2107 * t2126;
t2119 = sin(qJ(3));
t2122 = cos(qJ(3));
t2000 = t2122 * t2036 + t2119 * t2181;
t1996 = -t2123 * pkin(3) + qJDD(3) * pkin(9) + t2000;
t2133 = -t2109 * t2035 + t2114 * t2060;
t1975 = t2121 * t1996 + t2118 * t2133;
t2101 = t2118 ^ 2;
t2164 = t2101 + t2102;
t2162 = t2076 * t2166;
t2077 = (-pkin(4) * t2121 - qJ(5) * t2118) * qJD(3);
t1968 = -pkin(4) * t2179 + qJDD(4) * qJ(5) + t2077 * t2166 + t1975;
t2157 = t2119 * t2036 - t2122 * t2181;
t1995 = -qJDD(3) * pkin(3) - t2123 * pkin(9) + t2157;
t1979 = (-t2079 - t2161) * qJ(5) + (-t2080 + t2096) * pkin(4) + t1995;
t1946 = t2111 * t1968 + t2106 * t1979 + t2074 * t2173;
t2160 = -qJDD(6) + t2080;
t2158 = -t2111 * qJDD(4) + t2106 * t2079;
t2159 = -t2117 * t2061 - t2120 * t2158;
t1945 = -t2106 * t1968 + t2111 * t1979 + t2076 * t2173;
t1939 = pkin(5) * t2042 + pkin(10) * t2040 + t1945;
t2062 = -pkin(5) * t2166 - t2076 * pkin(10);
t1940 = -pkin(5) * t2176 - pkin(10) * t2158 + t2062 * t2166 + t1946;
t1916 = t2120 * t1939 - t2117 * t1940;
t1917 = t2117 * t1939 + t2120 * t1940;
t1900 = t2120 * t1916 + t2117 * t1917;
t1901 = -t2117 * t1916 + t2120 * t1917;
t1889 = -t2106 * t1900 + t2111 * t1901;
t2019 = t2121 * t2133;
t1967 = qJDD(5) - t2019 - t2179 * qJ(5) - qJDD(4) * pkin(4) + (qJD(3) * t2077 + t1996) * t2118;
t1959 = pkin(5) * t2158 - pkin(10) * t2176 + t2076 * t2062 + t1967;
t1886 = t2118 * t1889 - t2121 * t1959;
t1887 = t2121 * t1889 + t2118 * t1959;
t1888 = t2111 * t1900 + t2106 * t1901;
t2155 = t1887 * t2119 - t1888 * t2122;
t1879 = -t2109 * t1886 + t2114 * t2155;
t1880 = t2122 * t1887 + t2119 * t1888;
t2156 = t1879 * t2112 + t1880 * t2107;
t1925 = -t2106 * t1945 + t2111 * t1946;
t1912 = t2118 * t1925 - t2121 * t1967;
t1913 = t2121 * t1925 + t2118 * t1967;
t1924 = t2111 * t1945 + t2106 * t1946;
t2150 = t1913 * t2119 - t1924 * t2122;
t1896 = -t2109 * t1912 + t2114 * t2150;
t1902 = t2122 * t1913 + t2119 * t1924;
t2154 = t1896 * t2112 + t1902 * t2107;
t1990 = -t2047 * t2165 + t2159;
t2124 = -t2120 * t2061 + t2117 * t2158;
t1992 = t2045 * t2165 + t2124;
t1962 = t2117 * t1990 + t2120 * t1992;
t1963 = t2120 * t1990 - t2117 * t1992;
t1937 = -t2106 * t1962 + t2111 * t1963;
t2005 = -t2177 - t2178;
t1930 = t2118 * t1937 - t2121 * t2005;
t1931 = t2121 * t1937 + t2118 * t2005;
t1936 = t2111 * t1962 + t2106 * t1963;
t2148 = t1931 * t2119 - t1936 * t2122;
t1905 = -t2109 * t1930 + t2114 * t2148;
t1909 = t2122 * t1931 + t2119 * t1936;
t2153 = t1905 * t2112 + t1909 * t2107;
t2010 = -t2160 - t2171;
t2017 = -t2174 - t2178;
t1980 = t2120 * t2010 + t2117 * t2017;
t1981 = -t2117 * t2010 + t2120 * t2017;
t1954 = -t2106 * t1980 + t2111 * t1981;
t1989 = t2047 * t2180 - t2159;
t1941 = t2118 * t1954 - t2121 * t1989;
t1942 = t2121 * t1954 + t2118 * t1989;
t1953 = t2111 * t1980 + t2106 * t1981;
t2147 = t1942 * t2119 - t1953 * t2122;
t1908 = -t2109 * t1941 + t2114 * t2147;
t1928 = t2122 * t1942 + t2119 * t1953;
t2152 = t1908 * t2112 + t1928 * t2107;
t2009 = t2160 - t2171;
t2027 = -t2174 - t2177;
t1982 = t2117 * t2009 + t2120 * t2027;
t1983 = t2120 * t2009 - t2117 * t2027;
t1961 = -t2106 * t1982 + t2111 * t1983;
t1991 = -t2045 * t2180 - t2124;
t1943 = t2118 * t1961 - t2121 * t1991;
t1944 = t2121 * t1961 + t2118 * t1991;
t1960 = t2111 * t1982 + t2106 * t1983;
t2146 = t1944 * t2119 - t1960 * t2122;
t1911 = -t2109 * t1943 + t2114 * t2146;
t1929 = t2122 * t1944 + t2119 * t1960;
t2151 = t1911 * t2112 + t1929 * t2107;
t1974 = -t2118 * t1996 + t2019;
t1947 = t2121 * t1974 + t2118 * t1975;
t1948 = -t2118 * t1974 + t2121 * t1975;
t2145 = t1948 * t2119 - t1995 * t2122;
t1919 = -t2109 * t1947 + t2114 * t2145;
t1935 = t2122 * t1948 + t2119 * t1995;
t2149 = t1919 * t2112 + t1935 * t2107;
t2038 = -t2158 - t2162;
t2008 = t2111 * t2038 - t2106 * t2040;
t2033 = -t2175 - t2176;
t1984 = t2118 * t2008 - t2121 * t2033;
t1985 = t2121 * t2008 + t2118 * t2033;
t2007 = t2106 * t2038 + t2111 * t2040;
t2140 = t1985 * t2119 - t2007 * t2122;
t1950 = -t2109 * t1984 + t2114 * t2140;
t1966 = t2122 * t1985 + t2119 * t2007;
t2144 = t1950 * t2112 + t1966 * t2107;
t2050 = -t2169 - t2176;
t2012 = -t2106 * t2042 + t2111 * t2050;
t2037 = t2158 - t2162;
t1993 = t2118 * t2012 - t2121 * t2037;
t1994 = t2121 * t2012 + t2118 * t2037;
t2011 = t2111 * t2042 + t2106 * t2050;
t2139 = t1994 * t2119 - t2011 * t2122;
t1952 = -t2109 * t1993 + t2114 * t2139;
t1973 = t2122 * t1994 + t2119 * t2011;
t2143 = t1952 * t2112 + t1973 * t2107;
t2138 = t2119 * t2000 - t2122 * t2157;
t1956 = t2109 ^ 2 * t2035 + (t2138 - t2168) * t2114;
t1964 = t2122 * t2000 + t2119 * t2157;
t2142 = t1956 * t2112 + t1964 * t2107;
t2041 = t2080 - t2170;
t2063 = -t2169 - t2175;
t2022 = t2111 * t2041 - t2106 * t2063;
t2039 = t2061 + t2064;
t2001 = t2118 * t2022 - t2121 * t2039;
t2002 = t2121 * t2022 + t2118 * t2039;
t2021 = t2106 * t2041 + t2111 * t2063;
t2137 = t2002 * t2119 - t2021 * t2122;
t1958 = -t2109 * t2001 + t2114 * t2137;
t1976 = t2122 * t2002 + t2119 * t2021;
t2141 = t1958 * t2112 + t1976 * t2107;
t2092 = t2118 * t2123 * t2121;
t2088 = qJDD(4) + t2092;
t2091 = -t2169 - t2179;
t2055 = t2121 * t2088 + t2118 * t2091;
t2057 = -t2118 * t2088 + t2121 * t2091;
t2081 = t2099 - 0.2e1 * t2096;
t2131 = t2057 * t2119 + t2081 * t2122;
t2015 = -t2109 * t2055 + t2114 * t2131;
t2031 = t2122 * t2057 - t2119 * t2081;
t2136 = t2015 * t2112 + t2031 * t2107;
t2089 = -qJDD(4) + t2092;
t2090 = -t2101 * t2123 - t2179;
t2056 = t2118 * t2089 + t2121 * t2090;
t2058 = t2121 * t2089 - t2118 * t2090;
t2078 = 0.2e1 * t2161 + t2163;
t2130 = t2058 * t2119 - t2078 * t2122;
t2016 = -t2109 * t2056 + t2114 * t2130;
t2032 = t2122 * t2058 + t2119 * t2078;
t2135 = t2016 * t2112 + t2032 * t2107;
t2134 = t2035 * t2112 + t2036 * t2107;
t2082 = t2164 * qJDD(3);
t2085 = t2164 * t2123;
t2127 = t2082 * t2119 + t2085 * t2122;
t2049 = t2127 * t2114;
t2053 = t2122 * t2082 - t2119 * t2085;
t2132 = t2049 * t2112 + t2053 * t2107;
t2084 = -t2119 * qJDD(3) - t2122 * t2123;
t2069 = t2084 * t2114;
t2125 = t2122 * qJDD(3) - t2119 * t2123;
t2129 = t2069 * t2112 - t2107 * t2125;
t2070 = t2125 * t2114;
t2128 = t2070 * t2112 + t2084 * t2107;
t2068 = t2125 * t2109;
t2067 = t2084 * t2109;
t2048 = t2127 * t2109;
t2044 = -t2107 * t2070 + t2112 * t2084;
t2043 = -t2107 * t2069 - t2112 * t2125;
t2026 = -t2110 * t2068 + t2115 * t2128;
t2025 = -t2110 * t2067 + t2115 * t2129;
t2024 = t2115 * t2068 + t2110 * t2128;
t2023 = t2115 * t2067 + t2110 * t2129;
t2020 = -t2107 * t2049 + t2112 * t2053;
t2014 = t2114 * t2056 + t2109 * t2130;
t2013 = t2114 * t2055 + t2109 * t2131;
t2006 = -t2107 * t2035 + t2112 * t2036;
t2004 = -t2110 * t2048 + t2115 * t2132;
t2003 = t2115 * t2048 + t2110 * t2132;
t1998 = -t2110 * t2060 + t2115 * t2134;
t1997 = t2115 * t2060 + t2110 * t2134;
t1988 = -t2107 * t2016 + t2112 * t2032;
t1987 = -t2107 * t2015 + t2112 * t2031;
t1972 = -t2110 * t2014 + t2115 * t2135;
t1971 = -t2110 * t2013 + t2115 * t2136;
t1970 = t2115 * t2014 + t2110 * t2135;
t1969 = t2115 * t2013 + t2110 * t2136;
t1957 = t2114 * t2001 + t2109 * t2137;
t1955 = t2114 ^ 2 * t2060 + (t2138 - t2167) * t2109;
t1951 = t2114 * t1993 + t2109 * t2139;
t1949 = t2114 * t1984 + t2109 * t2140;
t1938 = -t2107 * t1958 + t2112 * t1976;
t1934 = -t2107 * t1952 + t2112 * t1973;
t1933 = -t2107 * t1956 + t2112 * t1964;
t1932 = -t2107 * t1950 + t2112 * t1966;
t1927 = -t2110 * t1957 + t2115 * t2141;
t1926 = t2115 * t1957 + t2110 * t2141;
t1923 = -t2110 * t1955 + t2115 * t2142;
t1922 = t2115 * t1955 + t2110 * t2142;
t1921 = -t2110 * t1951 + t2115 * t2143;
t1920 = t2115 * t1951 + t2110 * t2143;
t1918 = t2114 * t1947 + t2109 * t2145;
t1915 = -t2110 * t1949 + t2115 * t2144;
t1914 = t2115 * t1949 + t2110 * t2144;
t1910 = t2114 * t1943 + t2109 * t2146;
t1907 = t2114 * t1941 + t2109 * t2147;
t1906 = -t2107 * t1919 + t2112 * t1935;
t1904 = t2114 * t1930 + t2109 * t2148;
t1903 = -t2107 * t1911 + t2112 * t1929;
t1899 = -t2107 * t1908 + t2112 * t1928;
t1898 = -t2110 * t1918 + t2115 * t2149;
t1897 = t2115 * t1918 + t2110 * t2149;
t1895 = t2114 * t1912 + t2109 * t2150;
t1894 = -t2110 * t1910 + t2115 * t2151;
t1893 = t2115 * t1910 + t2110 * t2151;
t1892 = -t2107 * t1905 + t2112 * t1909;
t1891 = -t2110 * t1907 + t2115 * t2152;
t1890 = t2115 * t1907 + t2110 * t2152;
t1885 = -t2110 * t1904 + t2115 * t2153;
t1884 = t2115 * t1904 + t2110 * t2153;
t1883 = -t2107 * t1896 + t2112 * t1902;
t1882 = -t2110 * t1895 + t2115 * t2154;
t1881 = t2115 * t1895 + t2110 * t2154;
t1878 = t2114 * t1886 + t2109 * t2155;
t1877 = -t2107 * t1879 + t2112 * t1880;
t1876 = -t2110 * t1878 + t2115 * t2156;
t1875 = t2115 * t1878 + t2110 * t2156;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2108 * t2086 + t2113 * t2087, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2108 * t1998 + t2113 * t2006, 0, 0, 0, 0, 0, 0, -t2108 * t2026 + t2113 * t2044, -t2108 * t2025 + t2113 * t2043, 0, -t2108 * t1923 + t2113 * t1933, 0, 0, 0, 0, 0, 0, -t2108 * t1971 + t2113 * t1987, -t2108 * t1972 + t2113 * t1988, -t2108 * t2004 + t2113 * t2020, -t2108 * t1898 + t2113 * t1906, 0, 0, 0, 0, 0, 0, -t2108 * t1921 + t2113 * t1934, -t2108 * t1927 + t2113 * t1938, -t2108 * t1915 + t2113 * t1932, -t2108 * t1882 + t2113 * t1883, 0, 0, 0, 0, 0, 0, -t2108 * t1891 + t2113 * t1899, -t2108 * t1894 + t2113 * t1903, -t2108 * t1885 + t2113 * t1892, -t2108 * t1876 + t2113 * t1877; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2113 * t2086 + t2108 * t2087, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2113 * t1998 + t2108 * t2006, 0, 0, 0, 0, 0, 0, t2113 * t2026 + t2108 * t2044, t2113 * t2025 + t2108 * t2043, 0, t2113 * t1923 + t2108 * t1933, 0, 0, 0, 0, 0, 0, t2113 * t1971 + t2108 * t1987, t2113 * t1972 + t2108 * t1988, t2113 * t2004 + t2108 * t2020, t2113 * t1898 + t2108 * t1906, 0, 0, 0, 0, 0, 0, t2113 * t1921 + t2108 * t1934, t2113 * t1927 + t2108 * t1938, t2113 * t1915 + t2108 * t1932, t2113 * t1882 + t2108 * t1883, 0, 0, 0, 0, 0, 0, t2113 * t1891 + t2108 * t1899, t2113 * t1894 + t2108 * t1903, t2113 * t1885 + t2108 * t1892, t2113 * t1876 + t2108 * t1877; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2103, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1997, 0, 0, 0, 0, 0, 0, t2024, t2023, 0, t1922, 0, 0, 0, 0, 0, 0, t1969, t1970, t2003, t1897, 0, 0, 0, 0, 0, 0, t1920, t1926, t1914, t1881, 0, 0, 0, 0, 0, 0, t1890, t1893, t1884, t1875; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2087, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2006, 0, 0, 0, 0, 0, 0, t2044, t2043, 0, t1933, 0, 0, 0, 0, 0, 0, t1987, t1988, t2020, t1906, 0, 0, 0, 0, 0, 0, t1934, t1938, t1932, t1883, 0, 0, 0, 0, 0, 0, t1899, t1903, t1892, t1877; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2086, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1998, 0, 0, 0, 0, 0, 0, t2026, t2025, 0, t1923, 0, 0, 0, 0, 0, 0, t1971, t1972, t2004, t1898, 0, 0, 0, 0, 0, 0, t1921, t1927, t1915, t1882, 0, 0, 0, 0, 0, 0, t1891, t1894, t1885, t1876; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2103, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1997, 0, 0, 0, 0, 0, 0, t2024, t2023, 0, t1922, 0, 0, 0, 0, 0, 0, t1969, t1970, t2003, t1897, 0, 0, 0, 0, 0, 0, t1920, t1926, t1914, t1881, 0, 0, 0, 0, 0, 0, t1890, t1893, t1884, t1875; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2036, 0, 0, 0, 0, 0, 0, t2084, -t2125, 0, t1964, 0, 0, 0, 0, 0, 0, t2031, t2032, t2053, t1935, 0, 0, 0, 0, 0, 0, t1973, t1976, t1966, t1902, 0, 0, 0, 0, 0, 0, t1928, t1929, t1909, t1880; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2035, 0, 0, 0, 0, 0, 0, t2070, t2069, 0, t1956, 0, 0, 0, 0, 0, 0, t2015, t2016, t2049, t1919, 0, 0, 0, 0, 0, 0, t1952, t1958, t1950, t1896, 0, 0, 0, 0, 0, 0, t1908, t1911, t1905, t1879; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2060, 0, 0, 0, 0, 0, 0, t2068, t2067, 0, t1955, 0, 0, 0, 0, 0, 0, t2013, t2014, t2048, t1918, 0, 0, 0, 0, 0, 0, t1951, t1957, t1949, t1895, 0, 0, 0, 0, 0, 0, t1907, t1910, t1904, t1878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2123, -qJDD(3), 0, t2000, 0, 0, 0, 0, 0, 0, t2057, t2058, t2082, t1948, 0, 0, 0, 0, 0, 0, t1994, t2002, t1985, t1913, 0, 0, 0, 0, 0, 0, t1942, t1944, t1931, t1887; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(3), -t2123, 0, -t2157, 0, 0, 0, 0, 0, 0, t2081, -t2078, t2085, -t1995, 0, 0, 0, 0, 0, 0, -t2011, -t2021, -t2007, -t1924, 0, 0, 0, 0, 0, 0, -t1953, -t1960, -t1936, -t1888; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2133, 0, 0, 0, 0, 0, 0, t2055, t2056, 0, t1947, 0, 0, 0, 0, 0, 0, t1993, t2001, t1984, t1912, 0, 0, 0, 0, 0, 0, t1941, t1943, t1930, t1886; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2091, t2089, t2099, t1975, 0, 0, 0, 0, 0, 0, t2012, t2022, t2008, t1925, 0, 0, 0, 0, 0, 0, t1954, t1961, t1937, t1889; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2088, t2090, -t2163, t1974, 0, 0, 0, 0, 0, 0, -t2037, -t2039, -t2033, -t1967, 0, 0, 0, 0, 0, 0, -t1989, -t1991, -t2005, -t1959; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2081, t2078, -t2085, t1995, 0, 0, 0, 0, 0, 0, t2011, t2021, t2007, t1924, 0, 0, 0, 0, 0, 0, t1953, t1960, t1936, t1888; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2050, t2041, t2038, t1946, 0, 0, 0, 0, 0, 0, t1981, t1983, t1963, t1901; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2042, t2063, t2040, t1945, 0, 0, 0, 0, 0, 0, t1980, t1982, t1962, t1900; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2037, t2039, t2033, t1967, 0, 0, 0, 0, 0, 0, t1989, t1991, t2005, t1959; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2017, t2009, t1990, t1917; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2010, t2027, t1992, t1916; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1989, t1991, t2005, t1959;];
f_new_reg  = t1;