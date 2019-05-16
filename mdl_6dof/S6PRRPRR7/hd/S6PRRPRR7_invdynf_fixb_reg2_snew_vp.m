% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRRPRR7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 06:06
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRRPRR7_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR7_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR7_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRR7_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRR7_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRR7_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 06:06:32
% EndTime: 2019-05-05 06:06:39
% DurationCPUTime: 7.32s
% Computational Cost: add. (25225->306), mult. (50971->401), div. (0->0), fcn. (34141->12), ass. (0->231)
t2071 = sin(qJ(3));
t2075 = cos(qJ(3));
t2078 = qJD(2) ^ 2;
t2128 = t2075 * t2078;
t2051 = t2071 * t2128;
t2041 = qJDD(3) + t2051;
t2077 = qJD(3) ^ 2;
t2061 = t2075 ^ 2;
t2130 = t2061 * t2078;
t2048 = -t2077 - t2130;
t2005 = t2041 * t2075 + t2048 * t2071;
t2065 = sin(pkin(6));
t2067 = cos(pkin(6));
t2010 = t2041 * t2071 - t2048 * t2075;
t2138 = qJD(2) * t2071;
t2056 = qJD(3) * t2138;
t2121 = t2075 * qJDD(2);
t2035 = -0.2e1 * t2056 + t2121;
t2072 = sin(qJ(2));
t2076 = cos(qJ(2));
t2093 = t2010 * t2072 - t2035 * t2076;
t1968 = t2065 * t2005 + t2067 * t2093;
t1986 = t2010 * t2076 + t2035 * t2072;
t2064 = sin(pkin(11));
t2066 = cos(pkin(11));
t2159 = t1968 * t2064 - t1986 * t2066;
t2158 = t1968 * t2066 + t1986 * t2064;
t2042 = qJDD(3) - t2051;
t2060 = t2071 ^ 2;
t2047 = -t2060 * t2078 - t2077;
t2007 = t2042 * t2071 - t2047 * t2075;
t2011 = t2042 * t2075 + t2047 * t2071;
t2137 = qJD(2) * t2075;
t2120 = qJD(3) * t2137;
t2122 = t2071 * qJDD(2);
t2033 = 0.2e1 * t2120 + t2122;
t2092 = t2011 * t2072 + t2033 * t2076;
t1969 = -t2065 * t2007 + t2067 * t2092;
t1987 = t2011 * t2076 - t2033 * t2072;
t2157 = t1969 * t2064 - t1987 * t2066;
t2156 = t1969 * t2066 + t1987 * t2064;
t1965 = t2067 * t2007 + t2065 * t2092;
t1964 = -t2067 * t2005 + t2065 * t2093;
t2113 = g(1) * t2064 - g(2) * t2066;
t2139 = -g(3) + qJDD(1);
t2147 = t2065 * t2139 + t2067 * t2113;
t2074 = cos(qJ(5));
t2140 = sin(qJ(5));
t2029 = qJD(3) * t2140 + t2074 * t2137;
t2031 = qJD(3) * t2074 - t2137 * t2140;
t2070 = sin(qJ(6));
t2073 = cos(qJ(6));
t2000 = t2029 * t2073 + t2031 * t2070;
t2146 = t2000 ^ 2;
t2002 = -t2029 * t2070 + t2031 * t2073;
t2145 = t2002 ^ 2;
t2025 = t2029 ^ 2;
t2144 = t2031 ^ 2;
t2052 = qJD(5) + t2138;
t2046 = qJD(6) + t2052;
t2143 = t2046 ^ 2;
t2142 = t2052 ^ 2;
t2141 = 2 * qJD(4);
t2136 = t2000 * t2002;
t2135 = t2029 * t2031;
t2015 = -t2065 * t2113 + t2067 * t2139;
t2129 = t2071 * t2015;
t2127 = qJD(5) - t2052;
t2126 = qJD(5) + t2052;
t2125 = qJD(6) - t2046;
t2124 = qJD(6) + t2046;
t2013 = t2075 * t2015;
t2114 = -qJDD(3) * pkin(3) - qJ(4) * t2077 + qJDD(4) - t2013;
t2040 = -g(1) * t2066 - g(2) * t2064;
t1993 = t2076 * t2040 + t2072 * t2147;
t1984 = -pkin(2) * t2078 + qJDD(2) * pkin(8) + t1993;
t2116 = t2078 * (-pkin(3) * t2075 - qJ(4) * t2071) + t1984;
t1947 = -qJDD(3) * pkin(9) + (pkin(4) * qJDD(2) - pkin(9) * t2128 + t2116) * t2071 + t2114;
t2034 = -t2056 + t2121;
t2045 = pkin(4) * t2138 - qJD(3) * pkin(9);
t2111 = t2072 * t2040 - t2076 * t2147;
t1983 = -qJDD(2) * pkin(2) - pkin(8) * t2078 + t2111;
t2085 = t2120 + t2122;
t2082 = -t2034 * pkin(3) + t1983 + (-t2085 - t2120) * qJ(4);
t2118 = pkin(3) * qJD(3) - (2 * qJD(4));
t1949 = -pkin(4) * t2130 - t2034 * pkin(9) + (-t2045 + t2118) * t2138 + t2082;
t1922 = t1947 * t2140 + t1949 * t2074;
t2123 = t2060 + t2061;
t2119 = -t2142 - t2144;
t2112 = -qJDD(3) * t2140 - t2034 * t2074;
t1995 = -qJD(5) * t2031 + t2112;
t2086 = t2074 * qJDD(3) - t2034 * t2140;
t1996 = -qJD(5) * t2029 + t2086;
t2115 = t1995 * t2073 - t2070 * t1996;
t2084 = qJDD(5) + t2085;
t2081 = t2084 - t2135;
t2087 = t2074 * t1947 - t1949 * t2140;
t1911 = (-t2029 * t2052 - t1996) * pkin(10) + t2081 * pkin(5) + t2087;
t2014 = pkin(5) * t2052 - pkin(10) * t2031;
t1912 = -pkin(5) * t2025 + pkin(10) * t1995 - t2014 * t2052 + t1922;
t1889 = t1911 * t2073 - t1912 * t2070;
t1890 = t1911 * t2070 + t1912 * t2073;
t1878 = -t1889 * t2070 + t1890 * t2073;
t2108 = t1889 * t2073 + t1890 * t2070;
t1871 = t1878 * t2140 + t2074 * t2108;
t2079 = -pkin(3) * t2077 + qJDD(3) * qJ(4) + t2075 * t2116 + t2129;
t1946 = t2034 * pkin(4) - pkin(9) * t2130 + (t2141 + t2045) * qJD(3) + t2079;
t1925 = -t1995 * pkin(5) - t2025 * pkin(10) + t2031 * t2014 + t1946;
t1870 = t1871 * t2071 + t1925 * t2075;
t1872 = t1878 * t2074 - t2108 * t2140;
t2110 = t1870 * t2072 - t1872 * t2076;
t1934 = -t2002 * t2125 + t2115;
t2095 = -t2070 * t1995 - t2073 * t1996;
t1936 = t2000 * t2125 + t2095;
t1916 = t1934 * t2073 - t1936 * t2070;
t2102 = t1934 * t2070 + t1936 * t2073;
t1893 = t1916 * t2140 + t2074 * t2102;
t1955 = -t2145 - t2146;
t1887 = t1893 * t2071 + t1955 * t2075;
t1894 = t1916 * t2074 - t2102 * t2140;
t2109 = t1887 * t2072 - t1894 * t2076;
t1895 = t1922 * t2140 + t2074 * t2087;
t1892 = t1895 * t2071 + t1946 * t2075;
t1896 = t1922 * t2074 - t2087 * t2140;
t2107 = t1892 * t2072 - t1896 * t2076;
t2083 = -qJDD(6) - t2084;
t1959 = -t2083 - t2136;
t1971 = -t2143 - t2146;
t1932 = -t1959 * t2070 + t1971 * t2073;
t2098 = t1959 * t2073 + t1971 * t2070;
t1913 = t1932 * t2140 + t2074 * t2098;
t1933 = t2002 * t2124 - t2115;
t1900 = t1913 * t2071 + t1933 * t2075;
t1914 = t1932 * t2074 - t2098 * t2140;
t2106 = t1900 * t2072 - t1914 * t2076;
t1960 = t2083 - t2136;
t1982 = -t2143 - t2145;
t1942 = t1960 * t2073 - t1982 * t2070;
t2097 = t1960 * t2070 + t1982 * t2073;
t1919 = t1942 * t2140 + t2074 * t2097;
t1935 = -t2000 * t2124 - t2095;
t1904 = t1919 * t2071 + t1935 * t2075;
t1920 = t1942 * t2074 - t2097 * t2140;
t2105 = t1904 * t2072 - t1920 * t2076;
t1954 = qJD(3) * t2141 + t2079;
t1956 = t2071 * t2116 + t2114;
t1928 = t1954 * t2075 + t1956 * t2071;
t1957 = t2118 * t2138 + t2082;
t2104 = t1928 * t2072 - t1957 * t2076;
t1980 = -t2031 * t2127 + t2112;
t2080 = t2029 * t2127 - t2086;
t1950 = t1980 * t2140 + t2074 * t2080;
t1990 = -t2025 - t2144;
t1931 = t1950 * t2071 + t1990 * t2075;
t1951 = t1980 * t2074 - t2080 * t2140;
t2103 = t1931 * t2072 - t1951 * t2076;
t1974 = -t2071 * t1984 + t2013;
t1975 = t2075 * t1984 + t2129;
t1938 = -t1974 * t2071 + t1975 * t2075;
t2101 = t1938 * t2072 - t1983 * t2076;
t1997 = -t2142 - t2025;
t1961 = t1997 * t2140 + t2074 * t2081;
t1979 = t2031 * t2126 - t2112;
t1940 = t1961 * t2071 + t1979 * t2075;
t1962 = t1997 * t2074 - t2081 * t2140;
t2100 = t1940 * t2072 - t1962 * t2076;
t1991 = -t2084 - t2135;
t1972 = t1991 * t2140 + t2074 * t2119;
t1981 = -t2029 * t2126 + t2086;
t1944 = t1972 * t2071 + t1981 * t2075;
t1973 = t1991 * t2074 - t2119 * t2140;
t2099 = t1944 * t2072 - t1973 * t2076;
t2096 = t1993 * t2072 - t2076 * t2111;
t2036 = t2123 * qJDD(2);
t2039 = t2123 * t2078;
t2090 = t2036 * t2072 + t2039 * t2076;
t2089 = qJDD(2) * t2076 - t2072 * t2078;
t2038 = -qJDD(2) * t2072 - t2076 * t2078;
t2019 = t2089 * t2067;
t2018 = t2038 * t2067;
t2017 = t2089 * t2065;
t2016 = t2038 * t2065;
t2004 = t2036 * t2076 - t2039 * t2072;
t1999 = t2090 * t2067;
t1998 = t2090 * t2065;
t1977 = -t1999 * t2064 + t2004 * t2066;
t1976 = t1999 * t2066 + t2004 * t2064;
t1958 = t1993 * t2076 + t2072 * t2111;
t1953 = -t2065 * t2015 + t2067 * t2096;
t1952 = t2067 * t2015 + t2065 * t2096;
t1943 = -t1972 * t2075 + t1981 * t2071;
t1939 = -t1961 * t2075 + t1979 * t2071;
t1937 = t1974 * t2075 + t1975 * t2071;
t1930 = -t1950 * t2075 + t1990 * t2071;
t1927 = t1954 * t2071 - t1956 * t2075;
t1926 = t1938 * t2076 + t1983 * t2072;
t1924 = t1944 * t2076 + t1973 * t2072;
t1923 = t1940 * t2076 + t1962 * t2072;
t1918 = t1931 * t2076 + t1951 * t2072;
t1917 = t1928 * t2076 + t1957 * t2072;
t1910 = -t2065 * t1943 + t2067 * t2099;
t1909 = t2067 * t1943 + t2065 * t2099;
t1908 = -t2065 * t1937 + t2067 * t2101;
t1907 = t2067 * t1937 + t2065 * t2101;
t1906 = -t2065 * t1939 + t2067 * t2100;
t1905 = t2067 * t1939 + t2065 * t2100;
t1903 = -t1919 * t2075 + t1935 * t2071;
t1902 = -t2065 * t1930 + t2067 * t2103;
t1901 = t2067 * t1930 + t2065 * t2103;
t1899 = -t1913 * t2075 + t1933 * t2071;
t1898 = -t2065 * t1927 + t2067 * t2104;
t1897 = t2067 * t1927 + t2065 * t2104;
t1891 = -t1895 * t2075 + t1946 * t2071;
t1888 = t1904 * t2076 + t1920 * t2072;
t1886 = -t1893 * t2075 + t1955 * t2071;
t1885 = t1900 * t2076 + t1914 * t2072;
t1884 = -t2065 * t1903 + t2067 * t2105;
t1883 = t2067 * t1903 + t2065 * t2105;
t1882 = t1892 * t2076 + t1896 * t2072;
t1881 = -t2065 * t1899 + t2067 * t2106;
t1880 = t2067 * t1899 + t2065 * t2106;
t1879 = t1887 * t2076 + t1894 * t2072;
t1876 = -t2065 * t1891 + t2067 * t2107;
t1875 = t2067 * t1891 + t2065 * t2107;
t1874 = -t2065 * t1886 + t2067 * t2109;
t1873 = t2067 * t1886 + t2065 * t2109;
t1869 = -t1871 * t2075 + t1925 * t2071;
t1868 = t1870 * t2076 + t1872 * t2072;
t1867 = -t2065 * t1869 + t2067 * t2110;
t1866 = t2067 * t1869 + t2065 * t2110;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2066 * t2040 - t2064 * t2113, 0, 0, 0, 0, 0, 0, -t2019 * t2064 + t2038 * t2066, -t2018 * t2064 - t2066 * t2089, 0, -t1953 * t2064 + t1958 * t2066, 0, 0, 0, 0, 0, 0, t2159, t2157, t1977, -t1908 * t2064 + t1926 * t2066, 0, 0, 0, 0, 0, 0, t1977, -t2159, -t2157, -t1898 * t2064 + t1917 * t2066, 0, 0, 0, 0, 0, 0, -t1906 * t2064 + t1923 * t2066, -t1910 * t2064 + t1924 * t2066, -t1902 * t2064 + t1918 * t2066, -t1876 * t2064 + t1882 * t2066, 0, 0, 0, 0, 0, 0, -t1881 * t2064 + t1885 * t2066, -t1884 * t2064 + t1888 * t2066, -t1874 * t2064 + t1879 * t2066, -t1867 * t2064 + t1868 * t2066; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2064 * t2040 + t2066 * t2113, 0, 0, 0, 0, 0, 0, t2019 * t2066 + t2038 * t2064, t2018 * t2066 - t2064 * t2089, 0, t1953 * t2066 + t1958 * t2064, 0, 0, 0, 0, 0, 0, -t2158, -t2156, t1976, t1908 * t2066 + t1926 * t2064, 0, 0, 0, 0, 0, 0, t1976, t2158, t2156, t1898 * t2066 + t1917 * t2064, 0, 0, 0, 0, 0, 0, t1906 * t2066 + t1923 * t2064, t1910 * t2066 + t1924 * t2064, t1902 * t2066 + t1918 * t2064, t1876 * t2066 + t1882 * t2064, 0, 0, 0, 0, 0, 0, t1881 * t2066 + t1885 * t2064, t1884 * t2066 + t1888 * t2064, t1874 * t2066 + t1879 * t2064, t1867 * t2066 + t1868 * t2064; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2139, 0, 0, 0, 0, 0, 0, t2017, t2016, 0, t1952, 0, 0, 0, 0, 0, 0, -t1964, -t1965, t1998, t1907, 0, 0, 0, 0, 0, 0, t1998, t1964, t1965, t1897, 0, 0, 0, 0, 0, 0, t1905, t1909, t1901, t1875, 0, 0, 0, 0, 0, 0, t1880, t1883, t1873, t1866; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2040, 0, 0, 0, 0, 0, 0, t2038, -t2089, 0, t1958, 0, 0, 0, 0, 0, 0, -t1986, -t1987, t2004, t1926, 0, 0, 0, 0, 0, 0, t2004, t1986, t1987, t1917, 0, 0, 0, 0, 0, 0, t1923, t1924, t1918, t1882, 0, 0, 0, 0, 0, 0, t1885, t1888, t1879, t1868; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2113, 0, 0, 0, 0, 0, 0, t2019, t2018, 0, t1953, 0, 0, 0, 0, 0, 0, -t1968, -t1969, t1999, t1908, 0, 0, 0, 0, 0, 0, t1999, t1968, t1969, t1898, 0, 0, 0, 0, 0, 0, t1906, t1910, t1902, t1876, 0, 0, 0, 0, 0, 0, t1881, t1884, t1874, t1867; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2139, 0, 0, 0, 0, 0, 0, t2017, t2016, 0, t1952, 0, 0, 0, 0, 0, 0, -t1964, -t1965, t1998, t1907, 0, 0, 0, 0, 0, 0, t1998, t1964, t1965, t1897, 0, 0, 0, 0, 0, 0, t1905, t1909, t1901, t1875, 0, 0, 0, 0, 0, 0, t1880, t1883, t1873, t1866; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2078, -qJDD(2), 0, t1993, 0, 0, 0, 0, 0, 0, -t2010, -t2011, t2036, t1938, 0, 0, 0, 0, 0, 0, t2036, t2010, t2011, t1928, 0, 0, 0, 0, 0, 0, t1940, t1944, t1931, t1892, 0, 0, 0, 0, 0, 0, t1900, t1904, t1887, t1870; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2078, 0, -t2111, 0, 0, 0, 0, 0, 0, t2035, -t2033, t2039, -t1983, 0, 0, 0, 0, 0, 0, t2039, -t2035, t2033, -t1957, 0, 0, 0, 0, 0, 0, -t1962, -t1973, -t1951, -t1896, 0, 0, 0, 0, 0, 0, -t1914, -t1920, -t1894, -t1872; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2015, 0, 0, 0, 0, 0, 0, t2005, -t2007, 0, t1937, 0, 0, 0, 0, 0, 0, 0, -t2005, t2007, t1927, 0, 0, 0, 0, 0, 0, t1939, t1943, t1930, t1891, 0, 0, 0, 0, 0, 0, t1899, t1903, t1886, t1869; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2048, -t2042, t2121, t1975, 0, 0, 0, 0, 0, 0, t2121, -t2048, t2042, t1954, 0, 0, 0, 0, 0, 0, t1979, t1981, t1990, t1946, 0, 0, 0, 0, 0, 0, t1933, t1935, t1955, t1925; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2041, t2047, -t2122, t1974, 0, 0, 0, 0, 0, 0, -t2122, -t2041, -t2047, -t1956, 0, 0, 0, 0, 0, 0, -t1961, -t1972, -t1950, -t1895, 0, 0, 0, 0, 0, 0, -t1913, -t1919, -t1893, -t1871; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2035, t2033, -t2039, t1983, 0, 0, 0, 0, 0, 0, -t2039, t2035, -t2033, t1957, 0, 0, 0, 0, 0, 0, t1962, t1973, t1951, t1896, 0, 0, 0, 0, 0, 0, t1914, t1920, t1894, t1872; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2039, t2035, -t2033, t1957, 0, 0, 0, 0, 0, 0, t1962, t1973, t1951, t1896, 0, 0, 0, 0, 0, 0, t1914, t1920, t1894, t1872; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2121, t2048, -t2042, -t1954, 0, 0, 0, 0, 0, 0, -t1979, -t1981, -t1990, -t1946, 0, 0, 0, 0, 0, 0, -t1933, -t1935, -t1955, -t1925; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2122, t2041, t2047, t1956, 0, 0, 0, 0, 0, 0, t1961, t1972, t1950, t1895, 0, 0, 0, 0, 0, 0, t1913, t1919, t1893, t1871; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1997, t1991, t1980, t1922, 0, 0, 0, 0, 0, 0, t1932, t1942, t1916, t1878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2081, t2119, t2080, t2087, 0, 0, 0, 0, 0, 0, t2098, t2097, t2102, t2108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1979, t1981, t1990, t1946, 0, 0, 0, 0, 0, 0, t1933, t1935, t1955, t1925; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1971, t1960, t1934, t1890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1959, t1982, t1936, t1889; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1933, t1935, t1955, t1925;];
f_new_reg  = t1;
