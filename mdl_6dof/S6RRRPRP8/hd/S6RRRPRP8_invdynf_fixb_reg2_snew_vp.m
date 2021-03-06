% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRPRP8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 08:37
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRPRP8_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP8_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP8_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP8_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP8_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRPRP8_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 08:37:24
% EndTime: 2019-05-07 08:37:30
% DurationCPUTime: 6.03s
% Computational Cost: add. (19218->278), mult. (38378->304), div. (0->0), fcn. (26358->8), ass. (0->181)
t2065 = sin(qJ(2));
t2102 = qJD(1) * t2065;
t2056 = qJD(2) * t2102;
t2069 = cos(qJ(2));
t2089 = t2069 * qJDD(1);
t2086 = t2056 - t2089;
t2083 = -qJDD(3) - t2086;
t2064 = sin(qJ(3));
t2068 = cos(qJ(3));
t2030 = -qJD(2) * t2068 + t2064 * t2102;
t2032 = t2064 * qJD(2) + t2068 * t2102;
t2095 = t2030 * t2032;
t1991 = t2083 - t2095;
t2028 = t2032 ^ 2;
t2101 = qJD(1) * t2069;
t2054 = qJD(3) - t2101;
t2105 = t2054 ^ 2;
t2113 = -t2028 - t2105;
t1970 = t1991 * t2068 - t2064 * t2113;
t2088 = qJD(2) * t2101;
t2090 = t2065 * qJDD(1);
t2035 = t2088 + t2090;
t2081 = -t2064 * qJDD(2) - t2068 * t2035;
t2079 = qJD(3) * t2030 + t2081;
t2094 = t2030 * t2054;
t2119 = t2079 + t2094;
t1950 = t1970 * t2069 - t2065 * t2119;
t1968 = t1991 * t2064 + t2068 * t2113;
t2066 = sin(qJ(1));
t2070 = cos(qJ(1));
t2135 = t1950 * t2066 - t1968 * t2070;
t2134 = t1950 * t2070 + t1968 * t2066;
t1948 = t1970 * t2065 + t2069 * t2119;
t1980 = -t2079 + t2094;
t2082 = t2068 * qJDD(2) - t2064 * t2035;
t2093 = qJD(3) - t2054;
t2077 = -t2032 * t2093 + t2082;
t2111 = -t1980 * t2068 + t2064 * t2077;
t2107 = t2030 ^ 2;
t1990 = t2028 + t2107;
t2110 = t1980 * t2064 + t2068 * t2077;
t2125 = -t1990 * t2065 + t2069 * t2110;
t2131 = t2066 * t2125 - t2070 * t2111;
t2130 = t2066 * t2111 + t2070 * t2125;
t1992 = t2083 + t2095;
t2112 = -t2105 - t2107;
t2117 = t1992 * t2064 + t2068 * t2112;
t2129 = t2065 * t2117;
t2118 = -t1992 * t2068 + t2064 * t2112;
t2128 = t2066 * t2118;
t2127 = t2069 * t2117;
t2126 = t2070 * t2118;
t2124 = t1990 * t2069 + t2065 * t2110;
t2047 = qJD(5) - t2054;
t2114 = qJD(5) + t2047;
t2109 = qJD(2) ^ 2;
t2063 = sin(qJ(5));
t2067 = cos(qJ(5));
t2001 = -t2067 * t2030 + t2032 * t2063;
t2000 = t2001 ^ 2;
t2003 = t2030 * t2063 + t2032 * t2067;
t2108 = t2003 ^ 2;
t2106 = t2047 ^ 2;
t2104 = -2 * qJD(6);
t2103 = t2069 * g(3);
t2096 = t2001 * t2003;
t2092 = qJD(5) - t2047;
t2045 = -g(1) * t2070 - g(2) * t2066;
t2071 = qJD(1) ^ 2;
t2023 = -pkin(1) * t2071 + qJDD(1) * pkin(7) + t2045;
t2013 = -g(3) * t2065 + t2069 * t2023;
t2033 = (-pkin(2) * t2069 - pkin(8) * t2065) * qJD(1);
t1986 = -pkin(2) * t2109 + qJDD(2) * pkin(8) + t2033 * t2101 + t2013;
t2044 = t2066 * g(1) - t2070 * g(2);
t2022 = qJDD(1) * pkin(1) + t2071 * pkin(7) + t2044;
t2072 = (-t2035 - t2088) * pkin(8) + (t2086 + t2056) * pkin(2) - t2022;
t1957 = -t2064 * t1986 + t2068 * t2072;
t2004 = pkin(3) * t2030 - qJ(4) * t2032;
t1931 = pkin(3) * t2083 - qJ(4) * t2105 + t2032 * t2004 + qJDD(4) - t1957;
t1923 = (t2030 * t2093 + t2081) * pkin(9) + t1992 * pkin(4) + t1931;
t1958 = t2068 * t1986 + t2064 * t2072;
t1929 = -pkin(3) * t2105 - qJ(4) * t2083 + 0.2e1 * qJD(4) * t2054 - t2030 * t2004 + t1958;
t2078 = qJD(3) * t2032 - t2082;
t2085 = -pkin(4) * t2054 - pkin(9) * t2032;
t1925 = -pkin(4) * t2107 + pkin(9) * t2078 + t2054 * t2085 + t1929;
t1905 = t2063 * t1923 + t2067 * t1925;
t2059 = t2065 ^ 2;
t2060 = t2069 ^ 2;
t2091 = t2059 + t2060;
t2087 = pkin(3) * t2054 - 0.2e1 * qJD(4);
t1904 = t2067 * t1923 - t2063 * t1925;
t2084 = pkin(5) * t2047 - qJ(6) * t2003;
t2080 = -qJDD(5) - t2083;
t1960 = -t2080 - t2096;
t1985 = t2103 - qJDD(2) * pkin(2) - t2109 * pkin(8) + (qJD(1) * t2033 + t2023) * t2065;
t2075 = t2063 * t2079 + t2067 * t2078;
t2074 = t2078 * pkin(3) + qJ(4) * t2119 + t1985;
t2073 = -t2063 * t2078 + t2067 * t2079;
t1941 = t2001 * t2092 + t2073;
t1926 = -t2082 * pkin(4) + t2107 * pkin(9) + t2074 + (pkin(4) * qJD(3) - t2085 + t2087) * t2032;
t2053 = t2069 * t2071 * t2065;
t2049 = -t2060 * t2071 - t2109;
t2048 = -t2059 * t2071 - t2109;
t2042 = -qJDD(2) + t2053;
t2041 = qJDD(2) + t2053;
t2040 = t2091 * t2071;
t2039 = -qJDD(1) * t2066 - t2070 * t2071;
t2038 = qJDD(1) * t2070 - t2066 * t2071;
t2037 = t2091 * qJDD(1);
t2036 = -0.2e1 * t2056 + t2089;
t2034 = 0.2e1 * t2088 + t2090;
t2012 = -t2065 * t2023 - t2103;
t2011 = t2042 * t2069 - t2048 * t2065;
t2010 = -t2041 * t2065 + t2049 * t2069;
t2009 = t2042 * t2065 + t2048 * t2069;
t2008 = t2041 * t2069 + t2049 * t2065;
t1983 = -t2106 - t2108;
t1982 = -t2012 * t2065 + t2013 * t2069;
t1981 = t2012 * t2069 + t2013 * t2065;
t1975 = (qJD(3) + t2054) * t2032 - t2082;
t1974 = t2054 * t2032 + t2078;
t1967 = -t2106 - t2000;
t1961 = t2080 - t2096;
t1959 = -t2000 - t2108;
t1956 = -t2003 * qJD(5) + t2075;
t1951 = t1974 * t2065 + t2127;
t1949 = -t1974 * t2069 + t2129;
t1947 = t1961 * t2067 - t1983 * t2063;
t1946 = t1961 * t2063 + t1983 * t2067;
t1945 = t1975 * t2065 + t2127;
t1943 = -t1975 * t2069 + t2129;
t1940 = -t2001 * t2114 - t2073;
t1939 = -t2003 * t2092 + t2075;
t1938 = t2003 * t2114 - t2075;
t1937 = -t1960 * t2063 + t1967 * t2067;
t1936 = t1960 * t2067 + t1967 * t2063;
t1930 = t2087 * t2032 + t2074;
t1928 = -t1957 * t2064 + t1958 * t2068;
t1927 = t1957 * t2068 + t1958 * t2064;
t1922 = t1928 * t2069 + t1985 * t2065;
t1921 = t1928 * t2065 - t1985 * t2069;
t1918 = t1946 * t2064 + t1947 * t2068;
t1917 = -t1946 * t2068 + t1947 * t2064;
t1916 = t1939 * t2067 - t1941 * t2063;
t1915 = t1939 * t2063 + t1941 * t2067;
t1914 = t1936 * t2064 + t1937 * t2068;
t1913 = -t1936 * t2068 + t1937 * t2064;
t1912 = t1929 * t2068 + t1931 * t2064;
t1911 = t1929 * t2064 - t1931 * t2068;
t1910 = t1918 * t2069 - t1940 * t2065;
t1909 = t1918 * t2065 + t1940 * t2069;
t1908 = t1956 * pkin(5) + t2000 * qJ(6) - t2003 * t2084 - qJDD(6) + t1926;
t1907 = t1914 * t2069 - t1938 * t2065;
t1906 = t1914 * t2065 + t1938 * t2069;
t1903 = t1912 * t2069 + t1930 * t2065;
t1902 = t1912 * t2065 - t1930 * t2069;
t1901 = t1915 * t2064 + t1916 * t2068;
t1900 = -t1915 * t2068 + t1916 * t2064;
t1899 = t1910 * t2070 + t1917 * t2066;
t1898 = t1910 * t2066 - t1917 * t2070;
t1897 = t1901 * t2069 - t1959 * t2065;
t1896 = t1901 * t2065 + t1959 * t2069;
t1895 = -t2000 * pkin(5) + t1956 * qJ(6) + t2001 * t2104 - t2047 * t2084 + t1905;
t1894 = pkin(5) * t1960 + qJ(6) * t1941 + t2003 * t2104 + t1904;
t1893 = t1907 * t2070 + t1913 * t2066;
t1892 = t1907 * t2066 - t1913 * t2070;
t1891 = -t1904 * t2063 + t1905 * t2067;
t1890 = t1904 * t2067 + t1905 * t2063;
t1889 = t1897 * t2070 + t1900 * t2066;
t1888 = t1897 * t2066 - t1900 * t2070;
t1887 = -t1894 * t2063 + t1895 * t2067;
t1886 = t1894 * t2067 + t1895 * t2063;
t1885 = t1890 * t2064 + t1891 * t2068;
t1884 = -t1890 * t2068 + t1891 * t2064;
t1883 = t1885 * t2069 + t1926 * t2065;
t1882 = t1885 * t2065 - t1926 * t2069;
t1881 = t1886 * t2064 + t1887 * t2068;
t1880 = -t1886 * t2068 + t1887 * t2064;
t1879 = t1881 * t2069 + t1908 * t2065;
t1878 = t1881 * t2065 - t1908 * t2069;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2039, -t2038, 0, -t2044 * t2066 + t2045 * t2070, 0, 0, 0, 0, 0, 0, t2010 * t2070 - t2036 * t2066, t2011 * t2070 + t2034 * t2066, t2037 * t2070 - t2040 * t2066, t1982 * t2070 - t2022 * t2066, 0, 0, 0, 0, 0, 0, t1945 * t2070 + t2128, t2134, t2130, t1922 * t2070 + t1927 * t2066, 0, 0, 0, 0, 0, 0, t1951 * t2070 + t2128, t2130, -t2134, t1903 * t2070 + t1911 * t2066, 0, 0, 0, 0, 0, 0, t1893, t1899, t1889, t1883 * t2070 + t1884 * t2066, 0, 0, 0, 0, 0, 0, t1893, t1899, t1889, t1879 * t2070 + t1880 * t2066; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2038, t2039, 0, t2044 * t2070 + t2045 * t2066, 0, 0, 0, 0, 0, 0, t2010 * t2066 + t2036 * t2070, t2011 * t2066 - t2034 * t2070, t2037 * t2066 + t2040 * t2070, t1982 * t2066 + t2022 * t2070, 0, 0, 0, 0, 0, 0, t1945 * t2066 - t2126, t2135, t2131, t1922 * t2066 - t1927 * t2070, 0, 0, 0, 0, 0, 0, t1951 * t2066 - t2126, t2131, -t2135, t1903 * t2066 - t1911 * t2070, 0, 0, 0, 0, 0, 0, t1892, t1898, t1888, t1883 * t2066 - t1884 * t2070, 0, 0, 0, 0, 0, 0, t1892, t1898, t1888, t1879 * t2066 - t1880 * t2070; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2008, t2009, 0, t1981, 0, 0, 0, 0, 0, 0, t1943, t1948, t2124, t1921, 0, 0, 0, 0, 0, 0, t1949, t2124, -t1948, t1902, 0, 0, 0, 0, 0, 0, t1906, t1909, t1896, t1882, 0, 0, 0, 0, 0, 0, t1906, t1909, t1896, t1878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2071, -qJDD(1), 0, t2045, 0, 0, 0, 0, 0, 0, t2010, t2011, t2037, t1982, 0, 0, 0, 0, 0, 0, t1945, t1950, t2125, t1922, 0, 0, 0, 0, 0, 0, t1951, t2125, -t1950, t1903, 0, 0, 0, 0, 0, 0, t1907, t1910, t1897, t1883, 0, 0, 0, 0, 0, 0, t1907, t1910, t1897, t1879; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2071, 0, t2044, 0, 0, 0, 0, 0, 0, t2036, -t2034, t2040, t2022, 0, 0, 0, 0, 0, 0, -t2118, -t1968, -t2111, -t1927, 0, 0, 0, 0, 0, 0, -t2118, -t2111, t1968, -t1911, 0, 0, 0, 0, 0, 0, -t1913, -t1917, -t1900, -t1884, 0, 0, 0, 0, 0, 0, -t1913, -t1917, -t1900, -t1880; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2008, t2009, 0, t1981, 0, 0, 0, 0, 0, 0, t1943, t1948, t2124, t1921, 0, 0, 0, 0, 0, 0, t1949, t2124, -t1948, t1902, 0, 0, 0, 0, 0, 0, t1906, t1909, t1896, t1882, 0, 0, 0, 0, 0, 0, t1906, t1909, t1896, t1878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2049, t2042, t2089, t2013, 0, 0, 0, 0, 0, 0, t2117, t1970, t2110, t1928, 0, 0, 0, 0, 0, 0, t2117, t2110, -t1970, t1912, 0, 0, 0, 0, 0, 0, t1914, t1918, t1901, t1885, 0, 0, 0, 0, 0, 0, t1914, t1918, t1901, t1881; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2041, t2048, -t2090, t2012, 0, 0, 0, 0, 0, 0, -t1975, t2119, t1990, -t1985, 0, 0, 0, 0, 0, 0, -t1974, t1990, -t2119, -t1930, 0, 0, 0, 0, 0, 0, t1938, t1940, t1959, -t1926, 0, 0, 0, 0, 0, 0, t1938, t1940, t1959, -t1908; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2036, t2034, -t2040, -t2022, 0, 0, 0, 0, 0, 0, t2118, t1968, t2111, t1927, 0, 0, 0, 0, 0, 0, t2118, t2111, -t1968, t1911, 0, 0, 0, 0, 0, 0, t1913, t1917, t1900, t1884, 0, 0, 0, 0, 0, 0, t1913, t1917, t1900, t1880; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2112, t1991, t2077, t1958, 0, 0, 0, 0, 0, 0, t2112, t2077, -t1991, t1929, 0, 0, 0, 0, 0, 0, t1937, t1947, t1916, t1891, 0, 0, 0, 0, 0, 0, t1937, t1947, t1916, t1887; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1992, t2113, -t1980, t1957, 0, 0, 0, 0, 0, 0, -t1992, -t1980, -t2113, -t1931, 0, 0, 0, 0, 0, 0, -t1936, -t1946, -t1915, -t1890, 0, 0, 0, 0, 0, 0, -t1936, -t1946, -t1915, -t1886; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1975, -t2119, -t1990, t1985, 0, 0, 0, 0, 0, 0, t1974, -t1990, t2119, t1930, 0, 0, 0, 0, 0, 0, -t1938, -t1940, -t1959, t1926, 0, 0, 0, 0, 0, 0, -t1938, -t1940, -t1959, t1908; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2112, t2077, -t1991, t1929, 0, 0, 0, 0, 0, 0, t1937, t1947, t1916, t1891, 0, 0, 0, 0, 0, 0, t1937, t1947, t1916, t1887; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1974, -t1990, t2119, t1930, 0, 0, 0, 0, 0, 0, -t1938, -t1940, -t1959, t1926, 0, 0, 0, 0, 0, 0, -t1938, -t1940, -t1959, t1908; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1992, t1980, t2113, t1931, 0, 0, 0, 0, 0, 0, t1936, t1946, t1915, t1890, 0, 0, 0, 0, 0, 0, t1936, t1946, t1915, t1886; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1967, t1961, t1939, t1905, 0, 0, 0, 0, 0, 0, t1967, t1961, t1939, t1895; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1960, t1983, t1941, t1904, 0, 0, 0, 0, 0, 0, t1960, t1983, t1941, t1894; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1938, t1940, t1959, -t1926, 0, 0, 0, 0, 0, 0, t1938, t1940, t1959, -t1908; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1967, t1961, t1939, t1895; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1960, t1983, t1941, t1894; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1938, t1940, t1959, -t1908;];
f_new_reg  = t1;
