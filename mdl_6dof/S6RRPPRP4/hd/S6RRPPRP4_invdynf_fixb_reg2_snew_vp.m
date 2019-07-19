% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPPRP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,theta3]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 09:23
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPPRP4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRP4_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRP4_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPPRP4_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPPRP4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPRP4_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 09:23:32
% EndTime: 2019-05-06 09:23:39
% DurationCPUTime: 7.07s
% Computational Cost: add. (16093->290), mult. (35817->301), div. (0->0), fcn. (23912->8), ass. (0->177)
t2407 = sin(qJ(2));
t2454 = qJD(1) * t2407;
t2395 = qJD(2) * t2454;
t2410 = cos(qJ(2));
t2433 = t2410 * qJDD(1);
t2429 = -t2395 + t2433;
t2427 = qJDD(5) + t2429;
t2404 = sin(pkin(9));
t2405 = cos(pkin(9));
t2370 = -t2405 * qJD(2) + t2404 * t2454;
t2372 = t2404 * qJD(2) + t2405 * t2454;
t2406 = sin(qJ(5));
t2409 = cos(qJ(5));
t2337 = -t2409 * t2370 + t2372 * t2406;
t2339 = t2370 * t2406 + t2372 * t2409;
t2443 = t2337 * t2339;
t2292 = t2427 + t2443;
t2336 = t2339 ^ 2;
t2453 = qJD(1) * t2410;
t2392 = qJD(5) + t2453;
t2458 = t2392 ^ 2;
t2468 = -t2336 - t2458;
t2256 = t2292 * t2406 - t2409 * t2468;
t2258 = t2292 * t2409 + t2406 * t2468;
t2235 = t2256 * t2404 + t2258 * t2405;
t2431 = qJD(2) * t2453;
t2434 = t2407 * qJDD(1);
t2376 = t2431 + t2434;
t2426 = qJDD(2) * t2404 + t2376 * t2405;
t2428 = qJDD(2) * t2405 - t2404 * t2376;
t2417 = -t2406 * t2428 + t2409 * t2426;
t2416 = -t2337 * qJD(5) + t2417;
t2442 = t2337 * t2392;
t2415 = t2416 - t2442;
t2225 = t2235 * t2410 + t2407 * t2415;
t2239 = t2256 * t2405 - t2258 * t2404;
t2408 = sin(qJ(1));
t2411 = cos(qJ(1));
t2517 = t2225 * t2408 + t2239 * t2411;
t2516 = t2225 * t2411 - t2239 * t2408;
t2293 = t2427 - t2443;
t2302 = t2337 ^ 2;
t2464 = -t2458 - t2302;
t2475 = -t2293 * t2406 + t2409 * t2464;
t2476 = t2293 * t2409 + t2406 * t2464;
t2481 = t2404 * t2475 - t2405 * t2476;
t2422 = t2406 * t2426 + t2409 * t2428;
t2435 = -t2392 - qJD(5);
t2270 = -t2339 * t2435 + t2422;
t2482 = t2404 * t2476 + t2405 * t2475;
t2511 = -t2270 * t2407 + t2410 * t2482;
t2515 = t2408 * t2511 - t2411 * t2481;
t2514 = t2408 * t2481 + t2411 * t2511;
t2223 = t2235 * t2407 - t2410 * t2415;
t2510 = t2270 * t2410 + t2407 * t2482;
t2441 = t2370 * t2372;
t2331 = t2429 - t2441;
t2368 = t2372 ^ 2;
t2402 = t2410 ^ 2;
t2412 = qJD(1) ^ 2;
t2399 = t2402 * t2412;
t2466 = -t2368 - t2399;
t2305 = t2331 * t2405 - t2404 * t2466;
t2440 = t2370 * t2410;
t2432 = qJD(1) * t2440;
t2420 = t2426 + t2432;
t2284 = t2305 * t2410 + t2407 * t2420;
t2303 = t2331 * t2404 + t2405 * t2466;
t2509 = t2284 * t2408 - t2303 * t2411;
t2508 = t2284 * t2411 + t2303 * t2408;
t2282 = t2305 * t2407 - t2410 * t2420;
t2421 = -t2426 + t2432;
t2357 = t2372 * t2453;
t2467 = -t2357 + t2428;
t2479 = t2404 * t2467 + t2421 * t2405;
t2459 = t2370 ^ 2;
t2320 = t2368 + t2459;
t2477 = -t2421 * t2404 + t2405 * t2467;
t2483 = -t2320 * t2407 + t2410 * t2477;
t2501 = t2408 * t2483 - t2411 * t2479;
t2275 = t2416 + t2442;
t2418 = (-qJD(5) + t2392) * t2339 - t2422;
t2461 = t2275 * t2406 + t2409 * t2418;
t2462 = -t2275 * t2409 + t2406 * t2418;
t2473 = t2404 * t2461 - t2405 * t2462;
t2287 = t2336 + t2302;
t2474 = t2404 * t2462 + t2405 * t2461;
t2485 = t2287 * t2407 + t2410 * t2474;
t2500 = t2408 * t2485 - t2411 * t2473;
t2332 = t2429 + t2441;
t2463 = -t2459 - t2399;
t2480 = -t2332 * t2405 + t2404 * t2463;
t2325 = -t2357 - t2428;
t2478 = t2332 * t2404 + t2405 * t2463;
t2487 = t2325 * t2407 + t2410 * t2478;
t2499 = t2408 * t2487 - t2411 * t2480;
t2498 = t2408 * t2479 + t2411 * t2483;
t2497 = t2408 * t2473 + t2411 * t2485;
t2496 = t2408 * t2480 + t2411 * t2487;
t2488 = -t2410 * t2325 + t2407 * t2478;
t2486 = -t2287 * t2410 + t2407 * t2474;
t2484 = t2320 * t2410 + t2407 * t2477;
t2460 = qJD(2) ^ 2;
t2457 = 2 * qJD(6);
t2456 = -0.2e1 * t2372;
t2455 = t2410 * g(3);
t2401 = t2407 ^ 2;
t2438 = t2401 * t2412;
t2385 = -g(1) * t2411 - g(2) * t2408;
t2364 = -pkin(1) * t2412 + qJDD(1) * pkin(7) + t2385;
t2437 = t2407 * t2364;
t2342 = pkin(3) * t2370 - qJ(4) * t2372;
t2436 = (2 * qJD(3)) + t2342;
t2350 = -g(3) * t2407 + t2410 * t2364;
t2374 = (-pkin(2) * t2410 - qJ(3) * t2407) * qJD(1);
t2315 = -pkin(2) * t2460 + qJDD(2) * qJ(3) + t2374 * t2453 + t2350;
t2384 = t2408 * g(1) - t2411 * g(2);
t2363 = qJDD(1) * pkin(1) + t2412 * pkin(7) + t2384;
t2414 = (-t2376 - t2431) * qJ(3) + (-t2429 + t2395) * pkin(2) - t2363;
t2281 = -0.2e1 * qJD(3) * t2370 + t2405 * t2315 + t2404 * t2414;
t2254 = -pkin(3) * t2399 - t2429 * qJ(4) - 0.2e1 * qJD(4) * t2453 - t2370 * t2342 + t2281;
t2425 = pkin(4) * t2453 - pkin(8) * t2372;
t2252 = -pkin(4) * t2459 - pkin(8) * t2428 - t2425 * t2453 + t2254;
t2430 = t2404 * t2315 - t2405 * t2414;
t2423 = t2429 * pkin(3) - qJ(4) * t2399 + qJDD(4) + t2430;
t2413 = t2429 * pkin(4) + t2421 * pkin(8) + (pkin(4) * t2370 + t2436) * t2372 + t2423;
t2217 = t2409 * t2252 + t2406 * t2413;
t2216 = -t2252 * t2406 + t2409 * t2413;
t2424 = -qJDD(2) * pkin(2) - qJ(3) * t2460 + qJDD(3) + t2455;
t2260 = qJD(4) * t2456 + t2437 - t2426 * qJ(4) + (-qJ(4) * t2440 + t2374 * t2407) * qJD(1) + t2424 + t2325 * pkin(3);
t2253 = -pkin(4) * t2428 + pkin(8) * t2459 - t2372 * t2425 + t2260;
t2391 = t2410 * t2412 * t2407;
t2389 = -t2399 - t2460;
t2388 = -t2438 - t2460;
t2383 = -qJDD(2) + t2391;
t2382 = qJDD(2) + t2391;
t2381 = t2399 + t2438;
t2380 = -qJDD(1) * t2408 - t2411 * t2412;
t2379 = qJDD(1) * t2411 - t2408 * t2412;
t2378 = (t2401 + t2402) * qJDD(1);
t2377 = -0.2e1 * t2395 + t2433;
t2375 = 0.2e1 * t2431 + t2434;
t2349 = -t2437 - t2455;
t2348 = t2383 * t2410 - t2388 * t2407;
t2347 = -t2382 * t2407 + t2389 * t2410;
t2346 = t2383 * t2407 + t2388 * t2410;
t2345 = t2382 * t2410 + t2389 * t2407;
t2314 = (qJD(1) * t2374 + t2364) * t2407 + t2424;
t2310 = -t2349 * t2407 + t2350 * t2410;
t2309 = t2349 * t2410 + t2350 * t2407;
t2301 = pkin(5) * t2337 - qJ(6) * t2339;
t2280 = qJD(3) * t2456 - t2430;
t2255 = t2436 * t2372 + t2423;
t2251 = -t2280 * t2404 + t2281 * t2405;
t2250 = t2280 * t2405 + t2281 * t2404;
t2238 = t2251 * t2410 + t2314 * t2407;
t2237 = t2251 * t2407 - t2314 * t2410;
t2232 = t2254 * t2405 + t2255 * t2404;
t2231 = t2254 * t2404 - t2255 * t2405;
t2222 = t2253 + (t2337 * t2435 + t2417) * qJ(6) + t2339 * t2457 - t2270 * pkin(5);
t2215 = t2232 * t2410 + t2260 * t2407;
t2214 = t2232 * t2407 - t2260 * t2410;
t2209 = -pkin(5) * t2427 - qJ(6) * t2458 + t2301 * t2339 + qJDD(6) - t2216;
t2208 = -pkin(5) * t2458 + qJ(6) * t2427 - t2337 * t2301 + t2392 * t2457 + t2217;
t2207 = -t2216 * t2406 + t2217 * t2409;
t2206 = t2216 * t2409 + t2217 * t2406;
t2205 = t2208 * t2409 + t2209 * t2406;
t2204 = t2208 * t2406 - t2209 * t2409;
t2203 = t2206 * t2404 + t2207 * t2405;
t2202 = -t2206 * t2405 + t2207 * t2404;
t2201 = t2203 * t2410 + t2253 * t2407;
t2200 = t2203 * t2407 - t2253 * t2410;
t2199 = t2204 * t2404 + t2205 * t2405;
t2198 = -t2204 * t2405 + t2205 * t2404;
t2197 = t2199 * t2410 + t2222 * t2407;
t2196 = t2199 * t2407 - t2222 * t2410;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2380, -t2379, 0, -t2384 * t2408 + t2385 * t2411, 0, 0, 0, 0, 0, 0, t2347 * t2411 - t2377 * t2408, t2348 * t2411 + t2375 * t2408, t2378 * t2411 - t2381 * t2408, t2310 * t2411 - t2363 * t2408, 0, 0, 0, 0, 0, 0, t2496, t2508, t2498, t2238 * t2411 + t2250 * t2408, 0, 0, 0, 0, 0, 0, t2496, t2498, -t2508, t2215 * t2411 + t2231 * t2408, 0, 0, 0, 0, 0, 0, t2514, -t2516, t2497, t2201 * t2411 + t2202 * t2408, 0, 0, 0, 0, 0, 0, t2514, t2497, t2516, t2197 * t2411 + t2198 * t2408; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2379, t2380, 0, t2384 * t2411 + t2385 * t2408, 0, 0, 0, 0, 0, 0, t2347 * t2408 + t2377 * t2411, t2348 * t2408 - t2375 * t2411, t2378 * t2408 + t2381 * t2411, t2310 * t2408 + t2363 * t2411, 0, 0, 0, 0, 0, 0, t2499, t2509, t2501, t2238 * t2408 - t2250 * t2411, 0, 0, 0, 0, 0, 0, t2499, t2501, -t2509, t2215 * t2408 - t2231 * t2411, 0, 0, 0, 0, 0, 0, t2515, -t2517, t2500, t2201 * t2408 - t2202 * t2411, 0, 0, 0, 0, 0, 0, t2515, t2500, t2517, t2197 * t2408 - t2198 * t2411; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2345, t2346, 0, t2309, 0, 0, 0, 0, 0, 0, t2488, t2282, t2484, t2237, 0, 0, 0, 0, 0, 0, t2488, t2484, -t2282, t2214, 0, 0, 0, 0, 0, 0, t2510, -t2223, t2486, t2200, 0, 0, 0, 0, 0, 0, t2510, t2486, t2223, t2196; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2412, -qJDD(1), 0, t2385, 0, 0, 0, 0, 0, 0, t2347, t2348, t2378, t2310, 0, 0, 0, 0, 0, 0, t2487, t2284, t2483, t2238, 0, 0, 0, 0, 0, 0, t2487, t2483, -t2284, t2215, 0, 0, 0, 0, 0, 0, t2511, -t2225, t2485, t2201, 0, 0, 0, 0, 0, 0, t2511, t2485, t2225, t2197; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2412, 0, t2384, 0, 0, 0, 0, 0, 0, t2377, -t2375, t2381, t2363, 0, 0, 0, 0, 0, 0, -t2480, -t2303, -t2479, -t2250, 0, 0, 0, 0, 0, 0, -t2480, -t2479, t2303, -t2231, 0, 0, 0, 0, 0, 0, -t2481, -t2239, -t2473, -t2202, 0, 0, 0, 0, 0, 0, -t2481, -t2473, t2239, -t2198; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2345, t2346, 0, t2309, 0, 0, 0, 0, 0, 0, t2488, t2282, t2484, t2237, 0, 0, 0, 0, 0, 0, t2488, t2484, -t2282, t2214, 0, 0, 0, 0, 0, 0, t2510, -t2223, t2486, t2200, 0, 0, 0, 0, 0, 0, t2510, t2486, t2223, t2196; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2389, t2383, t2433, t2350, 0, 0, 0, 0, 0, 0, t2478, t2305, t2477, t2251, 0, 0, 0, 0, 0, 0, t2478, t2477, -t2305, t2232, 0, 0, 0, 0, 0, 0, t2482, -t2235, t2474, t2203, 0, 0, 0, 0, 0, 0, t2482, t2474, t2235, t2199; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2382, t2388, -t2434, t2349, 0, 0, 0, 0, 0, 0, -t2325, -t2420, t2320, -t2314, 0, 0, 0, 0, 0, 0, -t2325, t2320, t2420, -t2260, 0, 0, 0, 0, 0, 0, t2270, t2415, -t2287, -t2253, 0, 0, 0, 0, 0, 0, t2270, -t2287, -t2415, -t2222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2377, t2375, -t2381, -t2363, 0, 0, 0, 0, 0, 0, t2480, t2303, t2479, t2250, 0, 0, 0, 0, 0, 0, t2480, t2479, -t2303, t2231, 0, 0, 0, 0, 0, 0, t2481, t2239, t2473, t2202, 0, 0, 0, 0, 0, 0, t2481, t2473, -t2239, t2198; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2463, t2331, t2467, t2281, 0, 0, 0, 0, 0, 0, t2463, t2467, -t2331, t2254, 0, 0, 0, 0, 0, 0, t2475, -t2258, t2461, t2207, 0, 0, 0, 0, 0, 0, t2475, t2461, t2258, t2205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2332, t2466, t2421, t2280, 0, 0, 0, 0, 0, 0, -t2332, t2421, -t2466, -t2255, 0, 0, 0, 0, 0, 0, -t2476, t2256, -t2462, -t2206, 0, 0, 0, 0, 0, 0, -t2476, -t2462, -t2256, -t2204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2325, t2420, -t2320, t2314, 0, 0, 0, 0, 0, 0, t2325, -t2320, -t2420, t2260, 0, 0, 0, 0, 0, 0, -t2270, -t2415, t2287, t2253, 0, 0, 0, 0, 0, 0, -t2270, t2287, t2415, t2222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2463, t2467, -t2331, t2254, 0, 0, 0, 0, 0, 0, t2475, -t2258, t2461, t2207, 0, 0, 0, 0, 0, 0, t2475, t2461, t2258, t2205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2325, -t2320, -t2420, t2260, 0, 0, 0, 0, 0, 0, -t2270, -t2415, t2287, t2253, 0, 0, 0, 0, 0, 0, -t2270, t2287, t2415, t2222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2332, -t2421, t2466, t2255, 0, 0, 0, 0, 0, 0, t2476, -t2256, t2462, t2206, 0, 0, 0, 0, 0, 0, t2476, t2462, t2256, t2204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2464, -t2292, t2418, t2217, 0, 0, 0, 0, 0, 0, t2464, t2418, t2292, t2208; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2293, t2468, -t2275, t2216, 0, 0, 0, 0, 0, 0, t2293, -t2275, -t2468, -t2209; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2270, t2415, -t2287, -t2253, 0, 0, 0, 0, 0, 0, t2270, -t2287, -t2415, -t2222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2464, t2418, t2292, t2208; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2270, -t2287, -t2415, -t2222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2293, t2275, t2468, t2209;];
f_new_reg  = t1;