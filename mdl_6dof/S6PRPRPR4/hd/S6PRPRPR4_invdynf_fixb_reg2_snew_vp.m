% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRPRPR4
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta3,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 22:49
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRPRPR4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR4_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRPR4_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRPR4_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRPR4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRPR4_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 22:49:41
% EndTime: 2019-05-04 22:49:49
% DurationCPUTime: 8.91s
% Computational Cost: add. (56469->313), mult. (131509->489), div. (0->0), fcn. (102951->14), ass. (0->267)
t2166 = qJD(2) ^ 2;
t2154 = sin(pkin(10));
t2158 = cos(pkin(10));
t2134 = -g(1) * t2158 - g(2) * t2154;
t2162 = sin(qJ(2));
t2165 = cos(qJ(2));
t2155 = sin(pkin(6));
t2159 = cos(pkin(6));
t2197 = g(1) * t2154 - g(2) * t2158;
t2216 = -g(3) + qJDD(1);
t2229 = t2155 * t2216 + t2159 * t2197;
t2086 = t2165 * t2134 + t2162 * t2229;
t2170 = -(2 * qJD(3) * qJD(2)) - t2086;
t2230 = t2166 * pkin(2) - qJDD(2) * qJ(3) + t2170;
t2153 = sin(pkin(11));
t2146 = t2153 ^ 2;
t2157 = cos(pkin(11));
t2147 = t2157 ^ 2;
t2202 = t2146 + t2147;
t2131 = t2202 * t2166;
t2161 = sin(qJ(4));
t2164 = cos(qJ(4));
t2124 = (t2153 * t2161 - t2157 * t2164) * qJD(2);
t2118 = qJD(6) + t2124;
t2228 = qJD(6) + t2118;
t2179 = t2153 * t2164 + t2157 * t2161;
t2226 = t2179 * qJDD(2);
t2225 = qJD(4) ^ 2;
t2126 = t2179 * qJD(2);
t2152 = sin(pkin(12));
t2156 = cos(pkin(12));
t2109 = -t2156 * qJD(4) + t2126 * t2152;
t2111 = qJD(4) * t2152 + t2126 * t2156;
t2160 = sin(qJ(6));
t2163 = cos(qJ(6));
t2073 = t2163 * t2109 + t2111 * t2160;
t2224 = t2073 ^ 2;
t2075 = -t2109 * t2160 + t2111 * t2163;
t2223 = t2075 ^ 2;
t2222 = t2109 ^ 2;
t2221 = t2111 ^ 2;
t2220 = t2118 ^ 2;
t2097 = t2124 ^ 2;
t2219 = t2126 ^ 2;
t2218 = -2 * qJD(5);
t2213 = t2073 * t2075;
t2212 = t2109 * t2111;
t2211 = t2111 * t2124;
t2210 = t2124 * qJD(4);
t2209 = t2124 * t2109;
t2208 = t2124 * t2126;
t2117 = t2126 * qJD(4);
t2207 = t2146 * t2166;
t2206 = t2147 * t2166;
t2113 = -t2155 * t2197 + t2159 * t2216;
t2205 = t2157 * t2113;
t2203 = qJD(6) - t2118;
t2061 = t2153 * t2113 - t2157 * t2230;
t2144 = t2157 * qJDD(2);
t2052 = -pkin(3) * t2206 + pkin(8) * t2144 + t2061;
t2169 = t2205 + ((pkin(3) * t2157 + pkin(2)) * t2166 + (-qJ(3) - pkin(8)) * qJDD(2) + t2170) * t2153;
t2023 = t2164 * t2052 + t2161 * t2169;
t2201 = t2153 * qJDD(2);
t2087 = pkin(4) * t2124 - qJ(5) * t2126;
t2010 = -pkin(4) * t2225 + qJDD(4) * qJ(5) - t2087 * t2124 + t2023;
t2196 = t2162 * t2134 - t2165 * t2229;
t2080 = -qJDD(2) * pkin(2) - t2166 * qJ(3) + qJDD(3) + t2196;
t2069 = -pkin(3) * t2144 + t2080 + (-t2206 - t2207) * pkin(8);
t2195 = -t2164 * t2144 + t2161 * t2201;
t2094 = t2117 + t2195;
t2096 = t2226 - t2210;
t2029 = (-t2096 + t2210) * qJ(5) + (t2094 + t2117) * pkin(4) + t2069;
t1990 = t2156 * t2010 + t2152 * t2029 + t2109 * t2218;
t2022 = -t2052 * t2161 + t2164 * t2169;
t2083 = qJDD(4) * t2152 + t2096 * t2156;
t2198 = -t2156 * qJDD(4) + t2096 * t2152;
t2199 = -t2160 * t2083 - t2163 * t2198;
t2056 = -t2083 - t2209;
t2057 = t2094 - t2212;
t1989 = -t2152 * t2010 + t2156 * t2029 + t2111 * t2218;
t1975 = pkin(5) * t2057 + pkin(9) * t2056 + t1989;
t2082 = pkin(5) * t2124 - pkin(9) * t2111;
t1976 = -pkin(5) * t2222 - pkin(9) * t2198 - t2124 * t2082 + t1990;
t1951 = t1975 * t2163 - t1976 * t2160;
t1952 = t1975 * t2160 + t1976 * t2163;
t1935 = t1951 * t2163 + t1952 * t2160;
t1936 = -t1951 * t2160 + t1952 * t2163;
t1928 = -t1935 * t2152 + t1936 * t2156;
t2007 = -qJDD(4) * pkin(4) - qJ(5) * t2225 + t2087 * t2126 + qJDD(5) - t2022;
t1993 = pkin(5) * t2198 - pkin(9) * t2222 + t2082 * t2111 + t2007;
t1925 = t1928 * t2161 - t1993 * t2164;
t1926 = t1928 * t2164 + t1993 * t2161;
t1920 = -t1925 * t2153 + t1926 * t2157;
t1927 = t1935 * t2156 + t1936 * t2152;
t2194 = t1920 * t2162 - t1927 * t2165;
t1964 = -t1989 * t2152 + t1990 * t2156;
t1955 = t1964 * t2161 - t2007 * t2164;
t1956 = t1964 * t2164 + t2007 * t2161;
t1938 = -t1955 * t2153 + t1956 * t2157;
t1963 = t1989 * t2156 + t1990 * t2152;
t2193 = t1938 * t2162 - t1963 * t2165;
t2016 = -t2075 * t2203 + t2199;
t2172 = -t2163 * t2083 + t2160 * t2198;
t2018 = t2073 * t2203 + t2172;
t1987 = t2016 * t2160 + t2018 * t2163;
t1988 = t2016 * t2163 - t2018 * t2160;
t1962 = -t1987 * t2152 + t1988 * t2156;
t2028 = -t2223 - t2224;
t1959 = t1962 * t2161 - t2028 * t2164;
t1960 = t1962 * t2164 + t2028 * t2161;
t1941 = -t1959 * t2153 + t1960 * t2157;
t1961 = t1987 * t2156 + t1988 * t2152;
t2192 = t1941 * t2162 - t1961 * t2165;
t2173 = -qJDD(6) - t2094;
t2041 = -t2173 - t2213;
t2043 = -t2220 - t2224;
t2002 = t2041 * t2163 + t2043 * t2160;
t2003 = -t2041 * t2160 + t2043 * t2163;
t1978 = -t2002 * t2152 + t2003 * t2156;
t2015 = t2075 * t2228 - t2199;
t1966 = t1978 * t2161 - t2015 * t2164;
t1967 = t1978 * t2164 + t2015 * t2161;
t1946 = -t1966 * t2153 + t1967 * t2157;
t1977 = t2002 * t2156 + t2003 * t2152;
t2191 = t1946 * t2162 - t1977 * t2165;
t2042 = t2173 - t2213;
t2051 = -t2220 - t2223;
t2011 = t2042 * t2160 + t2051 * t2163;
t2012 = t2042 * t2163 - t2051 * t2160;
t1984 = -t2011 * t2152 + t2012 * t2156;
t2017 = -t2073 * t2228 - t2172;
t1970 = t1984 * t2161 - t2017 * t2164;
t1971 = t1984 * t2164 + t2017 * t2161;
t1948 = -t1970 * t2153 + t1971 * t2157;
t1983 = t2011 * t2156 + t2012 * t2152;
t2190 = t1948 * t2162 - t1983 * t2165;
t1994 = t2022 * t2164 + t2023 * t2161;
t1995 = -t2022 * t2161 + t2023 * t2164;
t1969 = -t1994 * t2153 + t1995 * t2157;
t2189 = t1969 * t2162 - t2069 * t2165;
t2054 = -t2198 + t2211;
t2025 = t2054 * t2156 - t2056 * t2152;
t2062 = -t2221 - t2222;
t2004 = t2025 * t2161 - t2062 * t2164;
t2005 = t2025 * t2164 + t2062 * t2161;
t1980 = -t2004 * t2153 + t2005 * t2157;
t2024 = t2054 * t2152 + t2056 * t2156;
t2188 = t1980 * t2162 - t2024 * t2165;
t2068 = -t2097 - t2222;
t2036 = -t2057 * t2152 + t2068 * t2156;
t2053 = t2198 + t2211;
t2008 = t2036 * t2161 - t2053 * t2164;
t2009 = t2036 * t2164 + t2053 * t2161;
t1982 = -t2008 * t2153 + t2009 * t2157;
t2035 = t2057 * t2156 + t2068 * t2152;
t2187 = t1982 * t2162 - t2035 * t2165;
t2058 = -t2094 - t2212;
t2072 = -t2097 - t2221;
t2040 = t2058 * t2156 - t2072 * t2152;
t2055 = t2083 - t2209;
t2013 = t2040 * t2161 - t2055 * t2164;
t2014 = t2040 * t2164 + t2055 * t2161;
t1986 = -t2013 * t2153 + t2014 * t2157;
t2039 = t2058 * t2152 + t2072 * t2156;
t2186 = t1986 * t2162 - t2039 * t2165;
t2060 = t2153 * t2230 + t2205;
t2032 = -t2060 * t2153 + t2061 * t2157;
t2185 = t2032 * t2162 - t2080 * t2165;
t2088 = -t2097 - t2225;
t2091 = qJDD(4) - t2208;
t2063 = t2088 * t2161 + t2091 * t2164;
t2064 = t2088 * t2164 - t2091 * t2161;
t2034 = -t2063 * t2153 + t2064 * t2157;
t2093 = 0.2e1 * t2117 + t2195;
t2184 = t2034 * t2162 - t2093 * t2165;
t2076 = -t2094 + t2117;
t2065 = t2076 * t2161 - t2164 * t2226;
t2066 = t2076 * t2164 + t2161 * t2226;
t2038 = -t2065 * t2153 + t2066 * t2157;
t2077 = -t2219 - t2097;
t2183 = t2038 * t2162 - t2077 * t2165;
t2092 = -qJDD(4) - t2208;
t2114 = -t2219 - t2225;
t2070 = t2092 * t2161 + t2114 * t2164;
t2071 = t2092 * t2164 - t2114 * t2161;
t2045 = -t2070 * t2153 + t2071 * t2157;
t2095 = t2226 - 0.2e1 * t2210;
t2182 = t2045 * t2162 - t2095 * t2165;
t2181 = t2086 * t2162 - t2165 * t2196;
t2130 = t2202 * qJDD(2);
t2180 = t2130 * t2162 + t2131 * t2165;
t2178 = qJDD(2) * t2165 - t2162 * t2166;
t2133 = -qJDD(2) * t2162 - t2165 * t2166;
t2128 = t2153 * t2131;
t2176 = t2128 * t2162 - t2165 * t2201;
t2129 = t2157 * t2131;
t2175 = -t2129 * t2162 + t2144 * t2165;
t2136 = t2153 * t2166 * t2157;
t2123 = t2178 * t2159;
t2122 = t2133 * t2159;
t2121 = t2178 * t2155;
t2120 = t2133 * t2155;
t2108 = -t2129 * t2165 - t2144 * t2162;
t2107 = t2128 * t2165 + t2162 * t2201;
t2102 = t2130 * t2165 - t2131 * t2162;
t2101 = t2175 * t2159;
t2100 = t2176 * t2159;
t2099 = t2175 * t2155;
t2098 = t2176 * t2155;
t2090 = t2180 * t2159;
t2089 = t2180 * t2155;
t2059 = t2086 * t2165 + t2162 * t2196;
t2047 = -t2155 * t2113 + t2159 * t2181;
t2046 = t2159 * t2113 + t2155 * t2181;
t2044 = t2070 * t2157 + t2071 * t2153;
t2037 = t2065 * t2157 + t2066 * t2153;
t2033 = t2063 * t2157 + t2064 * t2153;
t2031 = t2060 * t2157 + t2061 * t2153;
t2030 = t2045 * t2165 + t2095 * t2162;
t2021 = t2034 * t2165 + t2093 * t2162;
t2020 = t2038 * t2165 + t2077 * t2162;
t2019 = t2032 * t2165 + t2080 * t2162;
t2001 = -t2155 * t2044 + t2159 * t2182;
t2000 = t2159 * t2044 + t2155 * t2182;
t1999 = -t2155 * t2033 + t2159 * t2184;
t1998 = t2159 * t2033 + t2155 * t2184;
t1997 = -t2155 * t2037 + t2159 * t2183;
t1996 = t2159 * t2037 + t2155 * t2183;
t1992 = -t2155 * t2031 + t2159 * t2185;
t1991 = t2159 * t2031 + t2155 * t2185;
t1985 = t2013 * t2157 + t2014 * t2153;
t1981 = t2008 * t2157 + t2009 * t2153;
t1979 = t2004 * t2157 + t2005 * t2153;
t1974 = t1986 * t2165 + t2039 * t2162;
t1973 = t1982 * t2165 + t2035 * t2162;
t1972 = t1980 * t2165 + t2024 * t2162;
t1968 = t1994 * t2157 + t1995 * t2153;
t1965 = t1969 * t2165 + t2069 * t2162;
t1958 = -t2155 * t1985 + t2159 * t2186;
t1957 = t2159 * t1985 + t2155 * t2186;
t1954 = -t2155 * t1981 + t2159 * t2187;
t1953 = t2159 * t1981 + t2155 * t2187;
t1950 = -t2155 * t1979 + t2159 * t2188;
t1949 = t2159 * t1979 + t2155 * t2188;
t1947 = t1970 * t2157 + t1971 * t2153;
t1945 = t1966 * t2157 + t1967 * t2153;
t1944 = -t2155 * t1968 + t2159 * t2189;
t1943 = t2159 * t1968 + t2155 * t2189;
t1942 = t1948 * t2165 + t1983 * t2162;
t1940 = t1959 * t2157 + t1960 * t2153;
t1939 = t1946 * t2165 + t1977 * t2162;
t1937 = t1955 * t2157 + t1956 * t2153;
t1934 = t1941 * t2165 + t1961 * t2162;
t1933 = t1938 * t2165 + t1963 * t2162;
t1932 = -t2155 * t1947 + t2159 * t2190;
t1931 = t2159 * t1947 + t2155 * t2190;
t1930 = -t2155 * t1945 + t2159 * t2191;
t1929 = t2159 * t1945 + t2155 * t2191;
t1924 = -t2155 * t1940 + t2159 * t2192;
t1923 = t2159 * t1940 + t2155 * t2192;
t1922 = -t2155 * t1937 + t2159 * t2193;
t1921 = t2159 * t1937 + t2155 * t2193;
t1919 = t1925 * t2157 + t1926 * t2153;
t1918 = t1920 * t2165 + t1927 * t2162;
t1917 = -t2155 * t1919 + t2159 * t2194;
t1916 = t2159 * t1919 + t2155 * t2194;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2158 * t2134 - t2154 * t2197, 0, 0, 0, 0, 0, 0, -t2123 * t2154 + t2133 * t2158, -t2122 * t2154 - t2158 * t2178, 0, -t2047 * t2154 + t2059 * t2158, 0, 0, 0, 0, 0, 0, -t2101 * t2154 + t2108 * t2158, -t2100 * t2154 + t2107 * t2158, -t2090 * t2154 + t2102 * t2158, -t1992 * t2154 + t2019 * t2158, 0, 0, 0, 0, 0, 0, -t1999 * t2154 + t2021 * t2158, -t2001 * t2154 + t2030 * t2158, -t1997 * t2154 + t2020 * t2158, -t1944 * t2154 + t1965 * t2158, 0, 0, 0, 0, 0, 0, -t1954 * t2154 + t1973 * t2158, -t1958 * t2154 + t1974 * t2158, -t1950 * t2154 + t1972 * t2158, -t1922 * t2154 + t1933 * t2158, 0, 0, 0, 0, 0, 0, -t1930 * t2154 + t1939 * t2158, -t1932 * t2154 + t1942 * t2158, -t1924 * t2154 + t1934 * t2158, -t1917 * t2154 + t1918 * t2158; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2154 * t2134 + t2158 * t2197, 0, 0, 0, 0, 0, 0, t2123 * t2158 + t2133 * t2154, t2122 * t2158 - t2154 * t2178, 0, t2047 * t2158 + t2059 * t2154, 0, 0, 0, 0, 0, 0, t2101 * t2158 + t2108 * t2154, t2100 * t2158 + t2107 * t2154, t2090 * t2158 + t2102 * t2154, t1992 * t2158 + t2019 * t2154, 0, 0, 0, 0, 0, 0, t1999 * t2158 + t2021 * t2154, t2001 * t2158 + t2030 * t2154, t1997 * t2158 + t2020 * t2154, t1944 * t2158 + t1965 * t2154, 0, 0, 0, 0, 0, 0, t1954 * t2158 + t1973 * t2154, t1958 * t2158 + t1974 * t2154, t1950 * t2158 + t1972 * t2154, t1922 * t2158 + t1933 * t2154, 0, 0, 0, 0, 0, 0, t1930 * t2158 + t1939 * t2154, t1932 * t2158 + t1942 * t2154, t1924 * t2158 + t1934 * t2154, t1917 * t2158 + t1918 * t2154; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2216, 0, 0, 0, 0, 0, 0, t2121, t2120, 0, t2046, 0, 0, 0, 0, 0, 0, t2099, t2098, t2089, t1991, 0, 0, 0, 0, 0, 0, t1998, t2000, t1996, t1943, 0, 0, 0, 0, 0, 0, t1953, t1957, t1949, t1921, 0, 0, 0, 0, 0, 0, t1929, t1931, t1923, t1916; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2134, 0, 0, 0, 0, 0, 0, t2133, -t2178, 0, t2059, 0, 0, 0, 0, 0, 0, t2108, t2107, t2102, t2019, 0, 0, 0, 0, 0, 0, t2021, t2030, t2020, t1965, 0, 0, 0, 0, 0, 0, t1973, t1974, t1972, t1933, 0, 0, 0, 0, 0, 0, t1939, t1942, t1934, t1918; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2197, 0, 0, 0, 0, 0, 0, t2123, t2122, 0, t2047, 0, 0, 0, 0, 0, 0, t2101, t2100, t2090, t1992, 0, 0, 0, 0, 0, 0, t1999, t2001, t1997, t1944, 0, 0, 0, 0, 0, 0, t1954, t1958, t1950, t1922, 0, 0, 0, 0, 0, 0, t1930, t1932, t1924, t1917; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2216, 0, 0, 0, 0, 0, 0, t2121, t2120, 0, t2046, 0, 0, 0, 0, 0, 0, t2099, t2098, t2089, t1991, 0, 0, 0, 0, 0, 0, t1998, t2000, t1996, t1943, 0, 0, 0, 0, 0, 0, t1953, t1957, t1949, t1921, 0, 0, 0, 0, 0, 0, t1929, t1931, t1923, t1916; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2166, -qJDD(2), 0, t2086, 0, 0, 0, 0, 0, 0, -t2129, t2128, t2130, t2032, 0, 0, 0, 0, 0, 0, t2034, t2045, t2038, t1969, 0, 0, 0, 0, 0, 0, t1982, t1986, t1980, t1938, 0, 0, 0, 0, 0, 0, t1946, t1948, t1941, t1920; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2166, 0, -t2196, 0, 0, 0, 0, 0, 0, t2144, -t2201, t2131, -t2080, 0, 0, 0, 0, 0, 0, -t2093, -t2095, -t2077, -t2069, 0, 0, 0, 0, 0, 0, -t2035, -t2039, -t2024, -t1963, 0, 0, 0, 0, 0, 0, -t1977, -t1983, -t1961, -t1927; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2113, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2031, 0, 0, 0, 0, 0, 0, t2033, t2044, t2037, t1968, 0, 0, 0, 0, 0, 0, t1981, t1985, t1979, t1937, 0, 0, 0, 0, 0, 0, t1945, t1947, t1940, t1919; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2206, t2136, t2144, t2061, 0, 0, 0, 0, 0, 0, t2064, t2071, t2066, t1995, 0, 0, 0, 0, 0, 0, t2009, t2014, t2005, t1956, 0, 0, 0, 0, 0, 0, t1967, t1971, t1960, t1926; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2136, -t2207, -t2201, t2060, 0, 0, 0, 0, 0, 0, t2063, t2070, t2065, t1994, 0, 0, 0, 0, 0, 0, t2008, t2013, t2004, t1955, 0, 0, 0, 0, 0, 0, t1966, t1970, t1959, t1925; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2144, t2201, -t2131, t2080, 0, 0, 0, 0, 0, 0, t2093, t2095, t2077, t2069, 0, 0, 0, 0, 0, 0, t2035, t2039, t2024, t1963, 0, 0, 0, 0, 0, 0, t1977, t1983, t1961, t1927; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2088, t2092, t2076, t2023, 0, 0, 0, 0, 0, 0, t2036, t2040, t2025, t1964, 0, 0, 0, 0, 0, 0, t1978, t1984, t1962, t1928; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2091, t2114, -t2226, t2022, 0, 0, 0, 0, 0, 0, -t2053, -t2055, -t2062, -t2007, 0, 0, 0, 0, 0, 0, -t2015, -t2017, -t2028, -t1993; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2093, t2095, t2077, t2069, 0, 0, 0, 0, 0, 0, t2035, t2039, t2024, t1963, 0, 0, 0, 0, 0, 0, t1977, t1983, t1961, t1927; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2068, t2058, t2054, t1990, 0, 0, 0, 0, 0, 0, t2003, t2012, t1988, t1936; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2057, t2072, t2056, t1989, 0, 0, 0, 0, 0, 0, t2002, t2011, t1987, t1935; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2053, t2055, t2062, t2007, 0, 0, 0, 0, 0, 0, t2015, t2017, t2028, t1993; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2043, t2042, t2016, t1952; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2041, t2051, t2018, t1951; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2015, t2017, t2028, t1993;];
f_new_reg  = t1;