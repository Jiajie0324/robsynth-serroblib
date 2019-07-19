% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPRPPR2
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta2,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 16:36
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPRPPR2_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR2_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPPR2_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPPR2_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPPR2_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPPR2_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 16:35:47
% EndTime: 2019-05-05 16:35:53
% DurationCPUTime: 6.94s
% Computational Cost: add. (16091->284), mult. (35821->342), div. (0->0), fcn. (23854->10), ass. (0->198)
t2162 = sin(pkin(10));
t2164 = cos(pkin(10));
t2172 = cos(qJ(3));
t2210 = qJD(1) * t2172;
t2169 = sin(qJ(3));
t2211 = qJD(1) * t2169;
t2119 = t2162 * t2211 - t2164 * t2210;
t2121 = (t2162 * t2172 + t2164 * t2169) * qJD(1);
t2204 = t2121 * t2119;
t2091 = -qJDD(3) - t2204;
t2174 = qJD(3) ^ 2;
t2214 = t2121 ^ 2;
t2110 = t2174 + t2214;
t2064 = t2091 * t2162 - t2110 * t2164;
t2066 = t2091 * t2164 + t2110 * t2162;
t2036 = t2064 * t2169 - t2066 * t2172;
t2163 = sin(pkin(9));
t2165 = cos(pkin(9));
t2196 = qJD(3) * t2210;
t2198 = t2169 * qJDD(1);
t2131 = t2196 + t2198;
t2154 = t2172 * qJDD(1);
t2197 = qJD(3) * t2211;
t2132 = t2154 - t2197;
t2187 = t2131 * t2164 + t2132 * t2162;
t2209 = qJD(3) * t2119;
t2180 = t2187 - t2209;
t2018 = t2036 * t2163 + t2165 * t2180;
t2020 = t2036 * t2165 - t2163 * t2180;
t2170 = sin(qJ(1));
t2173 = cos(qJ(1));
t2239 = t2018 * t2173 + t2020 * t2170;
t2238 = t2018 * t2170 - t2020 * t2173;
t2118 = t2119 ^ 2;
t2218 = -t2118 - t2214;
t2098 = t2131 * t2162 - t2164 * t2132;
t2208 = qJD(3) * t2121;
t2070 = t2098 - t2208;
t2073 = t2187 + t2209;
t2228 = -t2070 * t2164 + t2073 * t2162;
t2229 = -t2070 * t2162 - t2073 * t2164;
t2231 = -t2169 * t2229 + t2172 * t2228;
t2234 = t2163 * t2218 + t2165 * t2231;
t2235 = t2163 * t2231 - t2165 * t2218;
t2237 = -t2170 * t2235 + t2173 * t2234;
t2236 = t2170 * t2234 + t2173 * t2235;
t2087 = -t2174 - t2118;
t2190 = qJDD(3) - t2204;
t2053 = t2087 * t2162 + t2164 * t2190;
t2056 = -t2087 * t2164 + t2162 * t2190;
t2027 = t2053 * t2169 + t2056 * t2172;
t2225 = t2098 + t2208;
t2010 = t2027 * t2163 + t2165 * t2225;
t2012 = t2027 * t2165 - t2163 * t2225;
t2233 = t2010 * t2173 + t2012 * t2170;
t2232 = t2010 * t2170 - t2012 * t2173;
t2230 = t2169 * t2228 + t2172 * t2229;
t2035 = t2064 * t2172 + t2066 * t2169;
t2024 = t2053 * t2172 - t2056 * t2169;
t2168 = sin(qJ(6));
t2171 = cos(qJ(6));
t2101 = qJD(3) * t2168 - t2171 * t2119;
t2217 = t2101 ^ 2;
t2103 = qJD(3) * t2171 + t2119 * t2168;
t2216 = t2103 ^ 2;
t2117 = qJD(6) + t2121;
t2215 = t2117 ^ 2;
t2213 = 2 * qJD(4);
t2212 = 2 * qJD(5);
t2205 = t2101 * t2103;
t2158 = t2172 ^ 2;
t2175 = qJD(1) ^ 2;
t2203 = t2158 * t2175;
t2202 = pkin(4) * t2119 - qJ(5) * t2121 + t2213;
t2201 = qJD(6) - t2117;
t2200 = qJD(6) + t2117;
t2144 = -g(1) * t2173 - g(2) * t2170;
t2129 = -pkin(1) * t2175 + t2144;
t2143 = g(1) * t2170 - g(2) * t2173;
t2182 = qJDD(1) * pkin(1) + t2143;
t2097 = t2165 * t2129 + t2163 * t2182;
t2085 = -pkin(2) * t2175 + qJDD(1) * pkin(7) + t2097;
t2159 = -g(3) + qJDD(2);
t2078 = t2172 * t2085 + t2169 * t2159;
t2157 = t2169 ^ 2;
t2199 = t2157 + t2158;
t2148 = t2172 * t2175 * t2169;
t2141 = qJDD(3) + t2148;
t2195 = -t2215 - t2216;
t2194 = pkin(4) * qJD(3) - (2 * qJD(5));
t2077 = -t2169 * t2085 + t2172 * t2159;
t2051 = (-t2131 + t2196) * qJ(4) + t2141 * pkin(3) + t2077;
t2140 = qJD(3) * pkin(3) - qJ(4) * t2211;
t2052 = -pkin(3) * t2203 + qJ(4) * t2132 - qJD(3) * t2140 + t2078;
t2193 = -t2164 * t2051 + t2162 * t2052;
t2096 = -t2163 * t2129 + t2165 * t2182;
t2134 = -qJDD(1) * t2163 - t2165 * t2175;
t2135 = qJDD(1) * t2165 - t2163 * t2175;
t2192 = t2173 * t2134 - t2135 * t2170;
t2191 = -t2168 * qJDD(3) + t2171 * t2098;
t2181 = -qJDD(3) * pkin(4) - t2174 * qJ(5) + qJDD(5) + t2193;
t1992 = -qJDD(3) * pkin(8) + t2073 * pkin(5) + (pkin(8) * t2119 + t2202) * t2121 + t2181;
t2108 = pkin(5) * t2121 - qJD(3) * pkin(8);
t2084 = -qJDD(1) * pkin(2) - t2175 * pkin(7) - t2096;
t2058 = -t2132 * pkin(3) - qJ(4) * t2203 + t2140 * t2211 + qJDD(4) + t2084;
t2176 = t2098 * pkin(4) - qJ(5) * t2180 + t2058;
t1996 = -t2118 * pkin(5) + (-t2108 + t2194) * t2121 + t2176 + t2098 * pkin(8);
t2189 = t1992 * t2171 - t1996 * t2168;
t2188 = t2162 * t2051 + t2164 * t2052;
t2186 = t2134 * t2170 + t2135 * t2173;
t2184 = -t2171 * qJDD(3) - t2168 * t2098;
t2183 = -qJDD(6) - t2187;
t2179 = -t2183 - t2205;
t2178 = t2101 * t2201 + t2184;
t2177 = -t2174 * pkin(4) + qJDD(3) * qJ(5) - t2119 * t2202 + t2188;
t2147 = -t2174 - t2203;
t2146 = -t2157 * t2175 - t2174;
t2142 = -qJDD(3) + t2148;
t2139 = t2199 * t2175;
t2138 = -qJDD(1) * t2170 - t2173 * t2175;
t2137 = qJDD(1) * t2173 - t2170 * t2175;
t2136 = t2199 * qJDD(1);
t2133 = t2154 - 0.2e1 * t2197;
t2130 = 0.2e1 * t2196 + t2198;
t2107 = t2142 * t2172 - t2146 * t2169;
t2106 = -t2141 * t2169 + t2147 * t2172;
t2105 = t2142 * t2169 + t2146 * t2172;
t2104 = t2141 * t2172 + t2147 * t2169;
t2100 = t2136 * t2165 - t2139 * t2163;
t2099 = t2136 * t2163 + t2139 * t2165;
t2082 = t2107 * t2165 + t2130 * t2163;
t2081 = t2106 * t2165 - t2133 * t2163;
t2080 = t2107 * t2163 - t2130 * t2165;
t2079 = t2106 * t2163 + t2133 * t2165;
t2061 = -t2215 - t2217;
t2060 = -t2096 * t2163 + t2097 * t2165;
t2059 = t2096 * t2165 + t2097 * t2163;
t2057 = -t2216 - t2217;
t2050 = t2183 - t2205;
t2047 = -t2077 * t2169 + t2078 * t2172;
t2046 = t2077 * t2172 + t2078 * t2169;
t2041 = -t2101 * t2200 - t2184;
t2040 = -t2103 * t2201 + t2191;
t2039 = t2103 * t2200 - t2191;
t2033 = t2047 * t2165 + t2084 * t2163;
t2032 = t2047 * t2163 - t2084 * t2165;
t2031 = t2050 * t2171 - t2168 * t2195;
t2030 = t2168 * t2050 + t2171 * t2195;
t2029 = t2061 * t2171 - t2168 * t2179;
t2028 = t2168 * t2061 + t2171 * t2179;
t2023 = -0.2e1 * qJD(4) * t2119 + t2188;
t2022 = -t2121 * t2213 - t2193;
t2017 = t2121 * t2194 + t2176;
t2008 = t2040 * t2171 - t2168 * t2178;
t2007 = t2168 * t2040 + t2171 * t2178;
t2006 = t2202 * t2121 + t2181;
t2005 = qJD(3) * t2212 + t2177;
t2004 = t2030 * t2162 + t2041 * t2164;
t2003 = -t2030 * t2164 + t2041 * t2162;
t2002 = t2028 * t2162 + t2039 * t2164;
t2001 = -t2028 * t2164 + t2039 * t2162;
t1995 = t2007 * t2162 + t2057 * t2164;
t1994 = -t2007 * t2164 + t2057 * t2162;
t1993 = -t2098 * pkin(5) - t2118 * pkin(8) + (t2212 + t2108) * qJD(3) + t2177;
t1991 = -t2022 * t2162 + t2023 * t2164;
t1990 = t2022 * t2164 + t2023 * t2162;
t1989 = t2005 * t2164 + t2006 * t2162;
t1988 = t2005 * t2162 - t2006 * t2164;
t1987 = -t2003 * t2169 + t2004 * t2172;
t1986 = t2003 * t2172 + t2004 * t2169;
t1985 = -t2001 * t2169 + t2002 * t2172;
t1984 = t2001 * t2172 + t2002 * t2169;
t1983 = t1992 * t2168 + t1996 * t2171;
t1982 = -t1994 * t2169 + t1995 * t2172;
t1981 = t1994 * t2172 + t1995 * t2169;
t1979 = t1987 * t2165 + t2031 * t2163;
t1978 = t1987 * t2163 - t2031 * t2165;
t1977 = t1985 * t2165 + t2029 * t2163;
t1976 = t1985 * t2163 - t2029 * t2165;
t1975 = -t1990 * t2169 + t1991 * t2172;
t1974 = t1990 * t2172 + t1991 * t2169;
t1973 = t1975 * t2165 + t2058 * t2163;
t1972 = t1975 * t2163 - t2058 * t2165;
t1971 = t1982 * t2165 + t2008 * t2163;
t1970 = t1982 * t2163 - t2008 * t2165;
t1969 = -t1988 * t2169 + t1989 * t2172;
t1968 = t1988 * t2172 + t1989 * t2169;
t1967 = t1969 * t2165 + t2017 * t2163;
t1966 = t1969 * t2163 - t2017 * t2165;
t1965 = t1983 * t2171 - t2168 * t2189;
t1964 = t2168 * t1983 + t2171 * t2189;
t1963 = t1964 * t2162 + t1993 * t2164;
t1962 = -t1964 * t2164 + t1993 * t2162;
t1961 = -t1962 * t2169 + t1963 * t2172;
t1960 = t1962 * t2172 + t1963 * t2169;
t1959 = t1961 * t2165 + t1965 * t2163;
t1958 = t1961 * t2163 - t1965 * t2165;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2138, -t2137, 0, -t2143 * t2170 + t2144 * t2173, 0, 0, 0, 0, 0, 0, t2192, -t2186, 0, -t2059 * t2170 + t2060 * t2173, 0, 0, 0, 0, 0, 0, -t2079 * t2170 + t2081 * t2173, -t2080 * t2170 + t2082 * t2173, -t2099 * t2170 + t2100 * t2173, -t2032 * t2170 + t2033 * t2173, 0, 0, 0, 0, 0, 0, t2232, t2238, t2237, -t1972 * t2170 + t1973 * t2173, 0, 0, 0, 0, 0, 0, t2237, -t2232, -t2238, -t1966 * t2170 + t1967 * t2173, 0, 0, 0, 0, 0, 0, -t1976 * t2170 + t1977 * t2173, -t1978 * t2170 + t1979 * t2173, -t1970 * t2170 + t1971 * t2173, -t1958 * t2170 + t1959 * t2173; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2137, t2138, 0, t2143 * t2173 + t2144 * t2170, 0, 0, 0, 0, 0, 0, t2186, t2192, 0, t2059 * t2173 + t2060 * t2170, 0, 0, 0, 0, 0, 0, t2079 * t2173 + t2081 * t2170, t2080 * t2173 + t2082 * t2170, t2099 * t2173 + t2100 * t2170, t2032 * t2173 + t2033 * t2170, 0, 0, 0, 0, 0, 0, -t2233, -t2239, t2236, t1972 * t2173 + t1973 * t2170, 0, 0, 0, 0, 0, 0, t2236, t2233, t2239, t1966 * t2173 + t1967 * t2170, 0, 0, 0, 0, 0, 0, t1976 * t2173 + t1977 * t2170, t1978 * t2173 + t1979 * t2170, t1970 * t2173 + t1971 * t2170, t1958 * t2173 + t1959 * t2170; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2159, 0, 0, 0, 0, 0, 0, t2104, t2105, 0, t2046, 0, 0, 0, 0, 0, 0, t2024, t2035, t2230, t1974, 0, 0, 0, 0, 0, 0, t2230, -t2024, -t2035, t1968, 0, 0, 0, 0, 0, 0, t1984, t1986, t1981, t1960; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2175, -qJDD(1), 0, t2144, 0, 0, 0, 0, 0, 0, t2134, -t2135, 0, t2060, 0, 0, 0, 0, 0, 0, t2081, t2082, t2100, t2033, 0, 0, 0, 0, 0, 0, -t2012, -t2020, t2234, t1973, 0, 0, 0, 0, 0, 0, t2234, t2012, t2020, t1967, 0, 0, 0, 0, 0, 0, t1977, t1979, t1971, t1959; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2175, 0, t2143, 0, 0, 0, 0, 0, 0, t2135, t2134, 0, t2059, 0, 0, 0, 0, 0, 0, t2079, t2080, t2099, t2032, 0, 0, 0, 0, 0, 0, -t2010, -t2018, t2235, t1972, 0, 0, 0, 0, 0, 0, t2235, t2010, t2018, t1966, 0, 0, 0, 0, 0, 0, t1976, t1978, t1970, t1958; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2159, 0, 0, 0, 0, 0, 0, t2104, t2105, 0, t2046, 0, 0, 0, 0, 0, 0, t2024, t2035, t2230, t1974, 0, 0, 0, 0, 0, 0, t2230, -t2024, -t2035, t1968, 0, 0, 0, 0, 0, 0, t1984, t1986, t1981, t1960; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2175, -qJDD(1), 0, t2097, 0, 0, 0, 0, 0, 0, t2106, t2107, t2136, t2047, 0, 0, 0, 0, 0, 0, -t2027, -t2036, t2231, t1975, 0, 0, 0, 0, 0, 0, t2231, t2027, t2036, t1969, 0, 0, 0, 0, 0, 0, t1985, t1987, t1982, t1961; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2175, 0, t2096, 0, 0, 0, 0, 0, 0, t2133, -t2130, t2139, -t2084, 0, 0, 0, 0, 0, 0, -t2225, -t2180, -t2218, -t2058, 0, 0, 0, 0, 0, 0, -t2218, t2225, t2180, -t2017, 0, 0, 0, 0, 0, 0, -t2029, -t2031, -t2008, -t1965; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2159, 0, 0, 0, 0, 0, 0, t2104, t2105, 0, t2046, 0, 0, 0, 0, 0, 0, t2024, t2035, t2230, t1974, 0, 0, 0, 0, 0, 0, t2230, -t2024, -t2035, t1968, 0, 0, 0, 0, 0, 0, t1984, t1986, t1981, t1960; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2147, t2142, t2154, t2078, 0, 0, 0, 0, 0, 0, -t2056, t2066, t2228, t1991, 0, 0, 0, 0, 0, 0, t2228, t2056, -t2066, t1989, 0, 0, 0, 0, 0, 0, t2002, t2004, t1995, t1963; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2141, t2146, -t2198, t2077, 0, 0, 0, 0, 0, 0, t2053, t2064, t2229, t1990, 0, 0, 0, 0, 0, 0, t2229, -t2053, -t2064, t1988, 0, 0, 0, 0, 0, 0, t2001, t2003, t1994, t1962; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2133, t2130, -t2139, t2084, 0, 0, 0, 0, 0, 0, t2225, t2180, t2218, t2058, 0, 0, 0, 0, 0, 0, t2218, -t2225, -t2180, t2017, 0, 0, 0, 0, 0, 0, t2029, t2031, t2008, t1965; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2087, t2091, -t2070, t2023, 0, 0, 0, 0, 0, 0, -t2070, -t2087, -t2091, t2005, 0, 0, 0, 0, 0, 0, t2039, t2041, t2057, t1993; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2190, -t2110, -t2073, t2022, 0, 0, 0, 0, 0, 0, -t2073, -t2190, t2110, -t2006, 0, 0, 0, 0, 0, 0, -t2028, -t2030, -t2007, -t1964; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2225, t2180, t2218, t2058, 0, 0, 0, 0, 0, 0, t2218, -t2225, -t2180, t2017, 0, 0, 0, 0, 0, 0, t2029, t2031, t2008, t1965; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2218, -t2225, -t2180, t2017, 0, 0, 0, 0, 0, 0, t2029, t2031, t2008, t1965; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2070, t2087, t2091, -t2005, 0, 0, 0, 0, 0, 0, -t2039, -t2041, -t2057, -t1993; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2073, t2190, -t2110, t2006, 0, 0, 0, 0, 0, 0, t2028, t2030, t2007, t1964; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2061, t2050, t2040, t1983; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2179, t2195, t2178, t2189; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2039, t2041, t2057, t1993;];
f_new_reg  = t1;