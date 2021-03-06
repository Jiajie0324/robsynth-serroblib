% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRRRPR2
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 07:18
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRRRPR2_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR2_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR2_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPR2_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR2_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRPR2_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 07:18:32
% EndTime: 2019-05-05 07:18:40
% DurationCPUTime: 9.27s
% Computational Cost: add. (72352->329), mult. (147002->509), div. (0->0), fcn. (110527->14), ass. (0->281)
t2273 = sin(pkin(6));
t2276 = cos(pkin(6));
t2272 = sin(pkin(11));
t2275 = cos(pkin(11));
t2313 = g(1) * t2272 - g(2) * t2275;
t2334 = -g(3) + qJDD(1);
t2344 = t2273 * t2334 + t2276 * t2313;
t2279 = sin(qJ(4));
t2283 = cos(qJ(4));
t2284 = cos(qJ(3));
t2332 = qJD(2) * t2284;
t2280 = sin(qJ(3));
t2333 = qJD(2) * t2280;
t2238 = t2279 * t2333 - t2283 * t2332;
t2232 = qJD(6) + t2238;
t2343 = qJD(6) + t2232;
t2287 = qJD(2) ^ 2;
t2259 = t2280 * t2287 * t2284;
t2252 = qJDD(3) + t2259;
t2240 = (t2279 * t2284 + t2280 * t2283) * qJD(2);
t2267 = qJD(3) + qJD(4);
t2271 = sin(pkin(12));
t2274 = cos(pkin(12));
t2221 = t2240 * t2271 - t2274 * t2267;
t2223 = t2240 * t2274 + t2267 * t2271;
t2278 = sin(qJ(6));
t2282 = cos(qJ(6));
t2193 = t2282 * t2221 + t2223 * t2278;
t2342 = t2193 ^ 2;
t2195 = -t2221 * t2278 + t2223 * t2282;
t2341 = t2195 ^ 2;
t2340 = t2221 ^ 2;
t2339 = t2223 ^ 2;
t2338 = t2232 ^ 2;
t2215 = t2238 ^ 2;
t2337 = t2240 ^ 2;
t2336 = t2267 ^ 2;
t2335 = -2 * qJD(5);
t2331 = t2193 * t2195;
t2330 = t2221 * t2223;
t2329 = t2223 * t2238;
t2328 = t2238 * t2221;
t2327 = t2238 * t2240;
t2269 = t2284 ^ 2;
t2326 = t2269 * t2287;
t2325 = qJD(4) - t2267;
t2324 = qJD(6) - t2232;
t2230 = -t2273 * t2313 + t2276 * t2334;
t2251 = -g(1) * t2275 - g(2) * t2272;
t2281 = sin(qJ(2));
t2285 = cos(qJ(2));
t2208 = t2285 * t2251 + t2281 * t2344;
t2289 = -t2287 * pkin(2) + qJDD(2) * pkin(8) + t2208;
t2183 = t2280 * t2230 + t2284 * t2289;
t2266 = t2284 * qJDD(2);
t2320 = qJD(3) * t2333;
t2245 = t2266 - t2320;
t2255 = qJD(3) * pkin(3) - pkin(9) * t2333;
t2164 = -pkin(3) * t2326 + pkin(9) * t2245 - qJD(3) * t2255 + t2183;
t2182 = t2284 * t2230 - t2280 * t2289;
t2319 = qJD(3) * t2332;
t2322 = t2280 * qJDD(2);
t2244 = t2319 + t2322;
t2288 = t2182 + (-t2244 + t2319) * pkin(9) + t2252 * pkin(3);
t2138 = t2283 * t2164 + t2279 * t2288;
t2268 = t2280 ^ 2;
t2323 = t2268 + t2269;
t2321 = qJDD(3) + qJDD(4);
t2212 = pkin(4) * t2238 - qJ(5) * t2240;
t2126 = -pkin(4) * t2336 + qJ(5) * t2321 - t2238 * t2212 + t2138;
t2312 = t2281 * t2251 - t2285 * t2344;
t2203 = -qJDD(2) * pkin(2) - t2287 * pkin(8) + t2312;
t2177 = -t2245 * pkin(3) - pkin(9) * t2326 + t2255 * t2333 + t2203;
t2314 = t2279 * t2244 - t2283 * t2245;
t2199 = qJD(4) * t2240 + t2314;
t2295 = -t2283 * t2244 - t2279 * t2245;
t2200 = -qJD(4) * t2238 - t2295;
t2316 = t2267 * t2238 - t2200;
t2136 = t2316 * qJ(5) + (t2240 * t2267 + t2199) * pkin(4) + t2177;
t2103 = t2274 * t2126 + t2271 * t2136 + t2221 * t2335;
t2137 = -t2279 * t2164 + t2283 * t2288;
t2196 = t2274 * t2200 + t2271 * t2321;
t2315 = t2200 * t2271 - t2274 * t2321;
t2317 = -t2278 * t2196 - t2282 * t2315;
t2168 = -t2196 - t2328;
t2169 = t2199 - t2330;
t2102 = -t2271 * t2126 + t2274 * t2136 + t2223 * t2335;
t2086 = pkin(5) * t2169 + pkin(10) * t2168 + t2102;
t2202 = pkin(5) * t2238 - pkin(10) * t2223;
t2087 = -pkin(5) * t2340 - pkin(10) * t2315 - t2238 * t2202 + t2103;
t2062 = t2086 * t2282 - t2087 * t2278;
t2063 = t2086 * t2278 + t2087 * t2282;
t2046 = t2062 * t2282 + t2063 * t2278;
t2047 = -t2062 * t2278 + t2063 * t2282;
t2039 = -t2046 * t2271 + t2047 * t2274;
t2125 = -t2321 * pkin(4) - t2336 * qJ(5) + t2240 * t2212 + qJDD(5) - t2137;
t2104 = pkin(5) * t2315 - pkin(10) * t2340 + t2223 * t2202 + t2125;
t2036 = t2039 * t2279 - t2104 * t2283;
t2037 = t2039 * t2283 + t2104 * t2279;
t2031 = -t2036 * t2280 + t2037 * t2284;
t2038 = t2046 * t2274 + t2047 * t2271;
t2311 = t2031 * t2281 - t2038 * t2285;
t2075 = -t2102 * t2271 + t2103 * t2274;
t2066 = t2075 * t2279 - t2125 * t2283;
t2067 = t2075 * t2283 + t2125 * t2279;
t2049 = -t2066 * t2280 + t2067 * t2284;
t2074 = t2102 * t2274 + t2103 * t2271;
t2310 = t2049 * t2281 - t2074 * t2285;
t2130 = -t2195 * t2324 + t2317;
t2290 = -t2282 * t2196 + t2278 * t2315;
t2132 = t2193 * t2324 + t2290;
t2100 = t2130 * t2278 + t2132 * t2282;
t2101 = t2130 * t2282 - t2132 * t2278;
t2073 = -t2100 * t2271 + t2101 * t2274;
t2143 = -t2341 - t2342;
t2070 = t2073 * t2279 - t2143 * t2283;
t2071 = t2073 * t2283 + t2143 * t2279;
t2051 = -t2070 * t2280 + t2071 * t2284;
t2072 = t2100 * t2274 + t2101 * t2271;
t2309 = t2051 * t2281 - t2072 * t2285;
t2291 = -qJDD(6) - t2199;
t2146 = -t2291 - t2331;
t2158 = -t2338 - t2342;
t2114 = t2146 * t2282 + t2158 * t2278;
t2115 = -t2146 * t2278 + t2158 * t2282;
t2091 = -t2114 * t2271 + t2115 * t2274;
t2129 = t2195 * t2343 - t2317;
t2077 = t2091 * t2279 - t2129 * t2283;
t2078 = t2091 * t2283 + t2129 * t2279;
t2057 = -t2077 * t2280 + t2078 * t2284;
t2090 = t2114 * t2274 + t2115 * t2271;
t2308 = t2057 * t2281 - t2090 * t2285;
t2147 = t2291 - t2331;
t2171 = -t2338 - t2341;
t2127 = t2147 * t2278 + t2171 * t2282;
t2128 = t2147 * t2282 - t2171 * t2278;
t2099 = -t2127 * t2271 + t2128 * t2274;
t2131 = -t2193 * t2343 - t2290;
t2081 = t2099 * t2279 - t2131 * t2283;
t2082 = t2099 * t2283 + t2131 * t2279;
t2059 = -t2081 * t2280 + t2082 * t2284;
t2098 = t2127 * t2274 + t2128 * t2271;
t2307 = t2059 * t2281 - t2098 * t2285;
t2105 = t2137 * t2283 + t2138 * t2279;
t2106 = -t2137 * t2279 + t2138 * t2283;
t2080 = -t2105 * t2280 + t2106 * t2284;
t2306 = t2080 * t2281 - t2177 * t2285;
t2166 = -t2315 + t2329;
t2141 = t2166 * t2274 - t2168 * t2271;
t2173 = -t2339 - t2340;
t2116 = t2141 * t2279 - t2173 * t2283;
t2117 = t2141 * t2283 + t2173 * t2279;
t2093 = -t2116 * t2280 + t2117 * t2284;
t2140 = t2166 * t2271 + t2168 * t2274;
t2305 = t2093 * t2281 - t2140 * t2285;
t2184 = -t2215 - t2340;
t2145 = -t2169 * t2271 + t2184 * t2274;
t2165 = t2315 + t2329;
t2120 = t2145 * t2279 - t2165 * t2283;
t2121 = t2145 * t2283 + t2165 * t2279;
t2095 = -t2120 * t2280 + t2121 * t2284;
t2144 = t2169 * t2274 + t2184 * t2271;
t2304 = t2095 * t2281 - t2144 * t2285;
t2170 = -t2199 - t2330;
t2197 = -t2215 - t2339;
t2149 = t2170 * t2274 - t2197 * t2271;
t2167 = t2196 - t2328;
t2123 = t2149 * t2279 - t2167 * t2283;
t2124 = t2149 * t2283 + t2167 * t2279;
t2097 = -t2123 * t2280 + t2124 * t2284;
t2148 = t2170 * t2271 + t2197 * t2274;
t2303 = t2097 * t2281 - t2148 * t2285;
t2186 = -t2240 * t2325 - t2314;
t2188 = t2238 * t2325 + t2295;
t2154 = t2186 * t2279 + t2188 * t2283;
t2155 = t2186 * t2283 - t2188 * t2279;
t2119 = -t2154 * t2280 + t2155 * t2284;
t2201 = -t2337 - t2215;
t2302 = t2119 * t2281 - t2201 * t2285;
t2209 = -t2215 - t2336;
t2210 = t2321 - t2327;
t2174 = t2209 * t2279 + t2210 * t2283;
t2175 = t2209 * t2283 - t2210 * t2279;
t2151 = -t2174 * t2280 + t2175 * t2284;
t2185 = (qJD(4) + t2267) * t2240 + t2314;
t2301 = t2151 * t2281 - t2185 * t2285;
t2153 = -t2182 * t2280 + t2183 * t2284;
t2300 = t2153 * t2281 - t2203 * t2285;
t2211 = -t2321 - t2327;
t2228 = -t2336 - t2337;
t2189 = t2211 * t2279 + t2228 * t2283;
t2190 = t2211 * t2283 - t2228 * t2279;
t2157 = -t2189 * t2280 + t2190 * t2284;
t2299 = t2157 * t2281 + t2285 * t2316;
t2298 = t2208 * t2281 - t2285 * t2312;
t2286 = qJD(3) ^ 2;
t2257 = -t2286 - t2326;
t2226 = -t2252 * t2280 + t2257 * t2284;
t2246 = t2266 - 0.2e1 * t2320;
t2297 = t2226 * t2281 + t2246 * t2285;
t2253 = -qJDD(3) + t2259;
t2256 = -t2268 * t2287 - t2286;
t2227 = t2253 * t2284 - t2256 * t2280;
t2243 = 0.2e1 * t2319 + t2322;
t2296 = t2227 * t2281 - t2243 * t2285;
t2247 = t2323 * qJDD(2);
t2250 = t2323 * t2287;
t2294 = t2247 * t2281 + t2250 * t2285;
t2293 = qJDD(2) * t2285 - t2281 * t2287;
t2249 = -qJDD(2) * t2281 - t2285 * t2287;
t2236 = t2293 * t2276;
t2235 = t2249 * t2276;
t2234 = t2293 * t2273;
t2233 = t2249 * t2273;
t2225 = t2253 * t2280 + t2256 * t2284;
t2224 = t2252 * t2284 + t2257 * t2280;
t2220 = t2247 * t2285 - t2250 * t2281;
t2214 = t2294 * t2276;
t2213 = t2294 * t2273;
t2205 = t2227 * t2285 + t2243 * t2281;
t2204 = t2226 * t2285 - t2246 * t2281;
t2181 = -t2273 * t2225 + t2276 * t2296;
t2180 = -t2273 * t2224 + t2276 * t2297;
t2179 = t2276 * t2225 + t2273 * t2296;
t2178 = t2276 * t2224 + t2273 * t2297;
t2172 = t2208 * t2285 + t2281 * t2312;
t2160 = -t2273 * t2230 + t2276 * t2298;
t2159 = t2276 * t2230 + t2273 * t2298;
t2156 = t2189 * t2284 + t2190 * t2280;
t2152 = t2182 * t2284 + t2183 * t2280;
t2150 = t2174 * t2284 + t2175 * t2280;
t2142 = t2153 * t2285 + t2203 * t2281;
t2139 = t2157 * t2285 - t2281 * t2316;
t2133 = t2151 * t2285 + t2185 * t2281;
t2118 = t2154 * t2284 + t2155 * t2280;
t2113 = t2119 * t2285 + t2201 * t2281;
t2112 = -t2273 * t2156 + t2276 * t2299;
t2111 = t2276 * t2156 + t2273 * t2299;
t2110 = -t2273 * t2152 + t2276 * t2300;
t2109 = t2276 * t2152 + t2273 * t2300;
t2108 = -t2273 * t2150 + t2276 * t2301;
t2107 = t2276 * t2150 + t2273 * t2301;
t2096 = t2123 * t2284 + t2124 * t2280;
t2094 = t2120 * t2284 + t2121 * t2280;
t2092 = t2116 * t2284 + t2117 * t2280;
t2089 = -t2273 * t2118 + t2276 * t2302;
t2088 = t2276 * t2118 + t2273 * t2302;
t2085 = t2097 * t2285 + t2148 * t2281;
t2084 = t2095 * t2285 + t2144 * t2281;
t2083 = t2093 * t2285 + t2140 * t2281;
t2079 = t2105 * t2284 + t2106 * t2280;
t2076 = t2080 * t2285 + t2177 * t2281;
t2069 = -t2273 * t2096 + t2276 * t2303;
t2068 = t2276 * t2096 + t2273 * t2303;
t2065 = -t2273 * t2094 + t2276 * t2304;
t2064 = t2276 * t2094 + t2273 * t2304;
t2061 = -t2273 * t2092 + t2276 * t2305;
t2060 = t2276 * t2092 + t2273 * t2305;
t2058 = t2081 * t2284 + t2082 * t2280;
t2056 = t2077 * t2284 + t2078 * t2280;
t2055 = -t2273 * t2079 + t2276 * t2306;
t2054 = t2276 * t2079 + t2273 * t2306;
t2053 = t2059 * t2285 + t2098 * t2281;
t2052 = t2057 * t2285 + t2090 * t2281;
t2050 = t2070 * t2284 + t2071 * t2280;
t2048 = t2066 * t2284 + t2067 * t2280;
t2045 = t2051 * t2285 + t2072 * t2281;
t2044 = t2049 * t2285 + t2074 * t2281;
t2043 = -t2273 * t2058 + t2276 * t2307;
t2042 = t2276 * t2058 + t2273 * t2307;
t2041 = -t2273 * t2056 + t2276 * t2308;
t2040 = t2276 * t2056 + t2273 * t2308;
t2035 = -t2273 * t2050 + t2276 * t2309;
t2034 = t2276 * t2050 + t2273 * t2309;
t2033 = -t2273 * t2048 + t2276 * t2310;
t2032 = t2276 * t2048 + t2273 * t2310;
t2030 = t2036 * t2284 + t2037 * t2280;
t2029 = t2031 * t2285 + t2038 * t2281;
t2028 = -t2273 * t2030 + t2276 * t2311;
t2027 = t2276 * t2030 + t2273 * t2311;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2275 * t2251 - t2272 * t2313, 0, 0, 0, 0, 0, 0, -t2236 * t2272 + t2249 * t2275, -t2235 * t2272 - t2275 * t2293, 0, -t2160 * t2272 + t2172 * t2275, 0, 0, 0, 0, 0, 0, -t2180 * t2272 + t2204 * t2275, -t2181 * t2272 + t2205 * t2275, -t2214 * t2272 + t2220 * t2275, -t2110 * t2272 + t2142 * t2275, 0, 0, 0, 0, 0, 0, -t2108 * t2272 + t2133 * t2275, -t2112 * t2272 + t2139 * t2275, -t2089 * t2272 + t2113 * t2275, -t2055 * t2272 + t2076 * t2275, 0, 0, 0, 0, 0, 0, -t2065 * t2272 + t2084 * t2275, -t2069 * t2272 + t2085 * t2275, -t2061 * t2272 + t2083 * t2275, -t2033 * t2272 + t2044 * t2275, 0, 0, 0, 0, 0, 0, -t2041 * t2272 + t2052 * t2275, -t2043 * t2272 + t2053 * t2275, -t2035 * t2272 + t2045 * t2275, -t2028 * t2272 + t2029 * t2275; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2272 * t2251 + t2275 * t2313, 0, 0, 0, 0, 0, 0, t2236 * t2275 + t2249 * t2272, t2235 * t2275 - t2272 * t2293, 0, t2160 * t2275 + t2172 * t2272, 0, 0, 0, 0, 0, 0, t2180 * t2275 + t2204 * t2272, t2181 * t2275 + t2205 * t2272, t2214 * t2275 + t2220 * t2272, t2110 * t2275 + t2142 * t2272, 0, 0, 0, 0, 0, 0, t2108 * t2275 + t2133 * t2272, t2112 * t2275 + t2139 * t2272, t2089 * t2275 + t2113 * t2272, t2055 * t2275 + t2076 * t2272, 0, 0, 0, 0, 0, 0, t2065 * t2275 + t2084 * t2272, t2069 * t2275 + t2085 * t2272, t2061 * t2275 + t2083 * t2272, t2033 * t2275 + t2044 * t2272, 0, 0, 0, 0, 0, 0, t2041 * t2275 + t2052 * t2272, t2043 * t2275 + t2053 * t2272, t2035 * t2275 + t2045 * t2272, t2028 * t2275 + t2029 * t2272; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2334, 0, 0, 0, 0, 0, 0, t2234, t2233, 0, t2159, 0, 0, 0, 0, 0, 0, t2178, t2179, t2213, t2109, 0, 0, 0, 0, 0, 0, t2107, t2111, t2088, t2054, 0, 0, 0, 0, 0, 0, t2064, t2068, t2060, t2032, 0, 0, 0, 0, 0, 0, t2040, t2042, t2034, t2027; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2251, 0, 0, 0, 0, 0, 0, t2249, -t2293, 0, t2172, 0, 0, 0, 0, 0, 0, t2204, t2205, t2220, t2142, 0, 0, 0, 0, 0, 0, t2133, t2139, t2113, t2076, 0, 0, 0, 0, 0, 0, t2084, t2085, t2083, t2044, 0, 0, 0, 0, 0, 0, t2052, t2053, t2045, t2029; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2313, 0, 0, 0, 0, 0, 0, t2236, t2235, 0, t2160, 0, 0, 0, 0, 0, 0, t2180, t2181, t2214, t2110, 0, 0, 0, 0, 0, 0, t2108, t2112, t2089, t2055, 0, 0, 0, 0, 0, 0, t2065, t2069, t2061, t2033, 0, 0, 0, 0, 0, 0, t2041, t2043, t2035, t2028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2334, 0, 0, 0, 0, 0, 0, t2234, t2233, 0, t2159, 0, 0, 0, 0, 0, 0, t2178, t2179, t2213, t2109, 0, 0, 0, 0, 0, 0, t2107, t2111, t2088, t2054, 0, 0, 0, 0, 0, 0, t2064, t2068, t2060, t2032, 0, 0, 0, 0, 0, 0, t2040, t2042, t2034, t2027; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2287, -qJDD(2), 0, t2208, 0, 0, 0, 0, 0, 0, t2226, t2227, t2247, t2153, 0, 0, 0, 0, 0, 0, t2151, t2157, t2119, t2080, 0, 0, 0, 0, 0, 0, t2095, t2097, t2093, t2049, 0, 0, 0, 0, 0, 0, t2057, t2059, t2051, t2031; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2287, 0, -t2312, 0, 0, 0, 0, 0, 0, t2246, -t2243, t2250, -t2203, 0, 0, 0, 0, 0, 0, -t2185, t2316, -t2201, -t2177, 0, 0, 0, 0, 0, 0, -t2144, -t2148, -t2140, -t2074, 0, 0, 0, 0, 0, 0, -t2090, -t2098, -t2072, -t2038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2230, 0, 0, 0, 0, 0, 0, t2224, t2225, 0, t2152, 0, 0, 0, 0, 0, 0, t2150, t2156, t2118, t2079, 0, 0, 0, 0, 0, 0, t2094, t2096, t2092, t2048, 0, 0, 0, 0, 0, 0, t2056, t2058, t2050, t2030; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2257, t2253, t2266, t2183, 0, 0, 0, 0, 0, 0, t2175, t2190, t2155, t2106, 0, 0, 0, 0, 0, 0, t2121, t2124, t2117, t2067, 0, 0, 0, 0, 0, 0, t2078, t2082, t2071, t2037; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2252, t2256, -t2322, t2182, 0, 0, 0, 0, 0, 0, t2174, t2189, t2154, t2105, 0, 0, 0, 0, 0, 0, t2120, t2123, t2116, t2066, 0, 0, 0, 0, 0, 0, t2077, t2081, t2070, t2036; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2246, t2243, -t2250, t2203, 0, 0, 0, 0, 0, 0, t2185, -t2316, t2201, t2177, 0, 0, 0, 0, 0, 0, t2144, t2148, t2140, t2074, 0, 0, 0, 0, 0, 0, t2090, t2098, t2072, t2038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2209, t2211, t2186, t2138, 0, 0, 0, 0, 0, 0, t2145, t2149, t2141, t2075, 0, 0, 0, 0, 0, 0, t2091, t2099, t2073, t2039; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2210, t2228, t2188, t2137, 0, 0, 0, 0, 0, 0, -t2165, -t2167, -t2173, -t2125, 0, 0, 0, 0, 0, 0, -t2129, -t2131, -t2143, -t2104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2185, -t2316, t2201, t2177, 0, 0, 0, 0, 0, 0, t2144, t2148, t2140, t2074, 0, 0, 0, 0, 0, 0, t2090, t2098, t2072, t2038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2184, t2170, t2166, t2103, 0, 0, 0, 0, 0, 0, t2115, t2128, t2101, t2047; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2169, t2197, t2168, t2102, 0, 0, 0, 0, 0, 0, t2114, t2127, t2100, t2046; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2165, t2167, t2173, t2125, 0, 0, 0, 0, 0, 0, t2129, t2131, t2143, t2104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2158, t2147, t2130, t2063; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2146, t2171, t2132, t2062; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2129, t2131, t2143, t2104;];
f_new_reg  = t1;
