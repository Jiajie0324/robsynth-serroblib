% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPRRRP6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 01:38
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPRRRP6_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP6_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP6_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRP6_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP6_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP6_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 01:38:16
% EndTime: 2019-05-06 01:38:22
% DurationCPUTime: 6.61s
% Computational Cost: add. (42808->281), mult. (102019->374), div. (0->0), fcn. (79126->10), ass. (0->211)
t1984 = qJD(1) ^ 2;
t1979 = sin(qJ(1));
t1983 = cos(qJ(1));
t1958 = t1979 * g(1) - g(2) * t1983;
t1994 = -qJDD(2) + t1958;
t1974 = cos(pkin(10));
t2000 = pkin(2) * t1974 + pkin(1);
t1973 = sin(pkin(10));
t1970 = t1973 ^ 2;
t1971 = t1974 ^ 2;
t2003 = t1970 + t1971;
t1928 = t2000 * qJDD(1) + (pkin(7) * t2003 + qJ(2)) * t1984 + t1994;
t1955 = t2003 * t1984;
t1978 = sin(qJ(3));
t1982 = cos(qJ(3));
t1949 = (t1973 * t1978 - t1974 * t1982) * qJD(1);
t1946 = qJD(4) + t1949;
t1942 = qJD(5) + t1946;
t2027 = qJD(5) + t1942;
t2024 = qJD(3) ^ 2;
t1951 = (t1973 * t1982 + t1974 * t1978) * qJD(1);
t1977 = sin(qJ(4));
t1981 = cos(qJ(4));
t1938 = -qJD(3) * t1981 + t1951 * t1977;
t1939 = qJD(3) * t1977 + t1951 * t1981;
t1976 = sin(qJ(5));
t1980 = cos(qJ(5));
t1915 = t1938 * t1980 + t1939 * t1976;
t2023 = t1915 ^ 2;
t1917 = -t1938 * t1976 + t1939 * t1980;
t2022 = t1917 ^ 2;
t2021 = t1938 ^ 2;
t2020 = t1939 ^ 2;
t2019 = t1942 ^ 2;
t2018 = t1946 ^ 2;
t2017 = t1949 ^ 2;
t2016 = t1951 ^ 2;
t2015 = -2 * qJD(6);
t2014 = t1974 * g(3);
t2013 = qJD(2) * qJD(1);
t2012 = t1915 * t1917;
t2011 = t1938 * t1939;
t2010 = t1946 * t1938;
t2009 = t1949 * qJD(3);
t2008 = t1949 * t1951;
t1945 = t1951 * qJD(3);
t2007 = t1971 * t1984;
t2006 = qJD(4) - t1946;
t1995 = t1983 * g(1) + t1979 * g(2);
t1989 = -t1984 * pkin(1) + qJDD(1) * qJ(2) - t1995;
t1935 = -g(3) * t1973 + (t1989 + 0.2e1 * t2013) * t1974;
t1967 = t1974 * qJDD(1);
t1924 = -pkin(2) * t2007 + pkin(7) * t1967 + t1935;
t2001 = -0.2e1 * t2013;
t1987 = -t2014 + (t2001 + t2000 * t1984 + (-pkin(7) - qJ(2)) * qJDD(1) + t1995) * t1973;
t1895 = t1924 * t1982 + t1978 * t1987;
t1926 = pkin(3) * t1949 - pkin(8) * t1951;
t1880 = -pkin(3) * t2024 + qJDD(3) * pkin(8) - t1926 * t1949 + t1895;
t2002 = t1973 * qJDD(1);
t1948 = -t1967 * t1978 - t1982 * t2002;
t1932 = -t1948 - t2009;
t2004 = -t1967 * t1982 + t1978 * t2002;
t1999 = -t1945 - t2004;
t1885 = (-t1932 + t2009) * pkin(8) + (-t1999 + t1945) * pkin(3) - t1928;
t1850 = -t1977 * t1880 + t1885 * t1981;
t1996 = -qJDD(4) + t1999;
t1896 = -t1996 - t2011;
t1993 = -t1977 * qJDD(3) - t1981 * t1932;
t1907 = -qJD(4) * t1938 - t1993;
t1842 = (-t1907 - t2010) * pkin(9) + t1896 * pkin(4) + t1850;
t1851 = t1880 * t1981 + t1885 * t1977;
t1923 = pkin(4) * t1946 - pkin(9) * t1939;
t1997 = -qJDD(3) * t1981 + t1977 * t1932;
t1991 = -qJD(4) * t1939 - t1997;
t1844 = -pkin(4) * t2021 + pkin(9) * t1991 - t1923 * t1946 + t1851;
t1818 = t1842 * t1976 + t1844 * t1980;
t2005 = -t1942 + qJD(5);
t1817 = t1842 * t1980 - t1976 * t1844;
t1998 = t1976 * t1907 - t1980 * t1991;
t1894 = -t1924 * t1978 + t1982 * t1987;
t1992 = -qJDD(5) + t1996;
t1990 = -qJD(5) * t1917 - t1998;
t1881 = -t1992 - t2012;
t1879 = -qJDD(3) * pkin(3) - pkin(8) * t2024 + t1926 * t1951 - t1894;
t1988 = -t1980 * t1907 - t1976 * t1991;
t1847 = -pkin(4) * t1991 - pkin(9) * t2021 + t1923 * t1939 + t1879;
t1857 = t1915 * t2005 + t1988;
t1960 = t1973 * t1984 * t1974;
t1957 = -qJDD(1) * t1979 - t1983 * t1984;
t1956 = qJDD(1) * t1983 - t1979 * t1984;
t1954 = t2003 * qJDD(1);
t1953 = t1974 * t1955;
t1952 = t1973 * t1955;
t1947 = qJDD(1) * pkin(1) + t1984 * qJ(2) + t1994;
t1940 = -t2016 - t2024;
t1934 = -t2014 + (-t1989 + t2001) * t1973;
t1933 = t1948 + 0.2e1 * t2009;
t1931 = 0.2e1 * t1945 + t2004;
t1930 = -qJDD(3) - t2008;
t1929 = qJDD(3) - t2008;
t1927 = -t2017 - t2024;
t1919 = -t2016 - t2017;
t1918 = t1999 + t1945;
t1913 = -t2018 - t2020;
t1912 = t1930 * t1982 - t1940 * t1978;
t1911 = t1930 * t1978 + t1940 * t1982;
t1910 = -t2018 - t2021;
t1909 = -t1934 * t1973 + t1935 * t1974;
t1908 = t1934 * t1974 + t1935 * t1973;
t1903 = -t2020 - t2021;
t1902 = t1918 * t1982 - t1948 * t1978;
t1901 = t1918 * t1978 + t1948 * t1982;
t1900 = t1927 * t1982 - t1929 * t1978;
t1899 = t1927 * t1978 + t1929 * t1982;
t1898 = pkin(5) * t1942 - qJ(6) * t1917;
t1897 = t1996 - t2011;
t1893 = -t2019 - t2022;
t1892 = t1938 * t2006 + t1993;
t1891 = t1907 - t2010;
t1890 = -t1939 * t2006 - t1997;
t1889 = (qJD(4) + t1946) * t1939 + t1997;
t1888 = -t1911 * t1973 + t1912 * t1974;
t1887 = t1911 * t1974 + t1912 * t1973;
t1886 = -t2019 - t2023;
t1882 = t1992 - t2012;
t1878 = t1897 * t1981 - t1913 * t1977;
t1877 = t1897 * t1977 + t1913 * t1981;
t1875 = -t1901 * t1973 + t1902 * t1974;
t1874 = t1901 * t1974 + t1902 * t1973;
t1873 = -t1896 * t1977 + t1910 * t1981;
t1872 = t1896 * t1981 + t1910 * t1977;
t1871 = -t1899 * t1973 + t1900 * t1974;
t1870 = t1899 * t1974 + t1900 * t1973;
t1869 = -t2022 - t2023;
t1868 = -t1894 * t1978 + t1895 * t1982;
t1867 = t1894 * t1982 + t1895 * t1978;
t1865 = t1890 * t1981 - t1892 * t1977;
t1864 = t1890 * t1977 + t1892 * t1981;
t1863 = t1882 * t1980 - t1893 * t1976;
t1862 = t1882 * t1976 + t1893 * t1980;
t1861 = t1878 * t1982 + t1891 * t1978;
t1860 = t1878 * t1978 - t1891 * t1982;
t1859 = t1873 * t1982 + t1889 * t1978;
t1858 = t1873 * t1978 - t1889 * t1982;
t1856 = -t1915 * t2027 - t1988;
t1855 = -t1917 * t2005 - t1998;
t1854 = t1917 * t2027 + t1998;
t1853 = -t1881 * t1976 + t1886 * t1980;
t1852 = t1881 * t1980 + t1886 * t1976;
t1849 = t1865 * t1982 + t1903 * t1978;
t1848 = t1865 * t1978 - t1903 * t1982;
t1846 = -t1867 * t1973 + t1868 * t1974;
t1845 = t1867 * t1974 + t1868 * t1973;
t1839 = -t1862 * t1977 + t1863 * t1981;
t1838 = t1862 * t1981 + t1863 * t1977;
t1837 = -t1860 * t1973 + t1861 * t1974;
t1836 = t1860 * t1974 + t1861 * t1973;
t1835 = t1855 * t1980 - t1857 * t1976;
t1834 = t1855 * t1976 + t1857 * t1980;
t1833 = -t1858 * t1973 + t1859 * t1974;
t1832 = t1858 * t1974 + t1859 * t1973;
t1831 = -t1852 * t1977 + t1853 * t1981;
t1830 = t1852 * t1981 + t1853 * t1977;
t1829 = -t1850 * t1977 + t1851 * t1981;
t1828 = t1850 * t1981 + t1851 * t1977;
t1827 = -t1848 * t1973 + t1849 * t1974;
t1826 = t1848 * t1974 + t1849 * t1973;
t1825 = -pkin(5) * t1990 - qJ(6) * t2023 + t1898 * t1917 + qJDD(6) + t1847;
t1824 = t1829 * t1982 + t1879 * t1978;
t1823 = t1829 * t1978 - t1879 * t1982;
t1822 = t1839 * t1982 + t1856 * t1978;
t1821 = t1839 * t1978 - t1856 * t1982;
t1820 = t1831 * t1982 + t1854 * t1978;
t1819 = t1831 * t1978 - t1854 * t1982;
t1816 = -t1834 * t1977 + t1835 * t1981;
t1815 = t1834 * t1981 + t1835 * t1977;
t1814 = t1816 * t1982 + t1869 * t1978;
t1813 = t1816 * t1978 - t1869 * t1982;
t1812 = -t1942 * t1898 + t1990 * qJ(6) + (-pkin(5) * t1915 + t2015) * t1915 + t1818;
t1811 = pkin(5) * t1881 + qJ(6) * t1857 + t1917 * t2015 + t1817;
t1810 = -t1823 * t1973 + t1824 * t1974;
t1809 = t1823 * t1974 + t1824 * t1973;
t1808 = -t1821 * t1973 + t1822 * t1974;
t1807 = t1821 * t1974 + t1822 * t1973;
t1806 = -t1819 * t1973 + t1820 * t1974;
t1805 = t1819 * t1974 + t1820 * t1973;
t1804 = -t1817 * t1976 + t1818 * t1980;
t1803 = t1817 * t1980 + t1818 * t1976;
t1802 = t1808 * t1983 + t1838 * t1979;
t1801 = t1808 * t1979 - t1838 * t1983;
t1800 = t1806 * t1983 + t1830 * t1979;
t1799 = t1806 * t1979 - t1830 * t1983;
t1798 = -t1813 * t1973 + t1814 * t1974;
t1797 = t1813 * t1974 + t1814 * t1973;
t1796 = -t1811 * t1976 + t1812 * t1980;
t1795 = t1811 * t1980 + t1812 * t1976;
t1794 = t1798 * t1983 + t1815 * t1979;
t1793 = t1798 * t1979 - t1815 * t1983;
t1792 = -t1803 * t1977 + t1804 * t1981;
t1791 = t1803 * t1981 + t1804 * t1977;
t1790 = t1792 * t1982 + t1847 * t1978;
t1789 = t1792 * t1978 - t1847 * t1982;
t1788 = -t1795 * t1977 + t1796 * t1981;
t1787 = t1795 * t1981 + t1796 * t1977;
t1786 = t1788 * t1982 + t1825 * t1978;
t1785 = t1788 * t1978 - t1825 * t1982;
t1784 = -t1789 * t1973 + t1790 * t1974;
t1783 = t1789 * t1974 + t1790 * t1973;
t1782 = -t1785 * t1973 + t1786 * t1974;
t1781 = t1785 * t1974 + t1786 * t1973;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1957, -t1956, 0, -t1958 * t1979 - t1983 * t1995, 0, 0, 0, 0, 0, 0, -t1953 * t1983 - t1967 * t1979, t1952 * t1983 + t1979 * t2002, t1954 * t1983 - t1955 * t1979, t1909 * t1983 - t1947 * t1979, 0, 0, 0, 0, 0, 0, t1871 * t1983 + t1931 * t1979, t1888 * t1983 - t1933 * t1979, t1875 * t1983 + t1919 * t1979, t1846 * t1983 - t1928 * t1979, 0, 0, 0, 0, 0, 0, t1833 * t1983 + t1872 * t1979, t1837 * t1983 + t1877 * t1979, t1827 * t1983 + t1864 * t1979, t1810 * t1983 + t1828 * t1979, 0, 0, 0, 0, 0, 0, t1800, t1802, t1794, t1784 * t1983 + t1791 * t1979, 0, 0, 0, 0, 0, 0, t1800, t1802, t1794, t1782 * t1983 + t1787 * t1979; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1956, t1957, 0, t1958 * t1983 - t1979 * t1995, 0, 0, 0, 0, 0, 0, -t1953 * t1979 + t1967 * t1983, t1952 * t1979 - t1983 * t2002, t1954 * t1979 + t1955 * t1983, t1909 * t1979 + t1947 * t1983, 0, 0, 0, 0, 0, 0, t1871 * t1979 - t1931 * t1983, t1888 * t1979 + t1933 * t1983, t1875 * t1979 - t1919 * t1983, t1846 * t1979 + t1928 * t1983, 0, 0, 0, 0, 0, 0, t1833 * t1979 - t1872 * t1983, t1837 * t1979 - t1877 * t1983, t1827 * t1979 - t1864 * t1983, t1810 * t1979 - t1828 * t1983, 0, 0, 0, 0, 0, 0, t1799, t1801, t1793, t1784 * t1979 - t1791 * t1983, 0, 0, 0, 0, 0, 0, t1799, t1801, t1793, t1782 * t1979 - t1787 * t1983; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1908, 0, 0, 0, 0, 0, 0, t1870, t1887, t1874, t1845, 0, 0, 0, 0, 0, 0, t1832, t1836, t1826, t1809, 0, 0, 0, 0, 0, 0, t1805, t1807, t1797, t1783, 0, 0, 0, 0, 0, 0, t1805, t1807, t1797, t1781; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1984, -qJDD(1), 0, -t1995, 0, 0, 0, 0, 0, 0, -t1953, t1952, t1954, t1909, 0, 0, 0, 0, 0, 0, t1871, t1888, t1875, t1846, 0, 0, 0, 0, 0, 0, t1833, t1837, t1827, t1810, 0, 0, 0, 0, 0, 0, t1806, t1808, t1798, t1784, 0, 0, 0, 0, 0, 0, t1806, t1808, t1798, t1782; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1984, 0, t1958, 0, 0, 0, 0, 0, 0, t1967, -t2002, t1955, t1947, 0, 0, 0, 0, 0, 0, -t1931, t1933, -t1919, t1928, 0, 0, 0, 0, 0, 0, -t1872, -t1877, -t1864, -t1828, 0, 0, 0, 0, 0, 0, -t1830, -t1838, -t1815, -t1791, 0, 0, 0, 0, 0, 0, -t1830, -t1838, -t1815, -t1787; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1908, 0, 0, 0, 0, 0, 0, t1870, t1887, t1874, t1845, 0, 0, 0, 0, 0, 0, t1832, t1836, t1826, t1809, 0, 0, 0, 0, 0, 0, t1805, t1807, t1797, t1783, 0, 0, 0, 0, 0, 0, t1805, t1807, t1797, t1781; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2007, t1960, t1967, t1935, 0, 0, 0, 0, 0, 0, t1900, t1912, t1902, t1868, 0, 0, 0, 0, 0, 0, t1859, t1861, t1849, t1824, 0, 0, 0, 0, 0, 0, t1820, t1822, t1814, t1790, 0, 0, 0, 0, 0, 0, t1820, t1822, t1814, t1786; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1960, -t1970 * t1984, -t2002, t1934, 0, 0, 0, 0, 0, 0, t1899, t1911, t1901, t1867, 0, 0, 0, 0, 0, 0, t1858, t1860, t1848, t1823, 0, 0, 0, 0, 0, 0, t1819, t1821, t1813, t1789, 0, 0, 0, 0, 0, 0, t1819, t1821, t1813, t1785; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1967, t2002, -t1955, -t1947, 0, 0, 0, 0, 0, 0, t1931, -t1933, t1919, -t1928, 0, 0, 0, 0, 0, 0, t1872, t1877, t1864, t1828, 0, 0, 0, 0, 0, 0, t1830, t1838, t1815, t1791, 0, 0, 0, 0, 0, 0, t1830, t1838, t1815, t1787; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1927, t1930, t1918, t1895, 0, 0, 0, 0, 0, 0, t1873, t1878, t1865, t1829, 0, 0, 0, 0, 0, 0, t1831, t1839, t1816, t1792, 0, 0, 0, 0, 0, 0, t1831, t1839, t1816, t1788; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1929, t1940, t1948, t1894, 0, 0, 0, 0, 0, 0, -t1889, -t1891, -t1903, -t1879, 0, 0, 0, 0, 0, 0, -t1854, -t1856, -t1869, -t1847, 0, 0, 0, 0, 0, 0, -t1854, -t1856, -t1869, -t1825; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1931, -t1933, t1919, -t1928, 0, 0, 0, 0, 0, 0, t1872, t1877, t1864, t1828, 0, 0, 0, 0, 0, 0, t1830, t1838, t1815, t1791, 0, 0, 0, 0, 0, 0, t1830, t1838, t1815, t1787; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1910, t1897, t1890, t1851, 0, 0, 0, 0, 0, 0, t1853, t1863, t1835, t1804, 0, 0, 0, 0, 0, 0, t1853, t1863, t1835, t1796; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1896, t1913, t1892, t1850, 0, 0, 0, 0, 0, 0, t1852, t1862, t1834, t1803, 0, 0, 0, 0, 0, 0, t1852, t1862, t1834, t1795; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1889, t1891, t1903, t1879, 0, 0, 0, 0, 0, 0, t1854, t1856, t1869, t1847, 0, 0, 0, 0, 0, 0, t1854, t1856, t1869, t1825; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1886, t1882, t1855, t1818, 0, 0, 0, 0, 0, 0, t1886, t1882, t1855, t1812; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1881, t1893, t1857, t1817, 0, 0, 0, 0, 0, 0, t1881, t1893, t1857, t1811; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1854, t1856, t1869, t1847, 0, 0, 0, 0, 0, 0, t1854, t1856, t1869, t1825; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1886, t1882, t1855, t1812; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1881, t1893, t1857, t1811; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1854, t1856, t1869, t1825;];
f_new_reg  = t1;