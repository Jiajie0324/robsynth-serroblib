% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRPR3
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 13:20
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRPR3_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR3_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR3_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR3_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR3_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR3_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 13:20:23
% EndTime: 2019-05-06 13:20:32
% DurationCPUTime: 9.55s
% Computational Cost: add. (102720->341), mult. (240111->482), div. (0->0), fcn. (178130->12), ass. (0->272)
t2281 = sin(pkin(10));
t2283 = cos(pkin(10));
t2291 = cos(qJ(2));
t2328 = qJD(1) * t2291;
t2287 = sin(qJ(2));
t2329 = qJD(1) * t2287;
t2247 = t2281 * t2329 - t2283 * t2328;
t2246 = qJD(4) + t2247;
t2241 = qJD(6) + t2246;
t2343 = qJD(6) + t2241;
t2310 = qJD(2) * t2328;
t2312 = t2287 * qJDD(1);
t2255 = t2310 + t2312;
t2274 = t2291 * qJDD(1);
t2311 = qJD(2) * t2329;
t2256 = t2274 - t2311;
t2314 = t2281 * t2255 - t2283 * t2256;
t2228 = qJDD(4) + t2314;
t2249 = t2281 * t2328 + t2283 * t2329;
t2286 = sin(qJ(4));
t2290 = cos(qJ(4));
t2232 = -t2290 * qJD(2) + t2249 * t2286;
t2233 = qJD(2) * t2286 + t2249 * t2290;
t2322 = t2232 * t2233;
t2188 = t2228 - t2322;
t2280 = sin(pkin(11));
t2282 = cos(pkin(11));
t2209 = t2282 * t2232 + t2233 * t2280;
t2211 = -t2232 * t2280 + t2233 * t2282;
t2324 = t2209 * t2211;
t2167 = t2228 - t2324;
t2278 = t2291 ^ 2;
t2293 = qJD(1) ^ 2;
t2300 = qJD(2) * pkin(2) - qJ(3) * t2329;
t2288 = sin(qJ(1));
t2292 = cos(qJ(1));
t2264 = t2288 * g(1) - t2292 * g(2);
t2301 = qJDD(1) * pkin(1) + t2264;
t2215 = t2256 * pkin(2) + (qJ(3) * t2278 + pkin(7)) * t2293 - t2300 * t2329 - qJDD(3) + t2301;
t2342 = qJD(2) ^ 2;
t2285 = sin(qJ(6));
t2289 = cos(qJ(6));
t2178 = t2289 * t2209 + t2211 * t2285;
t2341 = t2178 ^ 2;
t2180 = -t2209 * t2285 + t2211 * t2289;
t2340 = t2180 ^ 2;
t2339 = t2209 ^ 2;
t2338 = t2211 ^ 2;
t2337 = t2232 ^ 2;
t2336 = t2233 ^ 2;
t2335 = t2241 ^ 2;
t2334 = t2246 ^ 2;
t2333 = t2247 ^ 2;
t2332 = t2249 ^ 2;
t2331 = -2 * qJD(3);
t2330 = -2 * qJD(5);
t2327 = qJD(2) * t2247;
t2326 = qJD(2) * t2249;
t2325 = t2178 * t2180;
t2323 = t2211 * t2246;
t2321 = t2246 * t2209;
t2320 = t2246 * t2232;
t2319 = t2247 * t2249;
t2318 = t2278 * t2293;
t2317 = t2287 * t2293;
t2316 = qJD(4) - t2246;
t2315 = qJD(6) - t2241;
t2265 = -g(1) * t2292 - g(2) * t2288;
t2297 = -pkin(1) * t2293 + qJDD(1) * pkin(7) + t2265;
t2239 = -t2287 * g(3) + t2291 * t2297;
t2212 = -pkin(2) * t2318 + t2256 * qJ(3) - qJD(2) * t2300 + t2239;
t2295 = t2287 * t2297;
t2294 = -t2295 - t2255 * qJ(3) + qJDD(2) * pkin(2) + (qJ(3) * qJD(1) * qJD(2) + pkin(2) * t2317 - g(3)) * t2291;
t2174 = t2283 * t2212 + t2247 * t2331 + t2281 * t2294;
t2223 = pkin(3) * t2247 - pkin(8) * t2249;
t2155 = -pkin(3) * t2342 + qJDD(2) * pkin(8) - t2223 * t2247 + t2174;
t2217 = t2314 + t2326;
t2229 = t2255 * t2283 + t2256 * t2281;
t2308 = -t2229 + t2327;
t2164 = pkin(3) * t2217 + pkin(8) * t2308 - t2215;
t2129 = t2290 * t2155 + t2286 * t2164;
t2277 = t2287 ^ 2;
t2313 = t2277 + t2278;
t2128 = -t2155 * t2286 + t2290 * t2164;
t2302 = -qJDD(2) * t2286 - t2229 * t2290;
t2198 = -qJD(4) * t2232 - t2302;
t2113 = (-t2198 - t2320) * qJ(5) + t2188 * pkin(4) + t2128;
t2221 = pkin(4) * t2246 - qJ(5) * t2233;
t2304 = -t2290 * qJDD(2) + t2229 * t2286;
t2299 = -qJD(4) * t2233 - t2304;
t2119 = -pkin(4) * t2337 + qJ(5) * t2299 - t2246 * t2221 + t2129;
t2079 = t2280 * t2113 + t2282 * t2119 + t2209 * t2330;
t2171 = t2282 * t2198 + t2280 * t2299;
t2306 = t2198 * t2280 - t2282 * t2299;
t2307 = -t2171 * t2285 - t2289 * t2306;
t2152 = -t2171 - t2321;
t2305 = t2212 * t2281 - t2283 * t2294;
t2303 = -qJDD(6) - t2228;
t2078 = t2282 * t2113 - t2119 * t2280 + t2211 * t2330;
t2298 = -t2289 * t2171 + t2285 * t2306;
t2154 = -qJDD(2) * pkin(3) - t2342 * pkin(8) + ((2 * qJD(3)) + t2223) * t2249 + t2305;
t2127 = -t2299 * pkin(4) - t2337 * qJ(5) + t2221 * t2233 + qJDD(5) + t2154;
t2271 = t2291 * t2317;
t2270 = -t2318 - t2342;
t2269 = -t2277 * t2293 - t2342;
t2263 = -qJDD(2) + t2271;
t2262 = qJDD(2) + t2271;
t2261 = t2313 * t2293;
t2260 = -qJDD(1) * t2288 - t2292 * t2293;
t2259 = qJDD(1) * t2292 - t2288 * t2293;
t2258 = t2313 * qJDD(1);
t2257 = t2274 - 0.2e1 * t2311;
t2254 = 0.2e1 * t2310 + t2312;
t2252 = t2293 * pkin(7) + t2301;
t2240 = -t2332 - t2342;
t2238 = -t2291 * g(3) - t2295;
t2237 = t2263 * t2291 - t2269 * t2287;
t2236 = -t2262 * t2287 + t2270 * t2291;
t2235 = t2263 * t2287 + t2269 * t2291;
t2234 = t2262 * t2291 + t2270 * t2287;
t2227 = -qJDD(2) - t2319;
t2226 = qJDD(2) - t2319;
t2224 = -t2333 - t2342;
t2220 = -t2229 - t2327;
t2218 = -t2314 + t2326;
t2216 = -t2332 - t2333;
t2214 = -t2238 * t2287 + t2239 * t2291;
t2213 = t2238 * t2291 + t2239 * t2287;
t2201 = -t2334 - t2336;
t2200 = t2227 * t2283 - t2240 * t2281;
t2199 = t2227 * t2281 + t2240 * t2283;
t2196 = -t2334 - t2337;
t2193 = -t2336 - t2337;
t2192 = t2224 * t2283 - t2226 * t2281;
t2191 = t2224 * t2281 + t2226 * t2283;
t2190 = pkin(5) * t2246 - pkin(9) * t2211;
t2189 = -t2228 - t2322;
t2187 = -t2334 - t2338;
t2186 = t2218 * t2283 - t2220 * t2281;
t2185 = t2218 * t2281 + t2220 * t2283;
t2184 = t2232 * t2316 + t2302;
t2183 = t2198 - t2320;
t2182 = -t2233 * t2316 - t2304;
t2181 = (qJD(4) + t2246) * t2233 + t2304;
t2177 = -t2199 * t2287 + t2200 * t2291;
t2176 = t2199 * t2291 + t2200 * t2287;
t2175 = -t2334 - t2339;
t2173 = t2249 * t2331 - t2305;
t2168 = -t2228 - t2324;
t2166 = t2189 * t2290 - t2201 * t2286;
t2165 = t2189 * t2286 + t2201 * t2290;
t2161 = -t2188 * t2286 + t2196 * t2290;
t2160 = t2188 * t2290 + t2196 * t2286;
t2159 = -t2335 - t2340;
t2158 = -t2191 * t2287 + t2192 * t2291;
t2157 = t2191 * t2291 + t2192 * t2287;
t2156 = -t2338 - t2339;
t2151 = t2171 - t2321;
t2150 = -t2306 + t2323;
t2149 = t2306 + t2323;
t2148 = -t2185 * t2287 + t2186 * t2291;
t2147 = t2185 * t2291 + t2186 * t2287;
t2146 = t2182 * t2290 - t2184 * t2286;
t2145 = t2182 * t2286 + t2184 * t2290;
t2144 = t2168 * t2282 - t2187 * t2280;
t2143 = t2168 * t2280 + t2187 * t2282;
t2142 = -t2335 - t2341;
t2141 = t2166 * t2283 + t2183 * t2281;
t2140 = t2166 * t2281 - t2183 * t2283;
t2139 = t2161 * t2283 + t2181 * t2281;
t2138 = t2161 * t2281 - t2181 * t2283;
t2137 = -t2173 * t2281 + t2174 * t2283;
t2136 = t2173 * t2283 + t2174 * t2281;
t2135 = t2303 - t2325;
t2134 = -t2303 - t2325;
t2133 = -t2167 * t2280 + t2175 * t2282;
t2132 = t2167 * t2282 + t2175 * t2280;
t2131 = t2146 * t2283 + t2193 * t2281;
t2130 = t2146 * t2281 - t2193 * t2283;
t2126 = -t2340 - t2341;
t2125 = t2150 * t2282 - t2152 * t2280;
t2124 = t2150 * t2280 + t2152 * t2282;
t2123 = t2135 * t2289 - t2159 * t2285;
t2122 = t2135 * t2285 + t2159 * t2289;
t2121 = -t2143 * t2286 + t2144 * t2290;
t2120 = t2143 * t2290 + t2144 * t2286;
t2117 = -t2140 * t2287 + t2141 * t2291;
t2116 = t2140 * t2291 + t2141 * t2287;
t2115 = -t2134 * t2285 + t2142 * t2289;
t2114 = t2134 * t2289 + t2142 * t2285;
t2112 = t2178 * t2315 + t2298;
t2111 = -t2178 * t2343 - t2298;
t2110 = -t2180 * t2315 + t2307;
t2109 = t2180 * t2343 - t2307;
t2106 = -t2138 * t2287 + t2139 * t2291;
t2105 = t2138 * t2291 + t2139 * t2287;
t2104 = -t2136 * t2287 + t2137 * t2291;
t2103 = t2136 * t2291 + t2137 * t2287;
t2102 = -t2132 * t2286 + t2133 * t2290;
t2101 = t2132 * t2290 + t2133 * t2286;
t2100 = -t2130 * t2287 + t2131 * t2291;
t2099 = t2130 * t2291 + t2131 * t2287;
t2098 = pkin(5) * t2306 - pkin(9) * t2339 + t2190 * t2211 + t2127;
t2097 = -t2128 * t2286 + t2129 * t2290;
t2096 = t2128 * t2290 + t2129 * t2286;
t2095 = t2121 * t2283 + t2151 * t2281;
t2094 = t2121 * t2281 - t2151 * t2283;
t2093 = t2102 * t2283 + t2149 * t2281;
t2092 = t2102 * t2281 - t2149 * t2283;
t2091 = -t2124 * t2286 + t2125 * t2290;
t2090 = t2124 * t2290 + t2125 * t2286;
t2089 = -t2122 * t2280 + t2123 * t2282;
t2088 = t2122 * t2282 + t2123 * t2280;
t2087 = t2097 * t2283 + t2154 * t2281;
t2086 = t2097 * t2281 - t2154 * t2283;
t2085 = t2091 * t2283 + t2156 * t2281;
t2084 = t2091 * t2281 - t2156 * t2283;
t2083 = -t2114 * t2280 + t2115 * t2282;
t2082 = t2114 * t2282 + t2115 * t2280;
t2081 = t2110 * t2289 - t2112 * t2285;
t2080 = t2110 * t2285 + t2112 * t2289;
t2077 = -pkin(5) * t2339 - pkin(9) * t2306 - t2246 * t2190 + t2079;
t2076 = -t2094 * t2287 + t2095 * t2291;
t2075 = t2094 * t2291 + t2095 * t2287;
t2074 = pkin(5) * t2167 + t2152 * pkin(9) + t2078;
t2073 = -t2092 * t2287 + t2093 * t2291;
t2072 = t2092 * t2291 + t2093 * t2287;
t2071 = -t2088 * t2286 + t2089 * t2290;
t2070 = t2088 * t2290 + t2089 * t2286;
t2069 = -t2086 * t2287 + t2087 * t2291;
t2068 = t2086 * t2291 + t2087 * t2287;
t2067 = -t2084 * t2287 + t2085 * t2291;
t2066 = t2084 * t2291 + t2085 * t2287;
t2065 = -t2082 * t2286 + t2083 * t2290;
t2064 = t2082 * t2290 + t2083 * t2286;
t2063 = -t2080 * t2280 + t2081 * t2282;
t2062 = t2080 * t2282 + t2081 * t2280;
t2061 = -t2078 * t2280 + t2079 * t2282;
t2060 = t2078 * t2282 + t2079 * t2280;
t2059 = t2071 * t2283 + t2111 * t2281;
t2058 = t2071 * t2281 - t2111 * t2283;
t2057 = t2065 * t2283 + t2109 * t2281;
t2056 = t2065 * t2281 - t2109 * t2283;
t2055 = t2074 * t2285 + t2077 * t2289;
t2054 = t2074 * t2289 - t2077 * t2285;
t2053 = -t2062 * t2286 + t2063 * t2290;
t2052 = t2062 * t2290 + t2063 * t2286;
t2051 = -t2060 * t2286 + t2061 * t2290;
t2050 = t2060 * t2290 + t2061 * t2286;
t2049 = -t2058 * t2287 + t2059 * t2291;
t2048 = t2058 * t2291 + t2059 * t2287;
t2047 = t2053 * t2283 + t2126 * t2281;
t2046 = t2053 * t2281 - t2126 * t2283;
t2045 = t2051 * t2283 + t2127 * t2281;
t2044 = t2051 * t2281 - t2127 * t2283;
t2043 = -t2056 * t2287 + t2057 * t2291;
t2042 = t2056 * t2291 + t2057 * t2287;
t2041 = -t2054 * t2285 + t2055 * t2289;
t2040 = t2054 * t2289 + t2055 * t2285;
t2039 = -t2046 * t2287 + t2047 * t2291;
t2038 = t2046 * t2291 + t2047 * t2287;
t2037 = -t2044 * t2287 + t2045 * t2291;
t2036 = t2044 * t2291 + t2045 * t2287;
t2035 = -t2040 * t2280 + t2041 * t2282;
t2034 = t2040 * t2282 + t2041 * t2280;
t2033 = -t2034 * t2286 + t2035 * t2290;
t2032 = t2034 * t2290 + t2035 * t2286;
t2031 = t2033 * t2283 + t2098 * t2281;
t2030 = t2033 * t2281 - t2098 * t2283;
t2029 = -t2030 * t2287 + t2031 * t2291;
t2028 = t2030 * t2291 + t2031 * t2287;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2260, -t2259, 0, -t2264 * t2288 + t2265 * t2292, 0, 0, 0, 0, 0, 0, t2236 * t2292 - t2257 * t2288, t2237 * t2292 + t2254 * t2288, t2258 * t2292 - t2261 * t2288, t2214 * t2292 - t2252 * t2288, 0, 0, 0, 0, 0, 0, t2158 * t2292 + t2217 * t2288, t2177 * t2292 - t2288 * t2308, t2148 * t2292 + t2216 * t2288, t2104 * t2292 - t2215 * t2288, 0, 0, 0, 0, 0, 0, t2106 * t2292 + t2160 * t2288, t2117 * t2292 + t2165 * t2288, t2100 * t2292 + t2145 * t2288, t2069 * t2292 + t2096 * t2288, 0, 0, 0, 0, 0, 0, t2073 * t2292 + t2101 * t2288, t2076 * t2292 + t2120 * t2288, t2067 * t2292 + t2090 * t2288, t2037 * t2292 + t2050 * t2288, 0, 0, 0, 0, 0, 0, t2043 * t2292 + t2064 * t2288, t2049 * t2292 + t2070 * t2288, t2039 * t2292 + t2052 * t2288, t2029 * t2292 + t2032 * t2288; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2259, t2260, 0, t2264 * t2292 + t2265 * t2288, 0, 0, 0, 0, 0, 0, t2236 * t2288 + t2257 * t2292, t2237 * t2288 - t2254 * t2292, t2258 * t2288 + t2261 * t2292, t2214 * t2288 + t2252 * t2292, 0, 0, 0, 0, 0, 0, t2158 * t2288 - t2217 * t2292, t2177 * t2288 + t2292 * t2308, t2148 * t2288 - t2216 * t2292, t2104 * t2288 + t2215 * t2292, 0, 0, 0, 0, 0, 0, t2106 * t2288 - t2160 * t2292, t2117 * t2288 - t2165 * t2292, t2100 * t2288 - t2145 * t2292, t2069 * t2288 - t2096 * t2292, 0, 0, 0, 0, 0, 0, t2073 * t2288 - t2101 * t2292, t2076 * t2288 - t2120 * t2292, t2067 * t2288 - t2090 * t2292, t2037 * t2288 - t2050 * t2292, 0, 0, 0, 0, 0, 0, t2043 * t2288 - t2064 * t2292, t2049 * t2288 - t2070 * t2292, t2039 * t2288 - t2052 * t2292, t2029 * t2288 - t2032 * t2292; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2234, t2235, 0, t2213, 0, 0, 0, 0, 0, 0, t2157, t2176, t2147, t2103, 0, 0, 0, 0, 0, 0, t2105, t2116, t2099, t2068, 0, 0, 0, 0, 0, 0, t2072, t2075, t2066, t2036, 0, 0, 0, 0, 0, 0, t2042, t2048, t2038, t2028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2293, -qJDD(1), 0, t2265, 0, 0, 0, 0, 0, 0, t2236, t2237, t2258, t2214, 0, 0, 0, 0, 0, 0, t2158, t2177, t2148, t2104, 0, 0, 0, 0, 0, 0, t2106, t2117, t2100, t2069, 0, 0, 0, 0, 0, 0, t2073, t2076, t2067, t2037, 0, 0, 0, 0, 0, 0, t2043, t2049, t2039, t2029; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2293, 0, t2264, 0, 0, 0, 0, 0, 0, t2257, -t2254, t2261, t2252, 0, 0, 0, 0, 0, 0, -t2217, t2308, -t2216, t2215, 0, 0, 0, 0, 0, 0, -t2160, -t2165, -t2145, -t2096, 0, 0, 0, 0, 0, 0, -t2101, -t2120, -t2090, -t2050, 0, 0, 0, 0, 0, 0, -t2064, -t2070, -t2052, -t2032; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2234, t2235, 0, t2213, 0, 0, 0, 0, 0, 0, t2157, t2176, t2147, t2103, 0, 0, 0, 0, 0, 0, t2105, t2116, t2099, t2068, 0, 0, 0, 0, 0, 0, t2072, t2075, t2066, t2036, 0, 0, 0, 0, 0, 0, t2042, t2048, t2038, t2028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2270, t2263, t2274, t2239, 0, 0, 0, 0, 0, 0, t2192, t2200, t2186, t2137, 0, 0, 0, 0, 0, 0, t2139, t2141, t2131, t2087, 0, 0, 0, 0, 0, 0, t2093, t2095, t2085, t2045, 0, 0, 0, 0, 0, 0, t2057, t2059, t2047, t2031; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2262, t2269, -t2312, t2238, 0, 0, 0, 0, 0, 0, t2191, t2199, t2185, t2136, 0, 0, 0, 0, 0, 0, t2138, t2140, t2130, t2086, 0, 0, 0, 0, 0, 0, t2092, t2094, t2084, t2044, 0, 0, 0, 0, 0, 0, t2056, t2058, t2046, t2030; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2257, t2254, -t2261, -t2252, 0, 0, 0, 0, 0, 0, t2217, -t2308, t2216, -t2215, 0, 0, 0, 0, 0, 0, t2160, t2165, t2145, t2096, 0, 0, 0, 0, 0, 0, t2101, t2120, t2090, t2050, 0, 0, 0, 0, 0, 0, t2064, t2070, t2052, t2032; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2224, t2227, t2218, t2174, 0, 0, 0, 0, 0, 0, t2161, t2166, t2146, t2097, 0, 0, 0, 0, 0, 0, t2102, t2121, t2091, t2051, 0, 0, 0, 0, 0, 0, t2065, t2071, t2053, t2033; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2226, t2240, t2220, t2173, 0, 0, 0, 0, 0, 0, -t2181, -t2183, -t2193, -t2154, 0, 0, 0, 0, 0, 0, -t2149, -t2151, -t2156, -t2127, 0, 0, 0, 0, 0, 0, -t2109, -t2111, -t2126, -t2098; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2217, -t2308, t2216, -t2215, 0, 0, 0, 0, 0, 0, t2160, t2165, t2145, t2096, 0, 0, 0, 0, 0, 0, t2101, t2120, t2090, t2050, 0, 0, 0, 0, 0, 0, t2064, t2070, t2052, t2032; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2196, t2189, t2182, t2129, 0, 0, 0, 0, 0, 0, t2133, t2144, t2125, t2061, 0, 0, 0, 0, 0, 0, t2083, t2089, t2063, t2035; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2188, t2201, t2184, t2128, 0, 0, 0, 0, 0, 0, t2132, t2143, t2124, t2060, 0, 0, 0, 0, 0, 0, t2082, t2088, t2062, t2034; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2181, t2183, t2193, t2154, 0, 0, 0, 0, 0, 0, t2149, t2151, t2156, t2127, 0, 0, 0, 0, 0, 0, t2109, t2111, t2126, t2098; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2175, t2168, t2150, t2079, 0, 0, 0, 0, 0, 0, t2115, t2123, t2081, t2041; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2167, t2187, t2152, t2078, 0, 0, 0, 0, 0, 0, t2114, t2122, t2080, t2040; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2149, t2151, t2156, t2127, 0, 0, 0, 0, 0, 0, t2109, t2111, t2126, t2098; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2142, t2135, t2110, t2055; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2134, t2159, t2112, t2054; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2109, t2111, t2126, t2098;];
f_new_reg  = t1;
