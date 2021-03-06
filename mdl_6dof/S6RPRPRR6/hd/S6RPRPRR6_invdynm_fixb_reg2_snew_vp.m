% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPRPRR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2,theta4]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 19:05
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPRPRR6_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR6_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR6_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRR6_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRR6_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR6_invdynm_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 19:04:39
% EndTime: 2019-05-05 19:05:35
% DurationCPUTime: 59.07s
% Computational Cost: add. (688064->1004), mult. (1706129->1436), div. (0->0), fcn. (1333396->12), ass. (0->682)
t1790 = sin(pkin(11));
t1791 = sin(pkin(10));
t1793 = cos(pkin(10));
t1796 = sin(qJ(3));
t1800 = cos(qJ(3));
t1828 = t1791 * t1800 + t1793 * t1796;
t1763 = t1828 * qJD(1);
t1792 = cos(pkin(11));
t1740 = -t1792 * qJD(3) + t1763 * t1790;
t1741 = qJD(3) * t1790 + t1763 * t1792;
t1696 = t1741 * t1740;
t1780 = t1791 * qJDD(1);
t1782 = t1793 * qJDD(1);
t1759 = t1780 * t1796 - t1800 * t1782;
t1875 = t1763 * qJD(3);
t1725 = t1759 + t1875;
t1926 = -t1696 + t1725;
t1939 = t1790 * t1926;
t1938 = t1792 * t1926;
t1794 = sin(qJ(6));
t1795 = sin(qJ(5));
t1799 = cos(qJ(5));
t1692 = t1799 * t1740 + t1741 * t1795;
t1693 = -t1740 * t1795 + t1741 * t1799;
t1798 = cos(qJ(6));
t1629 = t1798 * t1692 + t1693 * t1794;
t1631 = -t1692 * t1794 + t1693 * t1798;
t1534 = t1631 * t1629;
t1718 = qJDD(5) + t1725;
t1716 = qJDD(6) + t1718;
t1930 = -t1534 + t1716;
t1937 = t1794 * t1930;
t1634 = t1693 * t1692;
t1928 = -t1634 + t1718;
t1936 = t1795 * t1928;
t1761 = (t1791 * t1796 - t1793 * t1800) * qJD(1);
t1730 = t1763 * t1761;
t1925 = -t1730 + qJDD(3);
t1935 = t1796 * t1925;
t1934 = t1798 * t1930;
t1933 = t1799 * t1928;
t1932 = t1800 * t1925;
t1797 = sin(qJ(1));
t1801 = cos(qJ(1));
t1773 = t1797 * g(1) - t1801 * g(2);
t1831 = -qJDD(2) + t1773;
t1786 = t1791 ^ 2;
t1787 = t1793 ^ 2;
t1864 = t1786 + t1787;
t1921 = qJD(1) ^ 2;
t1931 = -(pkin(7) * t1864 + qJ(2)) * t1921 - t1831;
t1909 = t1791 * g(3);
t1916 = 2 * qJD(2);
t1774 = t1801 * g(1) + t1797 * g(2);
t1922 = (qJ(2) + pkin(7)) * qJDD(1) - t1774;
t1710 = -t1909 + t1922 * t1793 + (t1793 * t1916 + (-pkin(1) * t1793 - pkin(2) * t1787) * qJD(1)) * qJD(1);
t1862 = pkin(2) * t1793 + pkin(1);
t1908 = t1793 * g(3);
t1804 = -t1908 + ((qJD(1) * t1862 - (2 * qJD(2))) * qJD(1) - t1922) * t1791;
t1638 = t1800 * t1710 + t1796 * t1804;
t1717 = pkin(3) * t1761 - qJ(4) * t1763;
t1920 = qJD(3) ^ 2;
t1591 = -pkin(3) * t1920 + qJDD(3) * qJ(4) - t1717 * t1761 + t1638;
t1751 = t1761 * qJD(3);
t1604 = 0.2e1 * t1751 * qJ(4) + (t1725 + t1875) * pkin(3) + (-qJ(4) * t1828 - t1862) * qJDD(1) + t1931;
t1502 = 0.2e1 * qJD(4) * t1741 + t1790 * t1591 - t1792 * t1604;
t1503 = -0.2e1 * qJD(4) * t1740 + t1792 * t1591 + t1790 * t1604;
t1414 = t1790 * t1502 + t1792 * t1503;
t1760 = t1828 * qJDD(1);
t1809 = t1751 - t1760;
t1705 = t1790 * qJDD(3) - t1792 * t1809;
t1805 = -t1792 * qJDD(3) - t1790 * t1809;
t1589 = -t1692 * qJD(5) + t1799 * t1705 - t1795 * t1805;
t1845 = t1795 * t1705 + t1799 * t1805;
t1823 = qJD(5) * t1693 + t1845;
t1486 = -t1629 * qJD(6) + t1798 * t1589 - t1794 * t1823;
t1753 = qJD(5) + t1761;
t1748 = qJD(6) + t1753;
t1607 = t1748 * t1629;
t1929 = -t1607 + t1486;
t1672 = t1753 * t1692;
t1927 = -t1672 + t1589;
t1555 = t1672 + t1589;
t1713 = t1761 * t1740;
t1655 = -t1713 + t1705;
t1656 = t1713 + t1705;
t1714 = t1761 * t1741;
t1654 = -t1805 + t1714;
t1923 = t1921 * t1864;
t1846 = t1794 * t1589 + t1798 * t1823;
t1436 = (qJD(6) - t1748) * t1631 + t1846;
t1552 = (qJD(5) - t1753) * t1693 + t1845;
t1627 = t1629 ^ 2;
t1628 = t1631 ^ 2;
t1919 = t1692 ^ 2;
t1691 = t1693 ^ 2;
t1918 = t1740 ^ 2;
t1737 = t1741 ^ 2;
t1747 = t1748 ^ 2;
t1752 = t1753 ^ 2;
t1917 = t1761 ^ 2;
t1758 = t1763 ^ 2;
t1637 = t1710 * t1796 - t1800 * t1804;
t1561 = -t1637 * t1800 + t1638 * t1796;
t1914 = pkin(2) * t1561;
t1668 = -t1759 * t1796 - t1760 * t1800;
t1913 = pkin(2) * t1668;
t1912 = pkin(3) * t1796;
t1455 = pkin(4) * t1926 - pkin(8) * t1656 - t1502;
t1704 = pkin(4) * t1761 - pkin(8) * t1741;
t1472 = -pkin(4) * t1918 - pkin(8) * t1805 - t1761 * t1704 + t1503;
t1378 = -t1799 * t1455 + t1795 * t1472;
t1379 = t1795 * t1455 + t1799 * t1472;
t1315 = -t1378 * t1799 + t1379 * t1795;
t1911 = pkin(4) * t1315;
t1474 = -t1552 * t1795 - t1555 * t1799;
t1910 = pkin(4) * t1474;
t1907 = qJDD(1) * pkin(1);
t1343 = pkin(5) * t1928 - pkin(9) * t1555 - t1378;
t1662 = pkin(5) * t1753 - pkin(9) * t1693;
t1345 = -pkin(5) * t1919 - pkin(9) * t1823 - t1753 * t1662 + t1379;
t1278 = -t1798 * t1343 + t1345 * t1794;
t1279 = t1343 * t1794 + t1345 * t1798;
t1227 = -t1278 * t1798 + t1279 * t1794;
t1906 = t1227 * t1795;
t1905 = t1227 * t1799;
t1904 = t1315 * t1790;
t1903 = t1315 * t1792;
t1588 = -qJDD(3) * pkin(3) - t1920 * qJ(4) + t1717 * t1763 + qJDD(4) + t1637;
t1514 = t1805 * pkin(4) - t1918 * pkin(8) + t1704 * t1741 + t1588;
t1416 = pkin(5) * t1823 - pkin(9) * t1919 + t1662 * t1693 + t1514;
t1902 = t1416 * t1794;
t1901 = t1416 * t1798;
t1900 = t1514 * t1795;
t1899 = t1514 * t1799;
t1521 = t1534 + t1716;
t1898 = t1521 * t1794;
t1897 = t1521 * t1798;
t1896 = t1561 * t1791;
t1895 = t1561 * t1793;
t1596 = t1634 + t1718;
t1894 = t1596 * t1795;
t1893 = t1596 * t1799;
t1659 = t1696 + t1725;
t1892 = t1659 * t1790;
t1891 = t1659 * t1792;
t1720 = t1862 * qJDD(1) - t1931;
t1890 = t1720 * t1796;
t1889 = t1720 * t1800;
t1721 = qJDD(3) + t1730;
t1888 = t1721 * t1796;
t1887 = t1721 * t1800;
t1886 = t1725 * t1796;
t1885 = t1748 * t1631;
t1884 = t1748 * t1794;
t1883 = t1748 * t1798;
t1882 = t1753 * t1693;
t1881 = t1753 * t1795;
t1880 = t1753 * t1799;
t1879 = t1761 * t1790;
t1878 = t1761 * t1792;
t1877 = t1761 * t1796;
t1876 = t1761 * t1800;
t1874 = t1763 * t1796;
t1873 = t1763 * t1800;
t1872 = t1786 * t1921;
t1580 = t1790 * t1588;
t1754 = qJ(2) * t1921 + t1831 + t1907;
t1871 = t1791 * t1754;
t1870 = t1791 * t1793;
t1581 = t1792 * t1588;
t1869 = t1793 * t1754;
t1868 = t1797 * t1754;
t1865 = -pkin(3) * t1588 + qJ(4) * t1414;
t1863 = t1797 * qJDD(1);
t1861 = -pkin(3) * t1800 - pkin(2);
t1860 = t1796 * t1534;
t1859 = t1800 * t1534;
t1858 = t1796 * t1634;
t1857 = t1800 * t1634;
t1856 = t1796 * t1696;
t1855 = t1800 * t1696;
t1854 = t1801 * t1730;
t1853 = t1797 * t1730;
t1686 = -t1737 - t1917;
t1594 = -t1686 * t1790 - t1891;
t1852 = -pkin(3) * t1655 + qJ(4) * t1594 + t1580;
t1677 = -t1917 - t1918;
t1575 = t1677 * t1792 - t1939;
t1653 = -t1714 - t1805;
t1851 = pkin(3) * t1653 + qJ(4) * t1575 - t1581;
t1850 = t1791 * t1782;
t1228 = t1278 * t1794 + t1798 * t1279;
t1201 = t1228 * t1795 + t1905;
t1226 = pkin(5) * t1227;
t1849 = pkin(4) * t1201 + t1226;
t1439 = t1607 + t1486;
t1364 = -t1436 * t1794 - t1439 * t1798;
t1366 = -t1436 * t1798 + t1439 * t1794;
t1297 = t1364 * t1799 + t1366 * t1795;
t1362 = pkin(5) * t1364;
t1848 = pkin(4) * t1297 + t1362;
t1847 = t1754 + t1907;
t1316 = t1378 * t1795 + t1799 * t1379;
t1562 = t1637 * t1796 + t1800 * t1638;
t1806 = qJDD(1) * qJ(2) + (-pkin(1) * qJD(1) + t1916) * qJD(1) - t1774;
t1731 = t1791 * t1806 + t1908;
t1732 = t1793 * t1806 - t1909;
t1676 = t1731 * t1791 + t1793 * t1732;
t1844 = -t1773 * t1797 - t1801 * t1774;
t1202 = t1228 * t1799 - t1906;
t1221 = -pkin(5) * t1416 + pkin(9) * t1228;
t1174 = -pkin(4) * t1416 + pkin(8) * t1202 - pkin(9) * t1906 + t1221 * t1799;
t1179 = -pkin(8) * t1201 - pkin(9) * t1905 - t1221 * t1795;
t1182 = -t1201 * t1790 + t1202 * t1792;
t1843 = -pkin(3) * t1416 + qJ(4) * t1182 + t1792 * t1174 + t1790 * t1179;
t1496 = -t1627 - t1628;
t1216 = -pkin(5) * t1496 + pkin(9) * t1366 + t1228;
t1219 = -pkin(9) * t1364 - t1227;
t1299 = -t1364 * t1795 + t1366 * t1799;
t1193 = -pkin(4) * t1496 + pkin(8) * t1299 + t1216 * t1799 + t1219 * t1795;
t1195 = -pkin(8) * t1297 - t1216 * t1795 + t1219 * t1799;
t1249 = -t1297 * t1790 + t1299 * t1792;
t1842 = -pkin(3) * t1496 + qJ(4) * t1249 + t1792 * t1193 + t1790 * t1195;
t1435 = (qJD(6) + t1748) * t1631 + t1846;
t1526 = -t1747 - t1627;
t1445 = t1526 * t1798 - t1937;
t1322 = -pkin(5) * t1435 + pkin(9) * t1445 - t1901;
t1444 = t1526 * t1794 + t1934;
t1353 = -pkin(9) * t1444 + t1902;
t1371 = -t1444 * t1795 + t1445 * t1799;
t1244 = -pkin(4) * t1435 + pkin(8) * t1371 + t1322 * t1799 + t1353 * t1795;
t1370 = t1444 * t1799 + t1445 * t1795;
t1261 = -pkin(8) * t1370 - t1322 * t1795 + t1353 * t1799;
t1310 = -t1370 * t1790 + t1371 * t1792;
t1841 = -pkin(3) * t1435 + qJ(4) * t1310 + t1792 * t1244 + t1790 * t1261;
t1573 = -t1628 - t1747;
t1483 = -t1573 * t1794 - t1897;
t1329 = -pkin(5) * t1929 + pkin(9) * t1483 + t1902;
t1482 = t1573 * t1798 - t1898;
t1372 = -pkin(9) * t1482 + t1901;
t1386 = -t1482 * t1795 + t1483 * t1799;
t1257 = -pkin(4) * t1929 + pkin(8) * t1386 + t1329 * t1799 + t1372 * t1795;
t1385 = t1482 * t1799 + t1483 * t1795;
t1266 = -pkin(8) * t1385 - t1329 * t1795 + t1372 * t1799;
t1321 = -t1385 * t1790 + t1386 * t1792;
t1840 = -pkin(3) * t1929 + qJ(4) * t1321 + t1792 * t1257 + t1790 * t1266;
t1476 = -t1552 * t1799 + t1555 * t1795;
t1569 = -t1691 - t1919;
t1285 = -pkin(4) * t1569 + pkin(8) * t1476 + t1316;
t1289 = -pkin(8) * t1474 - t1315;
t1384 = -t1474 * t1790 + t1476 * t1792;
t1839 = -pkin(3) * t1569 + qJ(4) * t1384 + t1792 * t1285 + t1790 * t1289;
t1614 = -t1752 - t1919;
t1516 = t1614 * t1799 - t1936;
t1551 = (qJD(5) + t1753) * t1693 + t1845;
t1399 = -pkin(4) * t1551 + pkin(8) * t1516 - t1899;
t1515 = t1614 * t1795 + t1933;
t1423 = -pkin(8) * t1515 + t1900;
t1426 = -t1515 * t1790 + t1516 * t1792;
t1838 = -pkin(3) * t1551 + qJ(4) * t1426 + t1792 * t1399 + t1790 * t1423;
t1640 = -t1691 - t1752;
t1532 = -t1640 * t1795 - t1893;
t1402 = -pkin(4) * t1927 + pkin(8) * t1532 + t1900;
t1531 = t1640 * t1799 - t1894;
t1443 = -pkin(8) * t1531 + t1899;
t1452 = -t1531 * t1790 + t1532 * t1792;
t1837 = -pkin(3) * t1927 + qJ(4) * t1452 + t1792 * t1402 + t1790 * t1443;
t1567 = t1654 * t1792 + t1656 * t1790;
t1663 = t1737 + t1918;
t1836 = pkin(3) * t1663 + qJ(4) * t1567 + t1414;
t1394 = t1414 * t1796 - t1588 * t1800;
t1835 = pkin(2) * t1394 + t1865;
t1745 = -t1758 - t1920;
t1680 = t1745 * t1800 - t1888;
t1834 = pkin(2) * t1680 - t1638;
t1833 = pkin(4) * t1531 - t1379;
t1772 = qJDD(1) * t1801 - t1797 * t1921;
t1832 = -pkin(6) * t1772 - g(3) * t1797;
t1830 = pkin(5) * t1444 - t1278;
t1413 = -t1502 * t1792 + t1503 * t1790;
t1675 = t1731 * t1793 - t1732 * t1791;
t1829 = t1773 * t1801 - t1797 * t1774;
t1771 = t1801 * t1921 + t1863;
t1529 = t1575 * t1796 + t1653 * t1800;
t1827 = pkin(2) * t1529 + t1851;
t1535 = t1594 * t1796 - t1655 * t1800;
t1826 = pkin(2) * t1535 + t1852;
t1719 = -t1917 - t1920;
t1664 = t1719 * t1796 + t1932;
t1825 = pkin(2) * t1664 - t1637;
t1824 = pkin(4) * t1515 - t1378;
t1822 = pkin(5) * t1482 - t1279;
t1765 = t1793 * t1923;
t1821 = -t1797 * t1765 + t1782 * t1801;
t1820 = t1765 * t1801 + t1793 * t1863;
t1264 = t1316 * t1792 - t1904;
t1305 = -pkin(4) * t1514 + pkin(8) * t1316;
t1819 = -pkin(3) * t1514 - pkin(8) * t1904 + qJ(4) * t1264 + t1792 * t1305;
t1176 = t1182 * t1796 - t1416 * t1800;
t1818 = pkin(2) * t1176 + t1843;
t1234 = t1249 * t1796 - t1496 * t1800;
t1817 = pkin(2) * t1234 + t1842;
t1274 = t1310 * t1796 - t1435 * t1800;
t1816 = pkin(2) * t1274 + t1841;
t1290 = t1321 * t1796 - t1800 * t1929;
t1815 = pkin(2) * t1290 + t1840;
t1368 = t1384 * t1796 - t1569 * t1800;
t1814 = pkin(2) * t1368 + t1839;
t1397 = t1426 * t1796 - t1551 * t1800;
t1813 = pkin(2) * t1397 + t1838;
t1404 = t1452 * t1796 - t1800 * t1927;
t1812 = pkin(2) * t1404 + t1837;
t1527 = t1567 * t1796 + t1663 * t1800;
t1811 = pkin(2) * t1527 + t1836;
t1810 = pkin(4) * t1370 + t1830;
t1808 = pkin(4) * t1385 + t1822;
t1258 = t1264 * t1796 - t1514 * t1800;
t1807 = pkin(2) * t1258 + t1819;
t1784 = t1787 * t1921;
t1781 = t1787 * qJDD(1);
t1779 = t1786 * qJDD(1);
t1776 = t1921 * t1870;
t1775 = 0.2e1 * t1850;
t1770 = -t1784 + t1872;
t1769 = t1784 + t1872;
t1768 = t1781 - t1779;
t1767 = t1781 + t1779;
t1764 = t1791 * t1923;
t1755 = -pkin(6) * t1771 + g(3) * t1801;
t1746 = -t1758 + t1920;
t1744 = t1917 - t1920;
t1743 = t1772 * t1870;
t1742 = t1771 * t1870;
t1739 = t1764 * t1801 + t1791 * t1863;
t1738 = t1797 * t1764 - t1780 * t1801;
t1728 = t1758 - t1917;
t1726 = -0.2e1 * t1751 + t1760;
t1724 = t1759 + 0.2e1 * t1875;
t1715 = t1800 * t1725;
t1712 = (t1874 - t1876) * qJD(3);
t1711 = (-t1873 - t1877) * qJD(3);
t1709 = -qJ(2) * t1765 + t1793 * t1847;
t1708 = qJ(2) * t1764 - t1791 * t1847;
t1707 = -t1737 + t1917;
t1706 = -t1917 + t1918;
t1697 = -t1917 - t1758;
t1694 = t1737 - t1918;
t1690 = -qJD(3) * t1874 - t1800 * t1809;
t1689 = qJD(3) * t1873 - t1796 * t1809;
t1688 = qJD(3) * t1876 + t1886;
t1687 = qJD(3) * t1877 - t1715;
t1683 = -t1745 * t1796 - t1887;
t1682 = -t1746 * t1796 + t1932;
t1681 = t1744 * t1800 - t1888;
t1679 = t1746 * t1800 + t1935;
t1678 = t1744 * t1796 + t1887;
t1671 = -t1724 * t1800 - t1726 * t1796;
t1670 = -t1759 * t1800 + t1760 * t1796;
t1669 = -t1724 * t1796 + t1726 * t1800;
t1667 = -t1691 + t1752;
t1666 = -t1752 + t1919;
t1665 = t1719 * t1800 - t1935;
t1649 = pkin(1) * t1754 + qJ(2) * t1676;
t1648 = (-t1740 * t1792 + t1741 * t1790) * t1761;
t1647 = (-t1740 * t1790 - t1741 * t1792) * t1761;
t1646 = -t1711 * t1791 + t1712 * t1793;
t1645 = t1711 * t1793 + t1712 * t1791;
t1644 = t1705 * t1792 - t1741 * t1879;
t1643 = t1705 * t1790 + t1741 * t1878;
t1642 = t1740 * t1878 + t1790 * t1805;
t1641 = -t1740 * t1879 + t1792 * t1805;
t1639 = pkin(1) * t1769 + qJ(2) * t1767 + t1676;
t1635 = -pkin(7) * t1680 - t1889;
t1633 = t1691 - t1919;
t1632 = -pkin(7) * t1664 - t1890;
t1626 = -t1689 * t1791 + t1690 * t1793;
t1625 = -t1687 * t1791 + t1688 * t1793;
t1624 = t1689 * t1793 + t1690 * t1791;
t1623 = t1687 * t1793 + t1688 * t1791;
t1622 = -t1680 * t1791 + t1683 * t1793;
t1621 = -t1679 * t1791 + t1682 * t1793;
t1620 = -t1678 * t1791 + t1681 * t1793;
t1619 = t1680 * t1793 + t1683 * t1791;
t1618 = t1679 * t1793 + t1682 * t1791;
t1617 = t1678 * t1793 + t1681 * t1791;
t1616 = t1648 * t1800 + t1886;
t1615 = t1648 * t1796 - t1715;
t1613 = t1706 * t1792 - t1892;
t1612 = -t1707 * t1790 + t1938;
t1611 = t1706 * t1790 + t1891;
t1610 = t1707 * t1792 + t1939;
t1609 = -pkin(2) * t1726 + pkin(7) * t1683 - t1890;
t1606 = -t1628 + t1747;
t1605 = t1627 - t1747;
t1601 = t1644 * t1800 + t1856;
t1600 = t1642 * t1800 - t1856;
t1599 = t1644 * t1796 - t1855;
t1598 = t1642 * t1796 + t1855;
t1593 = t1686 * t1792 - t1892;
t1592 = -pkin(2) * t1724 + pkin(7) * t1665 + t1889;
t1585 = (-t1692 * t1799 + t1693 * t1795) * t1753;
t1584 = (-t1692 * t1795 - t1693 * t1799) * t1753;
t1579 = -t1669 * t1791 + t1671 * t1793;
t1578 = -t1668 * t1791 + t1670 * t1793;
t1577 = t1669 * t1793 + t1671 * t1791;
t1576 = t1668 * t1793 + t1670 * t1791;
t1574 = t1677 * t1790 + t1938;
t1572 = -t1664 * t1791 + t1665 * t1793;
t1571 = t1664 * t1793 + t1665 * t1791;
t1566 = t1653 * t1792 - t1655 * t1790;
t1565 = t1654 * t1790 - t1656 * t1792;
t1564 = t1653 * t1790 + t1655 * t1792;
t1560 = t1613 * t1800 + t1654 * t1796;
t1559 = t1612 * t1800 + t1656 * t1796;
t1558 = t1613 * t1796 - t1654 * t1800;
t1557 = t1612 * t1796 - t1656 * t1800;
t1548 = pkin(2) * t1720 + pkin(7) * t1562;
t1547 = t1666 * t1799 - t1894;
t1546 = -t1667 * t1795 + t1933;
t1545 = t1666 * t1795 + t1893;
t1544 = t1667 * t1799 + t1936;
t1543 = t1589 * t1799 - t1693 * t1881;
t1542 = t1589 * t1795 + t1693 * t1880;
t1541 = t1692 * t1880 + t1795 * t1823;
t1540 = t1692 * t1881 - t1799 * t1823;
t1539 = -pkin(1) * t1576 - t1913;
t1538 = t1566 * t1800 + t1694 * t1796;
t1537 = t1566 * t1796 - t1694 * t1800;
t1536 = t1594 * t1800 + t1655 * t1796;
t1533 = t1628 - t1627;
t1530 = t1575 * t1800 - t1653 * t1796;
t1528 = t1567 * t1800 - t1663 * t1796;
t1525 = -t1615 * t1791 + t1616 * t1793;
t1524 = t1615 * t1793 + t1616 * t1791;
t1523 = -pkin(7) * t1668 - t1561;
t1519 = (-t1629 * t1798 + t1631 * t1794) * t1748;
t1518 = (-t1629 * t1794 - t1631 * t1798) * t1748;
t1517 = -pkin(1) * t1619 - t1834;
t1512 = -t1599 * t1791 + t1601 * t1793;
t1511 = -t1598 * t1791 + t1600 * t1793;
t1510 = t1599 * t1793 + t1601 * t1791;
t1509 = t1598 * t1793 + t1600 * t1791;
t1508 = -qJ(4) * t1593 + t1581;
t1507 = -t1584 * t1790 + t1585 * t1792;
t1506 = t1584 * t1792 + t1585 * t1790;
t1505 = -qJ(4) * t1574 + t1580;
t1504 = -pkin(2) * t1697 + pkin(7) * t1670 + t1562;
t1499 = -pkin(1) * t1571 - t1825;
t1498 = t1507 * t1800 + t1718 * t1796;
t1497 = t1507 * t1796 - t1718 * t1800;
t1494 = -qJ(2) * t1619 - t1609 * t1791 + t1635 * t1793;
t1493 = t1562 * t1793 - t1896;
t1492 = t1562 * t1791 + t1895;
t1491 = -pkin(1) * t1726 + qJ(2) * t1622 + t1609 * t1793 + t1635 * t1791;
t1490 = t1605 * t1798 - t1898;
t1489 = -t1606 * t1794 + t1934;
t1488 = t1605 * t1794 + t1897;
t1487 = t1606 * t1798 + t1937;
t1485 = -qJD(6) * t1631 - t1846;
t1484 = -qJ(2) * t1571 - t1592 * t1791 + t1632 * t1793;
t1480 = -t1558 * t1791 + t1560 * t1793;
t1479 = -t1557 * t1791 + t1559 * t1793;
t1478 = t1558 * t1793 + t1560 * t1791;
t1477 = t1557 * t1793 + t1559 * t1791;
t1475 = -t1551 * t1799 - t1795 * t1927;
t1473 = -t1551 * t1795 + t1799 * t1927;
t1470 = -pkin(1) * t1724 + qJ(2) * t1572 + t1592 * t1793 + t1632 * t1791;
t1469 = -t1545 * t1790 + t1547 * t1792;
t1468 = -t1544 * t1790 + t1546 * t1792;
t1467 = t1545 * t1792 + t1547 * t1790;
t1466 = t1544 * t1792 + t1546 * t1790;
t1465 = -t1542 * t1790 + t1543 * t1792;
t1464 = -t1540 * t1790 + t1541 * t1792;
t1463 = t1542 * t1792 + t1543 * t1790;
t1462 = t1540 * t1792 + t1541 * t1790;
t1461 = -t1537 * t1791 + t1538 * t1793;
t1460 = t1537 * t1793 + t1538 * t1791;
t1459 = -pkin(3) * t1593 + t1503;
t1458 = -pkin(3) * t1574 + t1502;
t1457 = -t1535 * t1791 + t1536 * t1793;
t1456 = t1535 * t1793 + t1536 * t1791;
t1451 = t1531 * t1792 + t1532 * t1790;
t1449 = -t1529 * t1791 + t1530 * t1793;
t1448 = t1529 * t1793 + t1530 * t1791;
t1447 = -t1527 * t1791 + t1528 * t1793;
t1446 = t1527 * t1793 + t1528 * t1791;
t1432 = -t1518 * t1795 + t1519 * t1799;
t1431 = t1518 * t1799 + t1519 * t1795;
t1430 = t1486 * t1798 - t1631 * t1884;
t1429 = t1486 * t1794 + t1631 * t1883;
t1428 = -t1485 * t1794 + t1629 * t1883;
t1427 = t1485 * t1798 + t1629 * t1884;
t1425 = t1515 * t1792 + t1516 * t1790;
t1421 = t1465 * t1800 + t1858;
t1420 = t1464 * t1800 - t1858;
t1419 = t1465 * t1796 - t1857;
t1418 = t1464 * t1796 + t1857;
t1417 = -pkin(1) * t1492 - t1914;
t1411 = t1469 * t1800 - t1552 * t1796;
t1410 = t1468 * t1800 + t1555 * t1796;
t1409 = t1469 * t1796 + t1552 * t1800;
t1408 = t1468 * t1796 - t1555 * t1800;
t1407 = -t1497 * t1791 + t1498 * t1793;
t1406 = t1497 * t1793 + t1498 * t1791;
t1405 = t1452 * t1800 + t1796 * t1927;
t1403 = -qJ(2) * t1576 - t1504 * t1791 + t1523 * t1793;
t1400 = -pkin(1) * t1697 + qJ(2) * t1578 + t1504 * t1793 + t1523 * t1791;
t1398 = t1426 * t1800 + t1551 * t1796;
t1395 = t1414 * t1800 + t1588 * t1796;
t1393 = -pkin(7) * t1895 - qJ(2) * t1492 - t1548 * t1791;
t1392 = -qJ(4) * t1565 - t1413;
t1391 = -t1488 * t1795 + t1490 * t1799;
t1390 = -t1487 * t1795 + t1489 * t1799;
t1389 = t1488 * t1799 + t1490 * t1795;
t1388 = t1487 * t1799 + t1489 * t1795;
t1387 = pkin(1) * t1720 - pkin(7) * t1896 + qJ(2) * t1493 + t1548 * t1793;
t1383 = -t1473 * t1790 + t1475 * t1792;
t1382 = t1474 * t1792 + t1476 * t1790;
t1381 = t1473 * t1792 + t1475 * t1790;
t1376 = -pkin(7) * t1535 - t1459 * t1796 + t1508 * t1800;
t1375 = t1383 * t1800 + t1633 * t1796;
t1374 = t1383 * t1796 - t1633 * t1800;
t1373 = -pkin(7) * t1529 - t1458 * t1796 + t1505 * t1800;
t1369 = t1384 * t1800 + t1569 * t1796;
t1367 = -pkin(1) * t1456 - t1826;
t1365 = -t1435 * t1798 - t1794 * t1929;
t1363 = -t1435 * t1794 + t1798 * t1929;
t1361 = -t1431 * t1790 + t1432 * t1792;
t1360 = t1431 * t1792 + t1432 * t1790;
t1359 = -pkin(1) * t1448 - t1827;
t1358 = -t1429 * t1795 + t1430 * t1799;
t1357 = -t1427 * t1795 + t1428 * t1799;
t1356 = t1429 * t1799 + t1430 * t1795;
t1355 = t1427 * t1799 + t1428 * t1795;
t1354 = -pkin(2) * t1593 + pkin(7) * t1536 + t1459 * t1800 + t1508 * t1796;
t1352 = -t1419 * t1791 + t1421 * t1793;
t1351 = -t1418 * t1791 + t1420 * t1793;
t1350 = t1419 * t1793 + t1421 * t1791;
t1349 = t1418 * t1793 + t1420 * t1791;
t1348 = t1361 * t1800 + t1716 * t1796;
t1347 = t1361 * t1796 - t1716 * t1800;
t1346 = -pkin(2) * t1574 + pkin(7) * t1530 + t1458 * t1800 + t1505 * t1796;
t1344 = -pkin(7) * t1527 + t1392 * t1800 + t1565 * t1912;
t1341 = -pkin(3) * t1382 - t1910;
t1340 = -t1409 * t1791 + t1411 * t1793;
t1339 = -t1408 * t1791 + t1410 * t1793;
t1338 = t1409 * t1793 + t1411 * t1791;
t1337 = t1408 * t1793 + t1410 * t1791;
t1336 = pkin(7) * t1528 + t1796 * t1392 + t1565 * t1861;
t1335 = -t1404 * t1791 + t1405 * t1793;
t1334 = t1404 * t1793 + t1405 * t1791;
t1333 = -t1397 * t1791 + t1398 * t1793;
t1332 = t1397 * t1793 + t1398 * t1791;
t1331 = -t1394 * t1791 + t1395 * t1793;
t1330 = t1394 * t1793 + t1395 * t1791;
t1328 = -pkin(1) * t1446 - t1811;
t1327 = -pkin(3) * t1451 - t1833;
t1326 = -t1389 * t1790 + t1391 * t1792;
t1325 = -t1388 * t1790 + t1390 * t1792;
t1324 = t1389 * t1792 + t1391 * t1790;
t1323 = t1388 * t1792 + t1390 * t1790;
t1320 = t1385 * t1792 + t1386 * t1790;
t1318 = -qJ(4) * t1451 - t1402 * t1790 + t1443 * t1792;
t1317 = -pkin(3) * t1425 - t1824;
t1314 = -qJ(4) * t1425 - t1399 * t1790 + t1423 * t1792;
t1313 = -t1374 * t1791 + t1375 * t1793;
t1312 = t1374 * t1793 + t1375 * t1791;
t1311 = -pkin(7) * t1394 + (-qJ(4) * t1800 + t1912) * t1413;
t1309 = t1370 * t1792 + t1371 * t1790;
t1307 = -t1368 * t1791 + t1369 * t1793;
t1306 = t1368 * t1793 + t1369 * t1791;
t1303 = t1326 * t1800 - t1436 * t1796;
t1302 = t1325 * t1800 + t1439 * t1796;
t1301 = t1326 * t1796 + t1436 * t1800;
t1300 = t1325 * t1796 - t1439 * t1800;
t1298 = -t1363 * t1795 + t1365 * t1799;
t1296 = t1363 * t1799 + t1365 * t1795;
t1295 = -t1356 * t1790 + t1358 * t1792;
t1294 = -t1355 * t1790 + t1357 * t1792;
t1293 = t1356 * t1792 + t1358 * t1790;
t1292 = t1355 * t1792 + t1357 * t1790;
t1291 = t1321 * t1800 + t1796 * t1929;
t1287 = -t1347 * t1791 + t1348 * t1793;
t1286 = t1347 * t1793 + t1348 * t1791;
t1283 = t1295 * t1800 + t1860;
t1282 = t1294 * t1800 - t1860;
t1281 = t1295 * t1796 - t1859;
t1280 = t1294 * t1796 + t1859;
t1276 = -qJ(2) * t1456 - t1354 * t1791 + t1376 * t1793;
t1275 = t1310 * t1800 + t1435 * t1796;
t1273 = -qJ(2) * t1448 - t1346 * t1791 + t1373 * t1793;
t1272 = pkin(7) * t1395 + (-qJ(4) * t1796 + t1861) * t1413;
t1271 = -pkin(1) * t1593 + qJ(2) * t1457 + t1354 * t1793 + t1376 * t1791;
t1270 = -pkin(1) * t1574 + qJ(2) * t1449 + t1346 * t1793 + t1373 * t1791;
t1269 = -qJ(2) * t1446 - t1336 * t1791 + t1344 * t1793;
t1268 = -pkin(1) * t1330 - t1835;
t1267 = -pkin(1) * t1565 + qJ(2) * t1447 + t1336 * t1793 + t1344 * t1791;
t1263 = t1316 * t1790 + t1903;
t1259 = t1264 * t1800 + t1514 * t1796;
t1255 = -pkin(1) * t1334 - t1812;
t1254 = -pkin(7) * t1404 + t1318 * t1800 - t1327 * t1796;
t1253 = -t1301 * t1791 + t1303 * t1793;
t1252 = -t1300 * t1791 + t1302 * t1793;
t1251 = t1301 * t1793 + t1303 * t1791;
t1250 = t1300 * t1793 + t1302 * t1791;
t1248 = -t1296 * t1790 + t1298 * t1792;
t1247 = t1297 * t1792 + t1299 * t1790;
t1246 = t1296 * t1792 + t1298 * t1790;
t1242 = -pkin(7) * t1397 + t1314 * t1800 - t1317 * t1796;
t1241 = -pkin(1) * t1332 - t1813;
t1240 = -t1290 * t1791 + t1291 * t1793;
t1239 = t1290 * t1793 + t1291 * t1791;
t1238 = -pkin(2) * t1451 + pkin(7) * t1405 + t1318 * t1796 + t1327 * t1800;
t1237 = t1248 * t1800 + t1533 * t1796;
t1236 = t1248 * t1796 - t1533 * t1800;
t1235 = t1249 * t1800 + t1496 * t1796;
t1233 = -t1281 * t1791 + t1283 * t1793;
t1232 = -t1280 * t1791 + t1282 * t1793;
t1231 = t1281 * t1793 + t1283 * t1791;
t1230 = t1280 * t1793 + t1282 * t1791;
t1229 = -pkin(2) * t1425 + pkin(7) * t1398 + t1314 * t1796 + t1317 * t1800;
t1225 = -t1274 * t1791 + t1275 * t1793;
t1224 = t1274 * t1793 + t1275 * t1791;
t1223 = -pkin(3) * t1320 - t1808;
t1222 = -pkin(3) * t1263 - t1911;
t1220 = -qJ(4) * t1382 - t1285 * t1790 + t1289 * t1792;
t1218 = -pkin(3) * t1309 - t1810;
t1217 = -qJ(2) * t1330 - t1272 * t1791 + t1311 * t1793;
t1215 = -pkin(1) * t1413 + qJ(2) * t1331 + t1272 * t1793 + t1311 * t1791;
t1214 = -pkin(8) * t1903 - qJ(4) * t1263 - t1305 * t1790;
t1213 = -pkin(3) * t1247 - t1848;
t1212 = -t1258 * t1791 + t1259 * t1793;
t1211 = t1258 * t1793 + t1259 * t1791;
t1210 = -pkin(7) * t1368 + t1220 * t1800 - t1341 * t1796;
t1209 = -pkin(2) * t1382 + pkin(7) * t1369 + t1220 * t1796 + t1341 * t1800;
t1208 = -pkin(1) * t1306 - t1814;
t1207 = -qJ(4) * t1320 - t1257 * t1790 + t1266 * t1792;
t1206 = -t1236 * t1791 + t1237 * t1793;
t1205 = t1236 * t1793 + t1237 * t1791;
t1204 = -t1234 * t1791 + t1235 * t1793;
t1203 = t1234 * t1793 + t1235 * t1791;
t1200 = -qJ(2) * t1334 - t1238 * t1791 + t1254 * t1793;
t1199 = -qJ(4) * t1309 - t1244 * t1790 + t1261 * t1792;
t1198 = -pkin(1) * t1451 + qJ(2) * t1335 + t1238 * t1793 + t1254 * t1791;
t1197 = -qJ(2) * t1332 - t1229 * t1791 + t1242 * t1793;
t1196 = -pkin(1) * t1425 + qJ(2) * t1333 + t1229 * t1793 + t1242 * t1791;
t1191 = -pkin(1) * t1239 - t1815;
t1190 = -pkin(7) * t1290 + t1207 * t1800 - t1223 * t1796;
t1189 = -pkin(7) * t1258 + t1214 * t1800 - t1222 * t1796;
t1188 = -pkin(2) * t1320 + pkin(7) * t1291 + t1207 * t1796 + t1223 * t1800;
t1187 = -pkin(1) * t1224 - t1816;
t1186 = -qJ(2) * t1306 - t1209 * t1791 + t1210 * t1793;
t1185 = -pkin(7) * t1274 + t1199 * t1800 - t1218 * t1796;
t1184 = -pkin(1) * t1382 + qJ(2) * t1307 + t1209 * t1793 + t1210 * t1791;
t1183 = -pkin(1) * t1211 - t1807;
t1181 = t1201 * t1792 + t1202 * t1790;
t1177 = t1182 * t1800 + t1416 * t1796;
t1175 = -pkin(2) * t1263 + pkin(7) * t1259 + t1214 * t1796 + t1222 * t1800;
t1172 = -pkin(2) * t1309 + pkin(7) * t1275 + t1199 * t1796 + t1218 * t1800;
t1171 = -qJ(4) * t1247 - t1193 * t1790 + t1195 * t1792;
t1170 = -pkin(3) * t1181 - t1849;
t1169 = -qJ(2) * t1239 - t1188 * t1791 + t1190 * t1793;
t1168 = -t1176 * t1791 + t1177 * t1793;
t1167 = t1176 * t1793 + t1177 * t1791;
t1166 = -pkin(1) * t1320 + qJ(2) * t1240 + t1188 * t1793 + t1190 * t1791;
t1165 = -qJ(2) * t1224 - t1172 * t1791 + t1185 * t1793;
t1164 = -qJ(2) * t1211 - t1175 * t1791 + t1189 * t1793;
t1163 = -pkin(7) * t1234 + t1171 * t1800 - t1213 * t1796;
t1162 = -pkin(1) * t1309 + qJ(2) * t1225 + t1172 * t1793 + t1185 * t1791;
t1161 = -pkin(1) * t1203 - t1817;
t1160 = -pkin(1) * t1263 + qJ(2) * t1212 + t1175 * t1793 + t1189 * t1791;
t1159 = -pkin(2) * t1247 + pkin(7) * t1235 + t1171 * t1796 + t1213 * t1800;
t1158 = -qJ(4) * t1181 - t1174 * t1790 + t1179 * t1792;
t1157 = -qJ(2) * t1203 - t1159 * t1791 + t1163 * t1793;
t1156 = -pkin(1) * t1247 + qJ(2) * t1204 + t1159 * t1793 + t1163 * t1791;
t1155 = -pkin(7) * t1176 + t1158 * t1800 - t1170 * t1796;
t1154 = -pkin(1) * t1167 - t1818;
t1153 = -pkin(2) * t1181 + pkin(7) * t1177 + t1158 * t1796 + t1170 * t1800;
t1152 = -qJ(2) * t1167 - t1153 * t1791 + t1155 * t1793;
t1151 = -pkin(1) * t1181 + qJ(2) * t1168 + t1153 * t1793 + t1155 * t1791;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1772, 0, -t1771, 0, t1832, -t1755, -t1829, -pkin(6) * t1829, t1743, t1768 * t1801 + t1797 * t1770, t1739, -t1743, t1820, 0, -pkin(6) * t1821 - t1797 * t1731 - t1801 * t1871, -pkin(6) * t1738 - t1797 * t1732 - t1801 * t1869, t1801 * t1675 - pkin(6) * (t1797 * t1767 + t1769 * t1801), -pkin(6) * (t1797 * t1676 + t1754 * t1801) - (pkin(1) * t1797 - qJ(2) * t1801) * t1675, t1626 * t1801 + t1853, t1579 * t1801 + t1797 * t1728, t1621 * t1801 + t1797 * t1760, t1625 * t1801 - t1853, t1620 * t1801 - t1797 * t1759, t1797 * qJDD(3) + t1646 * t1801, t1801 * t1484 - t1797 * t1499 - pkin(6) * (t1797 * t1572 - t1724 * t1801), t1801 * t1494 - t1797 * t1517 - pkin(6) * (t1797 * t1622 - t1726 * t1801), t1801 * t1403 - t1797 * t1539 - pkin(6) * (t1797 * t1578 - t1697 * t1801), t1801 * t1393 - t1797 * t1417 - pkin(6) * (t1797 * t1493 + t1720 * t1801), t1512 * t1801 + t1797 * t1643, t1461 * t1801 + t1797 * t1564, t1479 * t1801 + t1797 * t1610, t1511 * t1801 - t1797 * t1641, t1480 * t1801 + t1797 * t1611, t1525 * t1801 + t1797 * t1647, t1801 * t1273 - t1797 * t1359 - pkin(6) * (t1797 * t1449 - t1574 * t1801), t1801 * t1276 - t1797 * t1367 - pkin(6) * (t1797 * t1457 - t1593 * t1801), t1801 * t1269 - t1797 * t1328 - pkin(6) * (t1797 * t1447 - t1565 * t1801), t1801 * t1217 - t1797 * t1268 - pkin(6) * (t1797 * t1331 - t1413 * t1801), t1352 * t1801 + t1797 * t1463, t1313 * t1801 + t1797 * t1381, t1339 * t1801 + t1797 * t1466, t1351 * t1801 + t1797 * t1462, t1340 * t1801 + t1797 * t1467, t1407 * t1801 + t1797 * t1506, t1801 * t1197 - t1797 * t1241 - pkin(6) * (t1797 * t1333 - t1425 * t1801), t1801 * t1200 - t1797 * t1255 - pkin(6) * (t1797 * t1335 - t1451 * t1801), t1801 * t1186 - t1797 * t1208 - pkin(6) * (t1797 * t1307 - t1382 * t1801), t1801 * t1164 - t1797 * t1183 - pkin(6) * (t1797 * t1212 - t1263 * t1801), t1233 * t1801 + t1797 * t1293, t1206 * t1801 + t1797 * t1246, t1252 * t1801 + t1797 * t1323, t1232 * t1801 + t1797 * t1292, t1253 * t1801 + t1797 * t1324, t1287 * t1801 + t1797 * t1360, t1801 * t1165 - t1797 * t1187 - pkin(6) * (t1797 * t1225 - t1309 * t1801), t1801 * t1169 - t1797 * t1191 - pkin(6) * (t1797 * t1240 - t1320 * t1801), t1801 * t1157 - t1797 * t1161 - pkin(6) * (t1797 * t1204 - t1247 * t1801), t1801 * t1152 - t1797 * t1154 - pkin(6) * (t1797 * t1168 - t1181 * t1801); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1771, 0, t1772, 0, t1755, t1832, t1844, pkin(6) * t1844, t1742, t1797 * t1768 - t1770 * t1801, t1738, -t1742, -t1821, 0, -pkin(6) * t1820 + t1801 * t1731 - t1791 * t1868, pkin(6) * t1739 + t1732 * t1801 - t1793 * t1868, t1797 * t1675 + pkin(6) * (t1767 * t1801 - t1797 * t1769), pkin(6) * (t1676 * t1801 - t1868) - (-pkin(1) * t1801 - qJ(2) * t1797) * t1675, t1797 * t1626 - t1854, t1797 * t1579 - t1728 * t1801, t1797 * t1621 - t1760 * t1801, t1797 * t1625 + t1854, t1797 * t1620 + t1759 * t1801, -qJDD(3) * t1801 + t1797 * t1646, t1797 * t1484 + t1801 * t1499 + pkin(6) * (t1572 * t1801 + t1797 * t1724), t1797 * t1494 + t1801 * t1517 + pkin(6) * (t1622 * t1801 + t1797 * t1726), t1797 * t1403 + t1801 * t1539 + pkin(6) * (t1578 * t1801 + t1797 * t1697), t1797 * t1393 + t1801 * t1417 + pkin(6) * (t1493 * t1801 - t1797 * t1720), t1797 * t1512 - t1643 * t1801, t1797 * t1461 - t1564 * t1801, t1797 * t1479 - t1610 * t1801, t1797 * t1511 + t1641 * t1801, t1797 * t1480 - t1611 * t1801, t1797 * t1525 - t1647 * t1801, t1797 * t1273 + t1801 * t1359 + pkin(6) * (t1449 * t1801 + t1797 * t1574), t1797 * t1276 + t1801 * t1367 + pkin(6) * (t1457 * t1801 + t1797 * t1593), t1797 * t1269 + t1801 * t1328 + pkin(6) * (t1447 * t1801 + t1797 * t1565), t1797 * t1217 + t1801 * t1268 + pkin(6) * (t1331 * t1801 + t1797 * t1413), t1797 * t1352 - t1463 * t1801, t1797 * t1313 - t1381 * t1801, t1797 * t1339 - t1466 * t1801, t1797 * t1351 - t1462 * t1801, t1797 * t1340 - t1467 * t1801, t1797 * t1407 - t1506 * t1801, t1797 * t1197 + t1801 * t1241 + pkin(6) * (t1333 * t1801 + t1797 * t1425), t1797 * t1200 + t1801 * t1255 + pkin(6) * (t1335 * t1801 + t1797 * t1451), t1797 * t1186 + t1801 * t1208 + pkin(6) * (t1307 * t1801 + t1797 * t1382), t1797 * t1164 + t1801 * t1183 + pkin(6) * (t1212 * t1801 + t1797 * t1263), t1797 * t1233 - t1293 * t1801, t1797 * t1206 - t1246 * t1801, t1797 * t1252 - t1323 * t1801, t1797 * t1232 - t1292 * t1801, t1797 * t1253 - t1324 * t1801, t1797 * t1287 - t1360 * t1801, t1797 * t1165 + t1801 * t1187 + pkin(6) * (t1225 * t1801 + t1797 * t1309), t1797 * t1169 + t1801 * t1191 + pkin(6) * (t1240 * t1801 + t1797 * t1320), t1797 * t1157 + t1801 * t1161 + pkin(6) * (t1204 * t1801 + t1797 * t1247), t1797 * t1152 + t1801 * t1154 + pkin(6) * (t1168 * t1801 + t1797 * t1181); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1773, t1774, 0, 0, t1779, t1775, 0, t1781, 0, 0, t1709, t1708, t1639, t1649, t1624, t1577, t1618, t1623, t1617, t1645, t1470, t1491, t1400, t1387, t1510, t1460, t1477, t1509, t1478, t1524, t1270, t1271, t1267, t1215, t1350, t1312, t1337, t1349, t1338, t1406, t1196, t1198, t1184, t1160, t1231, t1205, t1250, t1230, t1251, t1286, t1162, t1166, t1156, t1151; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1921, 0, 0, -g(3), -t1773, 0, t1850, t1768, t1764, -t1850, t1765, 0, -t1871, -t1869, t1675, qJ(2) * t1675, t1626, t1579, t1621, t1625, t1620, t1646, t1484, t1494, t1403, t1393, t1512, t1461, t1479, t1511, t1480, t1525, t1273, t1276, t1269, t1217, t1352, t1313, t1339, t1351, t1340, t1407, t1197, t1200, t1186, t1164, t1233, t1206, t1252, t1232, t1253, t1287, t1165, t1169, t1157, t1152; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1921, 0, qJDD(1), 0, g(3), 0, -t1774, 0, t1776, -t1770, -t1780, -t1776, -t1782, 0, t1731, t1732, 0, pkin(1) * t1675, -t1730, -t1728, -t1760, t1730, t1759, -qJDD(3), t1499, t1517, t1539, t1417, -t1643, -t1564, -t1610, t1641, -t1611, -t1647, t1359, t1367, t1328, t1268, -t1463, -t1381, -t1466, -t1462, -t1467, -t1506, t1241, t1255, t1208, t1183, -t1293, -t1246, -t1323, -t1292, -t1324, -t1360, t1187, t1191, t1161, t1154; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1773, t1774, 0, 0, t1779, t1775, 0, t1781, 0, 0, t1709, t1708, t1639, t1649, t1624, t1577, t1618, t1623, t1617, t1645, t1470, t1491, t1400, t1387, t1510, t1460, t1477, t1509, t1478, t1524, t1270, t1271, t1267, t1215, t1350, t1312, t1337, t1349, t1338, t1406, t1196, t1198, t1184, t1160, t1231, t1205, t1250, t1230, t1251, t1286, t1162, t1166, t1156, t1151; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1780, t1782, t1776, 0, t1784, 0, 0, -t1754, t1731, 0, t1690, t1671, t1682, t1688, t1681, t1712, t1632, t1635, t1523, -pkin(7) * t1561, t1601, t1538, t1559, t1600, t1560, t1616, t1373, t1376, t1344, t1311, t1421, t1375, t1410, t1420, t1411, t1498, t1242, t1254, t1210, t1189, t1283, t1237, t1302, t1282, t1303, t1348, t1185, t1190, t1163, t1155; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1780, -t1872, t1782, -t1776, 0, t1754, 0, t1732, 0, t1689, t1669, t1679, t1687, t1678, t1711, t1592, t1609, t1504, t1548, t1599, t1537, t1557, t1598, t1558, t1615, t1346, t1354, t1336, t1272, t1419, t1374, t1408, t1418, t1409, t1497, t1229, t1238, t1209, t1175, t1281, t1236, t1300, t1280, t1301, t1347, t1172, t1188, t1159, t1153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1776, t1770, t1780, t1776, t1782, 0, -t1731, -t1732, 0, 0, t1730, t1728, t1760, -t1730, -t1759, qJDD(3), t1825, t1834, t1913, t1914, t1643, t1564, t1610, -t1641, t1611, t1647, t1827, t1826, t1811, t1835, t1463, t1381, t1466, t1462, t1467, t1506, t1813, t1812, t1814, t1807, t1293, t1246, t1323, t1292, t1324, t1360, t1816, t1815, t1817, t1818; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1809, -t1724, t1925, t1751, t1744, -t1751, 0, -t1720, t1637, 0, t1644, t1566, t1612, t1642, t1613, t1648, t1505, t1508, t1392, -qJ(4) * t1413, t1465, t1383, t1468, t1464, t1469, t1507, t1314, t1318, t1220, t1214, t1295, t1248, t1325, t1294, t1326, t1361, t1199, t1207, t1171, t1158; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1875, t1726, t1746, -t1725, t1721, -t1875, t1720, 0, t1638, 0, -t1696, -t1694, -t1656, t1696, -t1654, -t1725, t1458, t1459, -pkin(3) * t1565, -pkin(3) * t1413, -t1634, -t1633, -t1555, t1634, t1552, -t1718, t1317, t1327, t1341, t1222, -t1534, -t1533, -t1439, t1534, t1436, -t1716, t1218, t1223, t1213, t1170; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1730, t1728, t1760, -t1730, -t1759, qJDD(3), -t1637, -t1638, 0, 0, t1643, t1564, t1610, -t1641, t1611, t1647, t1851, t1852, t1836, t1865, t1463, t1381, t1466, t1462, t1467, t1506, t1838, t1837, t1839, t1819, t1293, t1246, t1323, t1292, t1324, t1360, t1841, t1840, t1842, t1843; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1705, t1653, t1926, t1713, t1706, -t1713, 0, t1588, t1502, 0, t1543, t1475, t1546, t1541, t1547, t1585, t1423, t1443, t1289, -pkin(8) * t1315, t1358, t1298, t1390, t1357, t1391, t1432, t1261, t1266, t1195, t1179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1714, t1655, t1707, -t1805, t1659, -t1714, -t1588, 0, t1503, 0, t1542, t1473, t1544, t1540, t1545, t1584, t1399, t1402, t1285, t1305, t1356, t1296, t1388, t1355, t1389, t1431, t1244, t1257, t1193, t1174; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1696, t1694, t1656, -t1696, t1654, t1725, -t1502, -t1503, 0, 0, t1634, t1633, t1555, -t1634, -t1552, t1718, t1824, t1833, t1910, t1911, t1534, t1533, t1439, -t1534, -t1436, t1716, t1810, t1808, t1848, t1849; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1589, -t1551, t1928, t1672, t1666, -t1672, 0, t1514, t1378, 0, t1430, t1365, t1489, t1428, t1490, t1519, t1353, t1372, t1219, -pkin(9) * t1227; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1882, t1927, t1667, -t1823, t1596, -t1882, -t1514, 0, t1379, 0, t1429, t1363, t1487, t1427, t1488, t1518, t1322, t1329, t1216, t1221; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1634, t1633, t1555, -t1634, -t1552, t1718, -t1378, -t1379, 0, 0, t1534, t1533, t1439, -t1534, -t1436, t1716, t1830, t1822, t1362, t1226; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1486, -t1435, t1930, t1607, t1605, -t1607, 0, t1416, t1278, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1885, t1929, t1606, t1485, t1521, -t1885, -t1416, 0, t1279, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1534, t1533, t1439, -t1534, -t1436, t1716, -t1278, -t1279, 0, 0;];
m_new_reg  = t1;
