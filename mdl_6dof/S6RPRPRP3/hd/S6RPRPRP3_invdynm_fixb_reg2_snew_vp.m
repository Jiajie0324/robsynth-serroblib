% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPRPRP3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 17:41
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPRPRP3_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP3_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP3_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRP3_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP3_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP3_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 17:40:21
% EndTime: 2019-05-05 17:41:10
% DurationCPUTime: 52.77s
% Computational Cost: add. (169103->864), mult. (353538->1100), div. (0->0), fcn. (239091->10), ass. (0->581)
t1794 = sin(pkin(10));
t1796 = cos(pkin(10));
t1800 = sin(qJ(3));
t1917 = qJD(1) * t1800;
t1743 = -t1796 * qJD(3) + t1794 * t1917;
t1744 = qJD(3) * t1794 + t1796 * t1917;
t1799 = sin(qJ(5));
t1802 = cos(qJ(5));
t1689 = -t1743 * t1799 + t1744 * t1802;
t1686 = t1689 ^ 2;
t1803 = cos(qJ(3));
t1916 = qJD(1) * t1803;
t1779 = -qJD(5) + t1916;
t1929 = t1779 ^ 2;
t1599 = t1929 + t1686;
t1784 = qJD(3) * t1917;
t1873 = t1803 * qJDD(1);
t1755 = -t1784 + t1873;
t1745 = -qJDD(5) + t1755;
t1687 = t1802 * t1743 + t1744 * t1799;
t1892 = t1689 * t1687;
t1944 = -t1892 + t1745;
t1903 = t1944 * t1799;
t1504 = -t1599 * t1802 + t1903;
t1902 = t1944 * t1802;
t1506 = t1599 * t1799 + t1902;
t1416 = t1504 * t1794 - t1506 * t1796;
t1867 = qJD(3) * t1916;
t1874 = t1800 * qJDD(1);
t1827 = t1867 + t1874;
t1718 = t1794 * qJDD(3) + t1796 * t1827;
t1809 = t1796 * qJDD(3) - t1794 * t1827;
t1577 = -t1687 * qJD(5) + t1802 * t1718 + t1799 * t1809;
t1893 = t1687 * t1779;
t1948 = t1577 + t1893;
t1372 = t1416 * t1803 - t1800 * t1948;
t1425 = t1504 * t1796 + t1506 * t1794;
t1795 = sin(pkin(9));
t1797 = cos(pkin(9));
t1303 = t1372 * t1795 + t1425 * t1797;
t1305 = t1372 * t1797 - t1425 * t1795;
t1801 = sin(qJ(1));
t1804 = cos(qJ(1));
t2064 = pkin(6) * (t1303 * t1801 - t1305 * t1804);
t2063 = pkin(6) * (t1303 * t1804 + t1305 * t1801);
t2062 = pkin(1) * t1303;
t2061 = qJ(2) * t1303;
t1370 = t1416 * t1800 + t1803 * t1948;
t2060 = -pkin(1) * t1370 + qJ(2) * t1305;
t1860 = -t1718 * t1799 + t1802 * t1809;
t1576 = qJD(5) * t1689 - t1860;
t1662 = t1689 * t1779;
t1949 = t1576 - t1662;
t1448 = -t1949 * t1799 + t1802 * t1948;
t1905 = t1948 * t1799;
t1450 = t1949 * t1802 + t1905;
t1359 = t1448 * t1794 + t1450 * t1796;
t1931 = t1687 ^ 2;
t1947 = t1686 - t1931;
t1348 = t1359 * t1803 - t1800 * t1947;
t1355 = -t1448 * t1796 + t1450 * t1794;
t1277 = t1348 * t1795 - t1355 * t1797;
t1279 = t1348 * t1797 + t1355 * t1795;
t2057 = t1277 * t1804 + t1279 * t1801;
t2056 = t1277 * t1801 - t1279 * t1804;
t1648 = t1931 - t1929;
t1523 = t1648 * t1799 - t1902;
t1527 = t1648 * t1802 + t1903;
t1445 = t1523 * t1794 - t1527 * t1796;
t1535 = t1576 + t1662;
t1395 = t1445 * t1803 + t1535 * t1800;
t1440 = t1523 * t1796 + t1527 * t1794;
t1321 = t1395 * t1795 + t1440 * t1797;
t1325 = t1395 * t1797 - t1440 * t1795;
t2055 = t1321 * t1804 + t1325 * t1801;
t2054 = t1321 * t1801 - t1325 * t1804;
t2052 = pkin(2) * t1370;
t2051 = pkin(7) * t1370;
t2050 = pkin(2) * t1425 + pkin(7) * t1372;
t2048 = pkin(3) * t1425;
t2047 = qJ(4) * t1425;
t2044 = pkin(3) * t1948 + qJ(4) * t1416;
t1346 = t1359 * t1800 + t1803 * t1947;
t1391 = t1445 * t1800 - t1535 * t1803;
t1649 = t1686 - t1929;
t1945 = -t1892 - t1745;
t1901 = t1945 * t1799;
t1989 = -t1802 * t1649 + t1901;
t1578 = t1802 * t1945;
t1990 = t1649 * t1799 + t1578;
t2007 = t1794 * t1990 + t1796 * t1989;
t1943 = -t1893 + t1577;
t2006 = -t1794 * t1989 + t1796 * t1990;
t2018 = t1800 * t1943 + t1803 * t2006;
t2030 = t1795 * t2007 + t1797 * t2018;
t2031 = t1795 * t2018 - t1797 * t2007;
t2039 = -t1801 * t2031 + t1804 * t2030;
t2038 = t1801 * t2030 + t1804 * t2031;
t1942 = -t1929 - t1931;
t1960 = t1802 * t1942 - t1901;
t1964 = t1799 * t1942 + t1578;
t1979 = t1794 * t1960 + t1796 * t1964;
t1980 = -t1794 * t1964 + t1796 * t1960;
t2008 = t1800 * t1949 + t1803 * t1980;
t2021 = t1795 * t2008 - t1797 * t1979;
t2037 = pkin(1) * t2021;
t2036 = pkin(4) * t1504;
t2035 = pkin(8) * t1504;
t2034 = pkin(8) * t1506;
t2033 = qJ(2) * t2021;
t2009 = t1800 * t1980 - t1803 * t1949;
t2020 = t1795 * t1979 + t1797 * t2008;
t2032 = -pkin(1) * t2009 + qJ(2) * t2020;
t2029 = pkin(6) * (-t1801 * t2021 + t1804 * t2020);
t2028 = pkin(6) * (t1801 * t2020 + t1804 * t2021);
t2026 = pkin(2) * t2009;
t2025 = pkin(7) * t2009;
t2022 = -pkin(2) * t1979 + pkin(7) * t2008;
t2019 = t1800 * t2006 - t1803 * t1943;
t2016 = pkin(3) * t1979;
t2015 = qJ(4) * t1979;
t2010 = -pkin(3) * t1949 + qJ(4) * t1980;
t1880 = t1779 * t1802;
t1870 = t1687 * t1880;
t1828 = t1576 * t1799 - t1870;
t1881 = t1779 * t1799;
t1834 = -t1802 * t1576 - t1687 * t1881;
t1933 = t1794 * t1828 + t1796 * t1834;
t1872 = t1800 * t1892;
t1934 = -t1794 * t1834 + t1796 * t1828;
t1959 = t1803 * t1934 - t1872;
t1981 = t1795 * t1933 + t1797 * t1959;
t1983 = t1795 * t1959 - t1797 * t1933;
t2005 = -t1801 * t1983 + t1804 * t1981;
t2004 = t1801 * t1981 + t1804 * t1983;
t1824 = (t1687 * t1799 + t1689 * t1802) * t1779;
t1643 = t1689 * t1881;
t1833 = -t1643 + t1870;
t1936 = t1794 * t1833 + t1796 * t1824;
t1935 = -t1794 * t1824 + t1796 * t1833;
t1958 = -t1745 * t1800 + t1803 * t1935;
t1982 = t1795 * t1936 + t1797 * t1958;
t1984 = t1795 * t1958 - t1797 * t1936;
t2003 = -t1801 * t1984 + t1804 * t1982;
t2002 = t1801 * t1982 + t1804 * t1984;
t1562 = -t1931 - t1686;
t2001 = pkin(3) * t1562;
t2000 = pkin(4) * t1562;
t1999 = pkin(4) * t1964;
t1998 = pkin(8) * t1960;
t1997 = pkin(8) * t1964;
t1996 = qJ(6) * t1948;
t1995 = t1562 * t1800;
t1994 = t1562 * t1803;
t1770 = g(1) * t1804 + g(2) * t1801;
t1805 = qJD(1) ^ 2;
t1752 = -pkin(1) * t1805 - t1770;
t1769 = g(1) * t1801 - t1804 * g(2);
t1830 = qJDD(1) * pkin(1) + t1769;
t1692 = t1797 * t1752 + t1795 * t1830;
t1673 = -t1805 * pkin(2) + qJDD(1) * pkin(7) + t1692;
t1927 = pkin(3) * t1803;
t1838 = -qJ(4) * t1800 - t1927;
t1751 = t1838 * qJD(1);
t1922 = g(3) - qJDD(2);
t1783 = t1803 * t1922;
t1932 = qJD(3) ^ 2;
t1604 = -qJDD(3) * pkin(3) - qJ(4) * t1932 + (qJD(1) * t1751 + t1673) * t1800 + qJDD(4) + t1783;
t1719 = -pkin(4) * t1916 - pkin(8) * t1744;
t1930 = t1743 ^ 2;
t1500 = -t1809 * pkin(4) - t1930 * pkin(8) + t1719 * t1744 + t1604;
t1991 = t1576 * pkin(5) + t1500 - t1996;
t1691 = t1795 * t1752 - t1797 * t1830;
t1861 = t1691 * t1795 + t1797 * t1692;
t1607 = t1691 * t1797 - t1692 * t1795;
t1898 = t1607 * t1801;
t1988 = t1804 * t1861 + t1898;
t1897 = t1607 * t1804;
t1987 = -t1801 * t1861 + t1897;
t1758 = qJDD(1) * t1795 + t1797 * t1805;
t1759 = qJDD(1) * t1797 - t1795 * t1805;
t1695 = -t1758 * t1801 + t1804 * t1759;
t1723 = -qJ(2) * t1758 + t1797 * t1922;
t1938 = -qJ(2) * t1759 - t1795 * t1922;
t1986 = -pkin(6) * t1695 - t1723 * t1801 + t1804 * t1938;
t1946 = t1804 * t1758 + t1759 * t1801;
t1985 = -pkin(6) * t1946 + t1723 * t1804 + t1801 * t1938;
t1963 = t1803 * t1745 + t1800 * t1935;
t1871 = t1803 * t1892;
t1962 = t1800 * t1934 + t1871;
t1519 = t1577 * t1799 - t1689 * t1880;
t1520 = t1577 * t1802 + t1643;
t1434 = t1519 * t1796 + t1520 * t1794;
t1437 = -t1519 * t1794 + t1520 * t1796;
t1835 = t1803 * t1437 + t1872;
t1937 = t1434 * t1795 + t1797 * t1835;
t1939 = -t1797 * t1434 + t1795 * t1835;
t1956 = -t1801 * t1939 + t1804 * t1937;
t1955 = t1801 * t1937 + t1804 * t1939;
t1890 = t1744 * t1743;
t1826 = -t1755 - t1890;
t1953 = t1794 * t1826;
t1952 = t1796 * t1826;
t1633 = t1673 * t1800 + t1783;
t1635 = t1803 * t1673 - t1800 * t1922;
t1561 = t1800 * t1633 + t1803 * t1635;
t1889 = t1744 * t1803;
t1728 = qJD(1) * t1889;
t1666 = t1809 - t1728;
t1742 = t1744 ^ 2;
t1928 = pkin(3) * t1800;
t1672 = -qJDD(1) * pkin(2) - t1805 * pkin(7) + t1691;
t1754 = 0.2e1 * t1867 + t1874;
t1596 = (-t1755 + t1784) * pkin(3) - t1754 * qJ(4) + t1672;
t1610 = -pkin(3) * t1932 + qJDD(3) * qJ(4) + t1751 * t1916 + t1635;
t1488 = 0.2e1 * qJD(4) * t1744 - t1796 * t1596 + t1610 * t1794;
t1866 = t1743 * t1916;
t1837 = -t1718 + t1866;
t1457 = pkin(4) * t1826 + pkin(8) * t1837 - t1488;
t1489 = -0.2e1 * qJD(4) * t1743 + t1794 * t1596 + t1796 * t1610;
t1462 = -pkin(4) * t1930 + pkin(8) * t1809 + t1719 * t1916 + t1489;
t1365 = -t1802 * t1457 + t1462 * t1799;
t1366 = t1799 * t1457 + t1802 * t1462;
t1288 = -t1365 * t1802 + t1366 * t1799;
t1926 = pkin(4) * t1288;
t1529 = t1802 * t1943;
t1536 = (-qJD(5) - t1779) * t1689 + t1860;
t1449 = t1536 * t1799 - t1529;
t1925 = pkin(4) * t1449;
t1924 = pkin(5) * t1802;
t1919 = qJ(6) * t1802;
t1918 = qJD(1) * qJD(3);
t1915 = qJD(6) * t1779;
t1914 = t1288 * t1794;
t1913 = t1288 * t1796;
t1911 = t1500 * t1799;
t1910 = t1500 * t1802;
t1904 = t1943 * t1799;
t1900 = t1604 * t1794;
t1899 = t1604 * t1796;
t1669 = t1755 - t1890;
t1895 = t1669 * t1794;
t1894 = t1669 * t1796;
t1704 = t1754 * t1800;
t1887 = t1755 * t1800;
t1778 = t1803 * t1805 * t1800;
t1765 = -t1778 + qJDD(3);
t1884 = t1765 * t1800;
t1883 = t1765 * t1803;
t1766 = qJDD(3) + t1778;
t1882 = t1766 * t1800;
t1790 = t1800 ^ 2;
t1879 = t1790 * t1805;
t1655 = t1800 * t1672;
t1656 = t1803 * t1672;
t1767 = -0.2e1 * t1915;
t1609 = pkin(5) * t1687 - qJ(6) * t1689;
t1832 = -pkin(5) * t1929 - t1745 * qJ(6) - t1687 * t1609 + t1366;
t1334 = t1767 + t1832;
t1336 = t1745 * pkin(5) - qJ(6) * t1929 + t1609 * t1689 + qJDD(6) + t1365;
t1878 = -pkin(5) * t1336 + qJ(6) * t1334;
t1877 = -pkin(5) * t1943 - qJ(6) * t1535;
t1876 = -pkin(2) * t1672 + pkin(7) * t1561;
t1791 = t1803 ^ 2;
t1875 = t1790 + t1791;
t1869 = t1800 * t1890;
t1868 = t1743 * t1889;
t1774 = -t1879 - t1932;
t1712 = -t1774 * t1800 - t1883;
t1865 = -pkin(2) * t1754 + pkin(7) * t1712 + t1655;
t1787 = t1791 * t1805;
t1776 = -t1787 - t1932;
t1710 = t1776 * t1803 - t1882;
t1756 = -0.2e1 * t1784 + t1873;
t1864 = pkin(2) * t1756 + pkin(7) * t1710 - t1656;
t1863 = -qJ(6) * t1799 - pkin(4);
t1289 = t1365 * t1799 + t1802 * t1366;
t1403 = t1488 * t1794 + t1796 * t1489;
t1859 = -t1769 * t1801 - t1804 * t1770;
t1858 = t1794 * t1866;
t1857 = t1795 * t1778;
t1856 = t1797 * t1778;
t1266 = t1334 * t1802 + t1336 * t1799;
t1377 = (-pkin(5) * t1779 - 0.2e1 * qJD(6)) * t1689 + t1991;
t1238 = pkin(8) * t1266 + (t1863 - t1924) * t1377;
t1265 = t1334 * t1799 - t1336 * t1802;
t1241 = t1265 * t1796 + t1266 * t1794;
t1250 = -pkin(8) * t1265 + (pkin(5) * t1799 - t1919) * t1377;
t1199 = -qJ(4) * t1241 - t1238 * t1794 + t1250 * t1796;
t1843 = pkin(4) * t1265 + t1878;
t1210 = -pkin(3) * t1241 - t1843;
t1242 = -t1265 * t1794 + t1266 * t1796;
t1234 = t1242 * t1803 + t1377 * t1800;
t1855 = -pkin(2) * t1241 + pkin(7) * t1234 + t1800 * t1199 + t1803 * t1210;
t1254 = t1289 * t1794 + t1913;
t1275 = -pkin(4) * t1500 + pkin(8) * t1289;
t1219 = -pkin(8) * t1913 - qJ(4) * t1254 - t1275 * t1794;
t1231 = -pkin(3) * t1254 - t1926;
t1255 = t1289 * t1796 - t1914;
t1249 = t1255 * t1803 + t1500 * t1800;
t1854 = -pkin(2) * t1254 + pkin(7) * t1249 + t1800 * t1219 + t1803 * t1231;
t1312 = -pkin(5) * t1562 + t1334;
t1313 = -qJ(6) * t1562 + t1336;
t1451 = -t1535 * t1802 + t1904;
t1256 = pkin(8) * t1451 + t1312 * t1802 + t1313 * t1799 - t2000;
t1447 = -t1535 * t1799 - t1529;
t1257 = -pkin(8) * t1447 - t1312 * t1799 + t1313 * t1802;
t1356 = t1447 * t1796 + t1451 * t1794;
t1221 = -qJ(4) * t1356 - t1256 * t1794 + t1257 * t1796;
t1842 = pkin(4) * t1447 + t1877;
t1286 = -pkin(3) * t1356 - t1842;
t1360 = -t1447 * t1794 + t1451 * t1796;
t1332 = t1360 * t1803 + t1995;
t1853 = -pkin(2) * t1356 + pkin(7) * t1332 + t1800 * t1221 + t1803 * t1286;
t1453 = t1536 * t1802 + t1904;
t1262 = pkin(8) * t1453 + t1289 - t2000;
t1267 = -pkin(8) * t1449 - t1288;
t1358 = t1449 * t1796 + t1453 * t1794;
t1229 = -qJ(4) * t1358 - t1262 * t1794 + t1267 * t1796;
t1310 = -pkin(3) * t1358 - t1925;
t1362 = -t1449 * t1794 + t1453 * t1796;
t1333 = t1362 * t1803 + t1995;
t1852 = -pkin(2) * t1358 + pkin(7) * t1333 + t1800 * t1229 + t1803 * t1310;
t1806 = 0.2e1 * qJD(6) * t1689 - t1991;
t1350 = pkin(5) * t1662 + t1806 + t1996;
t1294 = -t2034 + t1350 * t1799 + (pkin(4) + t1924) * t1948;
t1299 = -pkin(5) * t1905 + t1350 * t1802 + t2035;
t1246 = -t1294 * t1794 + t1299 * t1796 + t2047;
t1823 = pkin(5) * t1599 - qJ(6) * t1944 + t1832;
t1818 = t1823 - t2036;
t1264 = -t1818 + 0.2e1 * t1915 + t2048;
t1851 = t1800 * t1246 + t1803 * t1264 + t2050;
t1351 = (-t1949 + t1662) * pkin(5) + t1806;
t1296 = t1351 * t1802 + t1863 * t1949 + t1998;
t1302 = -t1351 * t1799 - t1919 * t1949 - t1997;
t1252 = -t1296 * t1794 + t1302 * t1796 - t2015;
t1808 = pkin(5) * t1945 + qJ(6) * t1942 - t1336;
t1807 = t1808 + t1999;
t1270 = -t1807 - t2016;
t1850 = t1800 * t1252 + t1803 * t1270 + t2022;
t1375 = -pkin(4) * t1949 - t1910 + t1998;
t1419 = t1911 - t1997;
t1283 = -t1375 * t1794 + t1419 * t1796 - t2015;
t1829 = -t1365 + t1999;
t1290 = -t1829 - t2016;
t1849 = t1800 * t1283 + t1803 * t1290 + t2022;
t1387 = -pkin(4) * t1948 + t1911 + t2034;
t1422 = t1910 - t2035;
t1293 = -t1387 * t1794 + t1422 * t1796 - t2047;
t1841 = -t1366 + t2036;
t1298 = -t1841 - t2048;
t1848 = t1800 * t1293 + t1803 * t1298 - t2050;
t1690 = -t1787 - t1930;
t1593 = t1690 * t1794 + t1952;
t1458 = -pkin(3) * t1593 + t1488;
t1495 = -qJ(4) * t1593 + t1900;
t1594 = t1690 * t1796 - t1953;
t1665 = t1728 + t1809;
t1545 = t1594 * t1803 - t1665 * t1800;
t1847 = -pkin(2) * t1593 + pkin(7) * t1545 + t1803 * t1458 + t1800 * t1495;
t1727 = -t1742 - t1787;
t1619 = t1727 * t1796 + t1895;
t1460 = -pkin(3) * t1619 + t1489;
t1501 = -qJ(4) * t1619 + t1899;
t1622 = -t1727 * t1794 + t1894;
t1668 = t1718 + t1866;
t1552 = t1622 * t1803 + t1668 * t1800;
t1846 = -pkin(2) * t1619 + pkin(7) * t1552 + t1803 * t1460 + t1800 * t1501;
t1760 = t1875 * qJDD(1);
t1763 = t1787 + t1879;
t1845 = pkin(2) * t1763 + pkin(7) * t1760 + t1561;
t1762 = qJDD(1) * t1804 - t1801 * t1805;
t1840 = -pkin(6) * t1762 - g(3) * t1801;
t1839 = -pkin(3) * t1604 + qJ(4) * t1403;
t1836 = t1800 * t1437 - t1871;
t1402 = -t1488 * t1796 + t1489 * t1794;
t1560 = t1633 * t1803 - t1635 * t1800;
t1831 = t1769 * t1804 - t1770 * t1801;
t1573 = t1666 * t1794 + t1796 * t1837;
t1376 = -qJ(4) * t1573 - t1402;
t1575 = t1666 * t1796 - t1794 * t1837;
t1654 = t1742 + t1930;
t1510 = t1575 * t1803 - t1654 * t1800;
t1825 = pkin(7) * t1510 + t1800 * t1376 + (-pkin(2) - t1927) * t1573;
t1822 = pkin(3) * t1665 + qJ(4) * t1594 - t1899;
t1821 = -pkin(3) * t1668 + qJ(4) * t1622 + t1900;
t1820 = pkin(3) * t1654 + qJ(4) * t1575 + t1403;
t1380 = t1403 * t1803 + t1604 * t1800;
t1819 = pkin(7) * t1380 + (-pkin(2) + t1838) * t1402;
t1817 = -pkin(3) * t1377 + qJ(4) * t1242 + t1238 * t1796 + t1250 * t1794;
t1816 = qJ(4) * t1360 + t1256 * t1796 + t1257 * t1794 - t2001;
t1815 = qJ(4) * t1362 + t1262 * t1796 + t1267 * t1794 - t2001;
t1814 = t1294 * t1796 + t1299 * t1794 + t2044;
t1813 = t1296 * t1796 + t1302 * t1794 + t2010;
t1812 = t1375 * t1796 + t1419 * t1794 + t2010;
t1811 = t1387 * t1796 + t1422 * t1794 - t2044;
t1810 = -pkin(3) * t1500 - pkin(8) * t1914 + qJ(4) * t1255 + t1275 * t1796;
t1775 = t1787 - t1932;
t1773 = -t1879 + t1932;
t1764 = -t1787 + t1879;
t1761 = qJDD(1) * t1801 + t1804 * t1805;
t1749 = t1803 * t1766;
t1748 = t1875 * t1918;
t1736 = t1803 * t1755;
t1729 = -pkin(6) * t1761 + g(3) * t1804;
t1726 = -t1742 + t1787;
t1725 = -t1787 + t1930;
t1720 = t1796 * t1728;
t1717 = -t1790 * t1918 + t1803 * t1827;
t1716 = -t1791 * t1918 - t1887;
t1715 = qJDD(3) * t1795 + t1748 * t1797;
t1714 = -qJDD(3) * t1797 + t1748 * t1795;
t1711 = -t1773 * t1800 + t1749;
t1709 = t1775 * t1803 - t1884;
t1708 = t1774 * t1803 - t1884;
t1707 = t1773 * t1803 + t1882;
t1706 = t1776 * t1800 + t1749;
t1705 = t1775 * t1800 + t1883;
t1703 = -t1800 * t1867 + t1736;
t1699 = t1760 * t1797 - t1763 * t1795;
t1698 = t1760 * t1795 + t1763 * t1797;
t1697 = -t1742 + t1930;
t1694 = t1756 * t1803 - t1704;
t1693 = t1754 * t1803 + t1756 * t1800;
t1682 = t1717 * t1797 - t1857;
t1681 = t1716 * t1797 + t1857;
t1680 = t1717 * t1795 + t1856;
t1679 = t1716 * t1795 - t1856;
t1678 = t1711 * t1797 + t1795 * t1874;
t1677 = t1709 * t1797 + t1795 * t1873;
t1676 = t1711 * t1795 - t1797 * t1874;
t1675 = t1709 * t1795 - t1797 * t1873;
t1652 = (t1743 * t1796 - t1744 * t1794) * t1916;
t1651 = -t1720 - t1858;
t1647 = t1712 * t1797 + t1754 * t1795;
t1646 = t1710 * t1797 - t1756 * t1795;
t1645 = t1712 * t1795 - t1754 * t1797;
t1644 = t1710 * t1795 + t1756 * t1797;
t1642 = -pkin(1) * t1758 - t1692;
t1641 = pkin(1) * t1759 - t1691;
t1639 = t1718 * t1796 + t1728 * t1794;
t1638 = t1718 * t1794 - t1720;
t1637 = -t1794 * t1809 - t1796 * t1866;
t1636 = t1796 * t1809 - t1858;
t1634 = t1694 * t1797 + t1764 * t1795;
t1632 = t1694 * t1795 - t1764 * t1797;
t1626 = t1652 * t1803 - t1887;
t1625 = t1652 * t1800 + t1736;
t1624 = t1725 * t1796 + t1895;
t1623 = -t1726 * t1794 + t1952;
t1621 = t1725 * t1794 - t1894;
t1620 = t1726 * t1796 + t1953;
t1617 = -pkin(7) * t1708 + t1656;
t1616 = -pkin(7) * t1706 + t1655;
t1603 = pkin(1) * t1607;
t1602 = -pkin(2) * t1708 + t1635;
t1601 = -pkin(2) * t1706 + t1633;
t1595 = pkin(1) * t1922 + qJ(2) * t1861;
t1592 = t1639 * t1803 + t1869;
t1591 = t1637 * t1803 - t1869;
t1590 = t1639 * t1800 - t1868;
t1589 = t1637 * t1800 + t1868;
t1574 = t1665 * t1796 - t1668 * t1794;
t1572 = t1665 * t1794 + t1668 * t1796;
t1556 = t1626 * t1797 - t1651 * t1795;
t1555 = t1626 * t1795 + t1651 * t1797;
t1554 = t1624 * t1803 + t1666 * t1800;
t1553 = t1623 * t1803 - t1800 * t1837;
t1551 = t1624 * t1800 - t1666 * t1803;
t1550 = t1623 * t1800 + t1803 * t1837;
t1549 = t1622 * t1800 - t1668 * t1803;
t1547 = t1574 * t1803 - t1697 * t1800;
t1546 = t1574 * t1800 + t1697 * t1803;
t1544 = t1594 * t1800 + t1665 * t1803;
t1543 = pkin(1) * t1644 + t1864;
t1542 = pkin(1) * t1645 + t1865;
t1514 = t1592 * t1797 + t1638 * t1795;
t1513 = t1591 * t1797 + t1636 * t1795;
t1512 = t1592 * t1795 - t1638 * t1797;
t1511 = t1591 * t1795 - t1636 * t1797;
t1509 = t1575 * t1800 + t1654 * t1803;
t1503 = -qJ(2) * t1698 + t1560 * t1797;
t1502 = qJ(2) * t1699 + t1560 * t1795;
t1498 = t1561 * t1797 + t1672 * t1795;
t1497 = t1561 * t1795 - t1672 * t1797;
t1496 = pkin(1) * t1698 + t1845;
t1482 = t1554 * t1797 + t1621 * t1795;
t1481 = t1553 * t1797 + t1620 * t1795;
t1480 = t1552 * t1797 + t1619 * t1795;
t1479 = t1554 * t1795 - t1621 * t1797;
t1478 = t1553 * t1795 - t1620 * t1797;
t1477 = t1552 * t1795 - t1619 * t1797;
t1476 = -qJ(2) * t1645 - t1602 * t1795 + t1617 * t1797;
t1475 = -qJ(2) * t1644 - t1601 * t1795 + t1616 * t1797;
t1470 = t1545 * t1797 + t1593 * t1795;
t1469 = t1545 * t1795 - t1593 * t1797;
t1468 = t1547 * t1797 + t1572 * t1795;
t1467 = t1547 * t1795 - t1572 * t1797;
t1466 = -pkin(1) * t1708 + qJ(2) * t1647 + t1602 * t1797 + t1617 * t1795;
t1465 = -pkin(1) * t1706 + qJ(2) * t1646 + t1601 * t1797 + t1616 * t1795;
t1464 = t1510 * t1797 + t1573 * t1795;
t1463 = t1510 * t1795 - t1573 * t1797;
t1421 = pkin(1) * t1497 + t1876;
t1420 = -pkin(2) * t1549 - t1821;
t1418 = -pkin(2) * t1544 - t1822;
t1400 = -qJ(2) * t1497 - (pkin(2) * t1795 - pkin(7) * t1797) * t1560;
t1379 = t1403 * t1800 - t1604 * t1803;
t1367 = qJ(2) * t1498 - (-pkin(2) * t1797 - pkin(7) * t1795 - pkin(1)) * t1560;
t1363 = -pkin(7) * t1549 - t1460 * t1800 + t1501 * t1803;
t1352 = -pkin(7) * t1544 - t1458 * t1800 + t1495 * t1803;
t1345 = -pkin(2) * t1509 - t1820;
t1331 = t1362 * t1800 - t1994;
t1330 = t1360 * t1800 - t1994;
t1326 = -pkin(7) * t1509 + t1376 * t1803 + t1573 * t1928;
t1311 = pkin(1) * t1477 + t1846;
t1308 = t1380 * t1797 + t1402 * t1795;
t1307 = t1380 * t1795 - t1402 * t1797;
t1301 = pkin(1) * t1469 + t1847;
t1300 = -pkin(2) * t1379 - t1839;
t1295 = pkin(1) * t1463 + t1825;
t1291 = -qJ(2) * t1477 + t1363 * t1797 - t1420 * t1795;
t1284 = -qJ(2) * t1469 + t1352 * t1797 - t1418 * t1795;
t1281 = -pkin(1) * t1549 + qJ(2) * t1480 + t1363 * t1795 + t1420 * t1797;
t1276 = -pkin(7) * t1379 + (-qJ(4) * t1803 + t1928) * t1402;
t1274 = t1333 * t1797 + t1358 * t1795;
t1273 = t1332 * t1797 + t1356 * t1795;
t1272 = t1333 * t1795 - t1358 * t1797;
t1271 = t1332 * t1795 - t1356 * t1797;
t1268 = -pkin(1) * t1544 + qJ(2) * t1470 + t1352 * t1795 + t1418 * t1797;
t1261 = -qJ(2) * t1463 + t1326 * t1797 - t1345 * t1795;
t1260 = -t1811 + t2052;
t1259 = -pkin(1) * t1509 + qJ(2) * t1464 + t1326 * t1795 + t1345 * t1797;
t1258 = -t1812 - t2026;
t1248 = t1255 * t1800 - t1500 * t1803;
t1244 = pkin(1) * t1307 + t1819;
t1243 = t1293 * t1803 - t1298 * t1800 + t2051;
t1239 = t1283 * t1803 - t1290 * t1800 - t2025;
t1237 = -t1813 - t2026;
t1236 = -t1814 - t2052;
t1235 = -qJ(2) * t1307 + t1276 * t1797 - t1300 * t1795;
t1233 = t1242 * t1800 - t1377 * t1803;
t1227 = -pkin(1) * t1379 + qJ(2) * t1308 + t1276 * t1795 + t1300 * t1797;
t1226 = t1848 - t2062;
t1225 = t1252 * t1803 - t1270 * t1800 - t2025;
t1224 = t1849 + t2037;
t1223 = -pkin(2) * t1331 - t1815;
t1222 = t1246 * t1803 - t1264 * t1800 - t2051;
t1217 = t1249 * t1797 + t1254 * t1795;
t1216 = t1249 * t1795 - t1254 * t1797;
t1215 = t1243 * t1797 - t1260 * t1795 + t2061;
t1214 = -pkin(7) * t1331 + t1229 * t1803 - t1310 * t1800;
t1213 = t1850 + t2037;
t1212 = -pkin(2) * t1330 - t1816;
t1211 = t1243 * t1795 + t1260 * t1797 - t2060;
t1208 = t1239 * t1797 - t1258 * t1795 - t2033;
t1207 = t1851 + t2062;
t1206 = t1234 * t1797 + t1241 * t1795;
t1205 = t1234 * t1795 - t1241 * t1797;
t1204 = t1239 * t1795 + t1258 * t1797 + t2032;
t1203 = -pkin(7) * t1330 + t1221 * t1803 - t1286 * t1800;
t1202 = pkin(1) * t1272 + t1852;
t1201 = -pkin(2) * t1248 - t1810;
t1200 = t1225 * t1797 - t1237 * t1795 - t2033;
t1197 = t1225 * t1795 + t1237 * t1797 + t2032;
t1196 = pkin(1) * t1271 + t1853;
t1195 = t1222 * t1797 - t1236 * t1795 - t2061;
t1194 = t1222 * t1795 + t1236 * t1797 + t2060;
t1193 = -pkin(7) * t1248 + t1219 * t1803 - t1231 * t1800;
t1192 = -qJ(2) * t1272 + t1214 * t1797 - t1223 * t1795;
t1191 = -pkin(1) * t1331 + qJ(2) * t1274 + t1214 * t1795 + t1223 * t1797;
t1190 = -pkin(2) * t1233 - t1817;
t1189 = -qJ(2) * t1271 + t1203 * t1797 - t1212 * t1795;
t1188 = -pkin(1) * t1330 + qJ(2) * t1273 + t1203 * t1795 + t1212 * t1797;
t1187 = -pkin(7) * t1233 + t1199 * t1803 - t1210 * t1800;
t1186 = pkin(1) * t1216 + t1854;
t1185 = -qJ(2) * t1216 + t1193 * t1797 - t1201 * t1795;
t1184 = -pkin(1) * t1248 + qJ(2) * t1217 + t1193 * t1795 + t1201 * t1797;
t1183 = pkin(1) * t1205 + t1855;
t1182 = -qJ(2) * t1205 + t1187 * t1797 - t1190 * t1795;
t1181 = -pkin(1) * t1233 + qJ(2) * t1206 + t1187 * t1795 + t1190 * t1797;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1762, 0, -t1761, 0, t1840, -t1729, -t1831, -pkin(6) * t1831, 0, 0, t1695, 0, -t1946, 0, t1986, -t1985, t1987, pkin(6) * t1987 + qJ(2) * t1897 - t1801 * t1595, -t1680 * t1801 + t1682 * t1804, -t1632 * t1801 + t1634 * t1804, -t1676 * t1801 + t1678 * t1804, -t1679 * t1801 + t1681 * t1804, -t1675 * t1801 + t1677 * t1804, -t1714 * t1801 + t1715 * t1804, t1804 * t1475 - t1801 * t1465 - pkin(6) * (t1644 * t1804 + t1646 * t1801), t1804 * t1476 - t1801 * t1466 - pkin(6) * (t1645 * t1804 + t1647 * t1801), t1804 * t1503 - t1801 * t1502 - pkin(6) * (t1698 * t1804 + t1699 * t1801), t1804 * t1400 - t1801 * t1367 - pkin(6) * (t1497 * t1804 + t1498 * t1801), -t1512 * t1801 + t1514 * t1804, -t1467 * t1801 + t1468 * t1804, -t1478 * t1801 + t1481 * t1804, -t1511 * t1801 + t1513 * t1804, -t1479 * t1801 + t1482 * t1804, -t1555 * t1801 + t1556 * t1804, t1804 * t1284 - t1801 * t1268 - pkin(6) * (t1469 * t1804 + t1470 * t1801), t1804 * t1291 - t1801 * t1281 - pkin(6) * (t1477 * t1804 + t1480 * t1801), t1804 * t1261 - t1801 * t1259 - pkin(6) * (t1463 * t1804 + t1464 * t1801), t1804 * t1235 - t1801 * t1227 - pkin(6) * (t1307 * t1804 + t1308 * t1801), t1956, t2056, t2039, t2005, t2054, t2003, -t1801 * t1204 + t1804 * t1208 - t2028, -t1801 * t1211 + t1804 * t1215 + t2063, t1804 * t1192 - t1801 * t1191 - pkin(6) * (t1272 * t1804 + t1274 * t1801), t1804 * t1185 - t1801 * t1184 - pkin(6) * (t1216 * t1804 + t1217 * t1801), t1956, t2039, -t2056, t2003, -t2054, t2005, -t1801 * t1197 + t1804 * t1200 - t2028, t1804 * t1189 - t1801 * t1188 - pkin(6) * (t1271 * t1804 + t1273 * t1801), -t1801 * t1194 + t1804 * t1195 - t2063, t1804 * t1182 - t1801 * t1181 - pkin(6) * (t1205 * t1804 + t1206 * t1801); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1761, 0, t1762, 0, t1729, t1840, t1859, pkin(6) * t1859, 0, 0, t1946, 0, t1695, 0, t1985, t1986, t1988, pkin(6) * t1988 + qJ(2) * t1898 + t1804 * t1595, t1680 * t1804 + t1682 * t1801, t1632 * t1804 + t1634 * t1801, t1676 * t1804 + t1678 * t1801, t1679 * t1804 + t1681 * t1801, t1675 * t1804 + t1677 * t1801, t1714 * t1804 + t1715 * t1801, t1801 * t1475 + t1804 * t1465 + pkin(6) * (-t1644 * t1801 + t1646 * t1804), t1801 * t1476 + t1804 * t1466 + pkin(6) * (-t1645 * t1801 + t1647 * t1804), t1801 * t1503 + t1804 * t1502 + pkin(6) * (-t1698 * t1801 + t1699 * t1804), t1801 * t1400 + t1804 * t1367 + pkin(6) * (-t1497 * t1801 + t1498 * t1804), t1512 * t1804 + t1514 * t1801, t1467 * t1804 + t1468 * t1801, t1478 * t1804 + t1481 * t1801, t1511 * t1804 + t1513 * t1801, t1479 * t1804 + t1482 * t1801, t1555 * t1804 + t1556 * t1801, t1801 * t1284 + t1804 * t1268 + pkin(6) * (-t1469 * t1801 + t1470 * t1804), t1801 * t1291 + t1804 * t1281 + pkin(6) * (-t1477 * t1801 + t1480 * t1804), t1801 * t1261 + t1804 * t1259 + pkin(6) * (-t1463 * t1801 + t1464 * t1804), t1801 * t1235 + t1804 * t1227 + pkin(6) * (-t1307 * t1801 + t1308 * t1804), t1955, -t2057, t2038, t2004, -t2055, t2002, t1804 * t1204 + t1801 * t1208 + t2029, t1804 * t1211 + t1801 * t1215 + t2064, t1801 * t1192 + t1804 * t1191 + pkin(6) * (-t1272 * t1801 + t1274 * t1804), t1801 * t1185 + t1804 * t1184 + pkin(6) * (-t1216 * t1801 + t1217 * t1804), t1955, t2038, t2057, t2002, t2055, t2004, t1804 * t1197 + t1801 * t1200 + t2029, t1801 * t1189 + t1804 * t1188 + pkin(6) * (-t1271 * t1801 + t1273 * t1804), t1804 * t1194 + t1801 * t1195 - t2064, t1801 * t1182 + t1804 * t1181 + pkin(6) * (-t1205 * t1801 + t1206 * t1804); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1769, t1770, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1641, t1642, 0, -t1603, t1704, t1693, t1707, t1703, t1705, 0, t1543, t1542, t1496, t1421, t1590, t1546, t1550, t1589, t1551, t1625, t1301, t1311, t1295, t1244, t1836, -t1346, t2019, t1962, -t1391, t1963, t1224, t1226, t1202, t1186, t1836, t2019, t1346, t1963, t1391, t1962, t1213, t1196, t1207, t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1805, 0, 0, -g(3), -t1769, 0, 0, 0, t1759, 0, -t1758, 0, t1938, -t1723, t1607, qJ(2) * t1607, t1682, t1634, t1678, t1681, t1677, t1715, t1475, t1476, t1503, t1400, t1514, t1468, t1481, t1513, t1482, t1556, t1284, t1291, t1261, t1235, t1937, -t1279, t2030, t1981, -t1325, t1982, t1208, t1215, t1192, t1185, t1937, t2030, t1279, t1982, t1325, t1981, t1200, t1189, t1195, t1182; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1805, 0, qJDD(1), 0, g(3), 0, -t1770, 0, 0, 0, t1758, 0, t1759, 0, t1723, t1938, t1861, t1595, t1680, t1632, t1676, t1679, t1675, t1714, t1465, t1466, t1502, t1367, t1512, t1467, t1478, t1511, t1479, t1555, t1268, t1281, t1259, t1227, t1939, -t1277, t2031, t1983, -t1321, t1984, t1204, t1211, t1191, t1184, t1939, t2031, t1277, t1984, t1321, t1983, t1197, t1188, t1194, t1181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1769, t1770, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1641, t1642, 0, -t1603, t1704, t1693, t1707, t1703, t1705, 0, t1543, t1542, t1496, t1421, t1590, t1546, t1550, t1589, t1551, t1625, t1301, t1311, t1295, t1244, t1836, -t1346, t2019, t1962, -t1391, t1963, t1224, t1226, t1202, t1186, t1836, t2019, t1346, t1963, t1391, t1962, t1213, t1196, t1207, t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1805, 0, 0, -t1922, t1691, 0, t1717, t1694, t1711, t1716, t1709, t1748, t1616, t1617, t1560, pkin(7) * t1560, t1592, t1547, t1553, t1591, t1554, t1626, t1352, t1363, t1326, t1276, t1835, -t1348, t2018, t1959, -t1395, t1958, t1239, t1243, t1214, t1193, t1835, t2018, t1348, t1958, t1395, t1959, t1225, t1203, t1222, t1187; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1805, 0, qJDD(1), 0, t1922, 0, t1692, 0, t1778, -t1764, -t1874, -t1778, -t1873, -qJDD(3), t1601, t1602, 0, pkin(2) * t1560, -t1638, -t1572, -t1620, -t1636, -t1621, t1651, t1418, t1420, t1345, t1300, -t1434, t1355, -t2007, -t1933, -t1440, -t1936, t1258, t1260, t1223, t1201, -t1434, -t2007, -t1355, -t1936, t1440, -t1933, t1237, t1212, t1236, t1190; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1691, -t1692, 0, 0, t1704, t1693, t1707, t1703, t1705, 0, t1864, t1865, t1845, t1876, t1590, t1546, t1550, t1589, t1551, t1625, t1847, t1846, t1825, t1819, t1836, -t1346, t2019, t1962, -t1391, t1963, t1849, t1848, t1852, t1854, t1836, t2019, t1346, t1963, t1391, t1962, t1850, t1853, t1851, t1855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1827, t1756, t1766, -t1867, t1775, t1867, 0, t1672, t1633, 0, t1639, t1574, t1623, t1637, t1624, t1652, t1495, t1501, t1376, -qJ(4) * t1402, t1437, -t1359, t2006, t1934, -t1445, t1935, t1283, t1293, t1229, t1219, t1437, t2006, t1359, t1935, t1445, t1934, t1252, t1221, t1246, t1199; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1784, t1754, t1773, t1755, t1765, -t1784, -t1672, 0, t1635, 0, -t1890, t1697, t1837, t1890, -t1666, t1755, t1458, t1460, -pkin(3) * t1573, -pkin(3) * t1402, -t1892, -t1947, -t1943, t1892, t1535, t1745, t1290, t1298, t1310, t1231, -t1892, -t1943, t1947, t1745, -t1535, t1892, t1270, t1286, t1264, t1210; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1778, t1764, t1874, t1778, t1873, qJDD(3), -t1633, -t1635, 0, 0, t1638, t1572, t1620, t1636, t1621, -t1651, t1822, t1821, t1820, t1839, t1434, -t1355, t2007, t1933, t1440, t1936, t1812, t1811, t1815, t1810, t1434, t2007, t1355, t1936, -t1440, t1933, t1813, t1816, t1814, t1817; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1718, t1665, t1826, -t1866, t1725, t1866, 0, t1604, t1488, 0, t1520, -t1450, t1990, t1828, t1527, t1833, t1419, t1422, t1267, -pkin(8) * t1288, t1520, t1990, t1450, t1833, -t1527, t1828, t1302, t1257, t1299, t1250; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1728, t1668, t1726, t1809, -t1669, t1728, -t1604, 0, t1489, 0, t1519, t1448, t1989, t1834, t1523, t1824, t1375, t1387, t1262, t1275, t1519, t1989, -t1448, t1824, -t1523, t1834, t1296, t1256, t1294, t1238; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1890, -t1697, -t1837, -t1890, t1666, -t1755, -t1488, -t1489, 0, 0, t1892, t1947, t1943, -t1892, -t1535, -t1745, t1829, t1841, t1925, t1926, t1892, t1943, -t1947, -t1745, t1535, -t1892, t1807, t1842, t1767 + t1818, t1843; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1577, -t1949, t1945, -t1893, t1648, t1893, 0, t1500, t1365, 0, t1577, t1945, t1949, t1893, -t1648, -t1893, -qJ(6) * t1949, t1313, t1350, -qJ(6) * t1377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1662, t1948, -t1649, -t1576, -t1944, t1662, -t1500, 0, t1366, 0, -t1662, -t1649, -t1948, t1662, t1944, -t1576, t1351, t1312, pkin(5) * t1948, -pkin(5) * t1377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1892, t1947, t1943, -t1892, -t1535, -t1745, -t1365, -t1366, 0, 0, t1892, t1943, -t1947, -t1745, t1535, -t1892, t1808, t1877, t1767 + t1823, t1878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1577, t1945, t1949, t1893, -t1648, -t1893, 0, t1336, -t1377, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1892, t1943, -t1947, -t1745, t1535, -t1892, -t1336, 0, t1334, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1662, t1649, t1948, -t1662, -t1944, t1576, t1377, -t1334, 0, 0;];
m_new_reg  = t1;
