% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRPP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 12:40
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRPP4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP4_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPP4_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPP4_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPP4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRPP4_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 12:40:31
% EndTime: 2019-05-06 12:40:37
% DurationCPUTime: 6.81s
% Computational Cost: add. (18143->294), mult. (38700->298), div. (0->0), fcn. (24324->8), ass. (0->178)
t2253 = cos(qJ(2));
t2303 = qJD(1) * t2253;
t2237 = qJD(2) * t2303;
t2250 = sin(qJ(2));
t2287 = t2250 * qJDD(1);
t2214 = t2237 + t2287;
t2274 = qJDD(4) + t2214;
t2249 = sin(qJ(4));
t2252 = cos(qJ(4));
t2209 = qJD(2) * t2249 + t2252 * t2303;
t2211 = qJD(2) * t2252 - t2249 * t2303;
t2246 = sin(pkin(9));
t2247 = cos(pkin(9));
t2184 = t2209 * t2247 + t2211 * t2246;
t2186 = -t2209 * t2246 + t2211 * t2247;
t2300 = t2184 * t2186;
t2149 = t2274 + t2300;
t2183 = t2186 ^ 2;
t2304 = qJD(1) * t2250;
t2232 = qJD(4) + t2304;
t2309 = t2232 ^ 2;
t2315 = -t2183 - t2309;
t2119 = t2149 * t2247 + t2246 * t2315;
t2270 = t2149 * t2246 - t2247 * t2315;
t2096 = t2249 * t2119 + t2252 * t2270;
t2236 = qJD(2) * t2304;
t2286 = t2253 * qJDD(1);
t2215 = -t2236 + t2286;
t2276 = qJDD(2) * t2249 + t2252 * t2215;
t2180 = -qJD(4) * t2211 - t2276;
t2267 = qJDD(2) * t2252 - t2215 * t2249;
t2181 = -qJD(4) * t2209 + t2267;
t2268 = t2180 * t2246 + t2181 * t2247;
t2299 = t2184 * t2232;
t2261 = t2268 - t2299;
t2086 = t2096 * t2250 - t2253 * t2261;
t2098 = t2119 * t2252 - t2249 * t2270;
t2251 = sin(qJ(1));
t2254 = cos(qJ(1));
t2345 = t2086 * t2251 - t2098 * t2254;
t2344 = t2086 * t2254 + t2098 * t2251;
t2091 = t2096 * t2253 + t2250 * t2261;
t2150 = t2274 - t2300;
t2159 = t2184 ^ 2;
t2314 = -t2309 - t2159;
t2322 = -t2150 * t2246 + t2247 * t2314;
t2327 = t2247 * t2150 + t2246 * t2314;
t2329 = -t2249 * t2327 + t2252 * t2322;
t2277 = t2247 * t2180 - t2181 * t2246;
t2298 = t2186 * t2232;
t2263 = -t2277 + t2298;
t2328 = t2249 * t2322 + t2252 * t2327;
t2337 = t2250 * t2328 + t2253 * t2263;
t2341 = t2251 * t2337 - t2254 * t2329;
t2340 = t2251 * t2329 + t2254 * t2337;
t2136 = t2268 + t2299;
t2264 = t2277 + t2298;
t2311 = t2136 * t2246 + t2247 * t2264;
t2312 = -t2247 * t2136 + t2246 * t2264;
t2321 = -t2249 * t2312 + t2252 * t2311;
t2142 = t2183 + t2159;
t2320 = t2249 * t2311 + t2252 * t2312;
t2331 = -t2142 * t2253 + t2250 * t2320;
t2336 = t2251 * t2331 - t2254 * t2321;
t2335 = t2250 * t2263 - t2253 * t2328;
t2334 = t2251 * t2321 + t2254 * t2331;
t2330 = -t2142 * t2250 - t2253 * t2320;
t2256 = qJD(1) ^ 2;
t2291 = t2253 * t2256;
t2284 = t2250 * t2291;
t2222 = -qJDD(2) + t2284;
t2243 = t2250 ^ 2;
t2255 = qJD(2) ^ 2;
t2227 = -t2243 * t2256 - t2255;
t2194 = t2222 * t2253 - t2227 * t2250;
t2213 = 0.2e1 * t2237 + t2287;
t2326 = t2194 * t2251 - t2213 * t2254;
t2325 = t2194 * t2254 + t2213 * t2251;
t2221 = qJDD(2) + t2284;
t2244 = t2253 ^ 2;
t2292 = t2244 * t2256;
t2228 = t2255 + t2292;
t2195 = t2221 * t2250 + t2228 * t2253;
t2216 = -0.2e1 * t2236 + t2286;
t2324 = t2195 * t2251 - t2216 * t2254;
t2323 = t2195 * t2254 + t2216 * t2251;
t2224 = g(1) * t2251 - t2254 * g(2);
t2265 = -qJDD(1) * pkin(1) - t2224;
t2308 = 2 * qJD(3);
t2313 = pkin(2) * t2236 - (t2214 + t2237) * qJ(3) - t2304 * t2308 + t2265;
t2207 = t2209 ^ 2;
t2310 = t2211 ^ 2;
t2307 = -0.2e1 * t2186;
t2306 = pkin(7) * t2256;
t2305 = g(3) * t2253;
t2297 = t2209 * t2211;
t2290 = qJD(4) - t2232;
t2289 = qJD(4) + t2232;
t2223 = pkin(3) * t2304 - qJD(2) * pkin(8);
t2144 = -t2223 * t2304 + (-pkin(3) * t2244 - pkin(7)) * t2256 + (-pkin(2) - pkin(8)) * t2215 + t2313;
t2266 = -qJDD(2) * pkin(2) - t2255 * qJ(3) + qJDD(3) + t2305;
t2225 = -g(1) * t2254 - g(2) * t2251;
t2202 = -pkin(1) * t2256 + qJDD(1) * pkin(7) + t2225;
t2283 = t2256 * (-pkin(2) * t2253 - qJ(3) * t2250) + t2202;
t2153 = -qJDD(2) * pkin(8) + (t2214 - t2237) * pkin(3) + (-pkin(8) * t2291 + t2283) * t2250 + t2266;
t2113 = t2252 * t2144 + t2249 * t2153;
t2288 = t2243 + t2244;
t2285 = -t2309 - t2310;
t2198 = pkin(4) * t2232 - qJ(5) * t2211;
t2107 = -pkin(4) * t2207 + qJ(5) * t2180 - t2198 * t2232 + t2113;
t2262 = t2274 - t2297;
t2271 = -t2249 * t2144 + t2252 * t2153;
t2257 = (-t2209 * t2232 - t2181) * qJ(5) + t2262 * pkin(4) + t2271;
t2078 = -0.2e1 * qJD(5) * t2184 + t2247 * t2107 + t2246 * t2257;
t2282 = t2107 * t2246 - t2247 * t2257;
t2158 = pkin(5) * t2184 - qJ(6) * t2186;
t2071 = -pkin(5) * t2309 + qJ(6) * t2274 + 0.2e1 * qJD(6) * t2232 - t2184 * t2158 + t2078;
t2072 = qJDD(6) - t2274 * pkin(5) - t2309 * qJ(6) + (0.2e1 * qJD(5) + t2158) * t2186 + t2282;
t2273 = t2071 * t2246 - t2072 * t2247;
t2077 = qJD(5) * t2307 - t2282;
t2272 = t2077 * t2247 + t2078 * t2246;
t2192 = t2221 * t2253 - t2228 * t2250;
t2190 = t2222 * t2250 + t2227 * t2253;
t2260 = t2209 * t2290 - t2267;
t2240 = t2250 * g(3);
t2258 = -t2255 * pkin(2) + qJDD(2) * qJ(3) + t2253 * t2283 - t2240;
t2152 = t2215 * pkin(3) - pkin(8) * t2292 + (t2308 + t2223) * qJD(2) + t2258;
t2114 = -t2180 * pkin(4) - t2207 * qJ(5) + t2211 * t2198 + qJDD(5) + t2152;
t2220 = t2288 * t2256;
t2219 = -qJDD(1) * t2251 - t2254 * t2256;
t2218 = qJDD(1) * t2254 - t2251 * t2256;
t2217 = t2288 * qJDD(1);
t2201 = -t2265 + t2306;
t2200 = t2253 * t2202 - t2240;
t2199 = -t2202 * t2250 - t2305;
t2189 = t2217 * t2254 - t2220 * t2251;
t2188 = t2217 * t2251 + t2220 * t2254;
t2182 = -t2309 - t2207;
t2175 = -t2274 - t2297;
t2174 = -t2207 - t2310;
t2170 = t2283 * t2250 + t2266;
t2167 = qJD(2) * t2308 + t2258;
t2166 = -t2199 * t2250 + t2200 * t2253;
t2165 = t2199 * t2253 + t2200 * t2250;
t2164 = -t2209 * t2289 + t2267;
t2163 = -t2211 * t2290 - t2276;
t2162 = t2211 * t2289 + t2276;
t2160 = pkin(2) * t2215 + t2306 - t2313;
t2157 = t2175 * t2252 - t2249 * t2285;
t2156 = t2249 * t2175 + t2252 * t2285;
t2148 = t2182 * t2252 - t2249 * t2262;
t2147 = t2249 * t2182 + t2252 * t2262;
t2140 = t2167 * t2253 + t2170 * t2250;
t2139 = t2167 * t2250 - t2170 * t2253;
t2138 = t2163 * t2252 - t2249 * t2260;
t2137 = t2249 * t2163 + t2252 * t2260;
t2128 = t2156 * t2250 + t2164 * t2253;
t2125 = -t2156 * t2253 + t2164 * t2250;
t2122 = t2147 * t2250 + t2162 * t2253;
t2121 = -t2147 * t2253 + t2162 * t2250;
t2118 = t2137 * t2250 + t2174 * t2253;
t2117 = -t2137 * t2253 + t2174 * t2250;
t2095 = t2113 * t2252 - t2249 * t2271;
t2094 = t2249 * t2113 + t2252 * t2271;
t2089 = pkin(5) * t2263 - qJ(6) * t2261 + qJD(6) * t2307 + t2114;
t2088 = t2094 * t2250 + t2152 * t2253;
t2087 = -t2094 * t2253 + t2152 * t2250;
t2070 = -t2077 * t2246 + t2078 * t2247;
t2068 = t2071 * t2247 + t2072 * t2246;
t2066 = t2070 * t2252 - t2249 * t2272;
t2065 = t2249 * t2070 + t2252 * t2272;
t2064 = t2065 * t2250 + t2114 * t2253;
t2063 = -t2065 * t2253 + t2114 * t2250;
t2062 = t2068 * t2252 - t2249 * t2273;
t2061 = t2249 * t2068 + t2252 * t2273;
t2060 = t2061 * t2250 + t2089 * t2253;
t2059 = -t2061 * t2253 + t2089 * t2250;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2219, -t2218, 0, -t2224 * t2251 + t2225 * t2254, 0, 0, 0, 0, 0, 0, -t2323, t2325, t2189, t2166 * t2254 - t2201 * t2251, 0, 0, 0, 0, 0, 0, t2189, t2323, -t2325, t2140 * t2254 - t2160 * t2251, 0, 0, 0, 0, 0, 0, t2122 * t2254 + t2148 * t2251, t2128 * t2254 + t2157 * t2251, t2118 * t2254 + t2138 * t2251, t2088 * t2254 + t2095 * t2251, 0, 0, 0, 0, 0, 0, t2340, -t2344, t2334, t2064 * t2254 + t2066 * t2251, 0, 0, 0, 0, 0, 0, t2340, t2334, t2344, t2060 * t2254 + t2062 * t2251; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2218, t2219, 0, t2224 * t2254 + t2225 * t2251, 0, 0, 0, 0, 0, 0, -t2324, t2326, t2188, t2166 * t2251 + t2201 * t2254, 0, 0, 0, 0, 0, 0, t2188, t2324, -t2326, t2140 * t2251 + t2160 * t2254, 0, 0, 0, 0, 0, 0, t2122 * t2251 - t2148 * t2254, t2128 * t2251 - t2157 * t2254, t2118 * t2251 - t2138 * t2254, t2088 * t2251 - t2095 * t2254, 0, 0, 0, 0, 0, 0, t2341, -t2345, t2336, t2064 * t2251 - t2066 * t2254, 0, 0, 0, 0, 0, 0, t2341, t2336, t2345, t2060 * t2251 - t2062 * t2254; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2192, t2190, 0, t2165, 0, 0, 0, 0, 0, 0, 0, -t2192, -t2190, t2139, 0, 0, 0, 0, 0, 0, t2121, t2125, t2117, t2087, 0, 0, 0, 0, 0, 0, t2335, t2091, t2330, t2063, 0, 0, 0, 0, 0, 0, t2335, t2330, -t2091, t2059; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2256, -qJDD(1), 0, t2225, 0, 0, 0, 0, 0, 0, -t2195, t2194, t2217, t2166, 0, 0, 0, 0, 0, 0, t2217, t2195, -t2194, t2140, 0, 0, 0, 0, 0, 0, t2122, t2128, t2118, t2088, 0, 0, 0, 0, 0, 0, t2337, -t2086, t2331, t2064, 0, 0, 0, 0, 0, 0, t2337, t2331, t2086, t2060; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2256, 0, t2224, 0, 0, 0, 0, 0, 0, t2216, -t2213, t2220, t2201, 0, 0, 0, 0, 0, 0, t2220, -t2216, t2213, t2160, 0, 0, 0, 0, 0, 0, -t2148, -t2157, -t2138, -t2095, 0, 0, 0, 0, 0, 0, -t2329, t2098, -t2321, -t2066, 0, 0, 0, 0, 0, 0, -t2329, -t2321, -t2098, -t2062; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2192, t2190, 0, t2165, 0, 0, 0, 0, 0, 0, 0, -t2192, -t2190, t2139, 0, 0, 0, 0, 0, 0, t2121, t2125, t2117, t2087, 0, 0, 0, 0, 0, 0, t2335, t2091, t2330, t2063, 0, 0, 0, 0, 0, 0, t2335, t2330, -t2091, t2059; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2228, t2222, t2286, t2200, 0, 0, 0, 0, 0, 0, t2286, t2228, -t2222, t2167, 0, 0, 0, 0, 0, 0, t2162, t2164, t2174, t2152, 0, 0, 0, 0, 0, 0, t2263, t2261, -t2142, t2114, 0, 0, 0, 0, 0, 0, t2263, -t2142, -t2261, t2089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2221, t2227, -t2287, t2199, 0, 0, 0, 0, 0, 0, -t2287, -t2221, -t2227, -t2170, 0, 0, 0, 0, 0, 0, -t2147, -t2156, -t2137, -t2094, 0, 0, 0, 0, 0, 0, -t2328, t2096, -t2320, -t2065, 0, 0, 0, 0, 0, 0, -t2328, -t2320, -t2096, -t2061; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2216, t2213, -t2220, -t2201, 0, 0, 0, 0, 0, 0, -t2220, t2216, -t2213, -t2160, 0, 0, 0, 0, 0, 0, t2148, t2157, t2138, t2095, 0, 0, 0, 0, 0, 0, t2329, -t2098, t2321, t2066, 0, 0, 0, 0, 0, 0, t2329, t2321, t2098, t2062; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2220, t2216, -t2213, -t2160, 0, 0, 0, 0, 0, 0, t2148, t2157, t2138, t2095, 0, 0, 0, 0, 0, 0, t2329, -t2098, t2321, t2066, 0, 0, 0, 0, 0, 0, t2329, t2321, t2098, t2062; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2286, -t2228, t2222, -t2167, 0, 0, 0, 0, 0, 0, -t2162, -t2164, -t2174, -t2152, 0, 0, 0, 0, 0, 0, -t2263, -t2261, t2142, -t2114, 0, 0, 0, 0, 0, 0, -t2263, t2142, t2261, -t2089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2287, t2221, t2227, t2170, 0, 0, 0, 0, 0, 0, t2147, t2156, t2137, t2094, 0, 0, 0, 0, 0, 0, t2328, -t2096, t2320, t2065, 0, 0, 0, 0, 0, 0, t2328, t2320, t2096, t2061; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2182, t2175, t2163, t2113, 0, 0, 0, 0, 0, 0, t2322, -t2119, t2311, t2070, 0, 0, 0, 0, 0, 0, t2322, t2311, t2119, t2068; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2262, t2285, t2260, t2271, 0, 0, 0, 0, 0, 0, t2327, -t2270, t2312, t2272, 0, 0, 0, 0, 0, 0, t2327, t2312, t2270, t2273; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2162, t2164, t2174, t2152, 0, 0, 0, 0, 0, 0, t2263, t2261, -t2142, t2114, 0, 0, 0, 0, 0, 0, t2263, -t2142, -t2261, t2089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2314, -t2149, t2264, t2078, 0, 0, 0, 0, 0, 0, t2314, t2264, t2149, t2071; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2150, t2315, -t2136, t2077, 0, 0, 0, 0, 0, 0, t2150, -t2136, -t2315, -t2072; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2263, t2261, -t2142, t2114, 0, 0, 0, 0, 0, 0, t2263, -t2142, -t2261, t2089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2314, t2264, t2149, t2071; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2263, -t2142, -t2261, t2089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2150, t2136, t2315, t2072;];
f_new_reg  = t1;