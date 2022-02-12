/*
Navicat MySQL Data Transfer

Source Server         : vt
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : izintakip

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-11 13:01:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for izinler
-- ----------------------------
DROP TABLE IF EXISTS `izinler`;
CREATE TABLE `izinler` (
  `ino` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kisino` int(10) unsigned DEFAULT NULL,
  `kalanizin` int(11) DEFAULT NULL,
  `izinbaslangic` date DEFAULT NULL,
  `izinbitis` date DEFAULT NULL,
  `izintur` varchar(40) DEFAULT NULL,
  `izinkullanilan` int(11) DEFAULT NULL,
  PRIMARY KEY (`ino`),
  KEY `kisino` (`kisino`),
  CONSTRAINT `izinler_ibfk_1` FOREIGN KEY (`kisino`) REFERENCES `kullanicilar` (`kayitno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of izinler
-- ----------------------------
INSERT INTO `izinler` VALUES ('1', '5', '5', '2005-02-03', '2007-05-03', 'Doğum', '360');
INSERT INTO `izinler` VALUES ('2', '11', '6', '2010-02-05', '2010-03-05', 'Ameliyat', '70');
INSERT INTO `izinler` VALUES ('3', '15', '4', '2017-05-07', '2017-07-05', 'Kontrol', '87');
INSERT INTO `izinler` VALUES ('4', '13', '2', '2017-12-05', '2017-12-10', 'Tedavi', '25');
INSERT INTO `izinler` VALUES ('5', '11', '6', '2007-06-08', '2007-07-09', 'Sıkıntı', '45');
INSERT INTO `izinler` VALUES ('6', '8', '4', '2008-06-08', '2008-06-18', 'Hastalık', '234');
INSERT INTO `izinler` VALUES ('7', '10', '7', '2008-07-15', '2008-07-25', 'Bacak burkma', '54');
INSERT INTO `izinler` VALUES ('8', '6', '8', '2008-09-08', '2008-09-12', 'Dağıtım', '223');
INSERT INTO `izinler` VALUES ('9', '10', '1', '2005-06-20', '2005-06-25', 'Deri Hastalığı', '76');
INSERT INTO `izinler` VALUES ('10', '8', '8', '2010-05-04', '2010-05-14', 'Doğum', '53');
INSERT INTO `izinler` VALUES ('11', '7', '3', '2012-04-22', '2012-04-29', 'Trafik Kazası', '232');
INSERT INTO `izinler` VALUES ('12', '6', '7', '2012-07-25', '2012-07-31', 'Rahatsızlık', '567');
INSERT INTO `izinler` VALUES ('13', '4', '4', '2012-08-20', '2012-08-26', 'Tiner', '434');
INSERT INTO `izinler` VALUES ('14', '3', '3', '2012-09-10', '2012-09-20', 'Deprem', '234');
INSERT INTO `izinler` VALUES ('15', '2', '2', '2012-01-08', '2012-01-16', 'Heyelan', '225');
INSERT INTO `izinler` VALUES ('16', '1', '2', '2012-02-20', '2012-02-27', 'Panik Atak', '646');
INSERT INTO `izinler` VALUES ('17', '9', '6', '2012-08-27', '2012-08-30', 'Yanık', '243');
INSERT INTO `izinler` VALUES ('18', '8', '8', '2013-09-13', '2013-09-20', 'Düğün', '17');
INSERT INTO `izinler` VALUES ('19', '2', '1', '2013-09-21', '2013-09-28', 'Vefat', '39');
INSERT INTO `izinler` VALUES ('20', '5', '7', '2014-02-13', '2014-02-20', 'Cenaze', '24');

-- ----------------------------
-- Table structure for kullanicilar
-- ----------------------------
DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE `kullanicilar` (
  `kayitno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ad` varchar(40) DEFAULT NULL,
  `soyad` varchar(40) DEFAULT NULL,
  `tcno` varchar(11) DEFAULT NULL,
  `sicilno` varchar(10) DEFAULT NULL,
  `cinsiyet` varchar(5) DEFAULT NULL,
  `dogumtarihi` date DEFAULT NULL,
  `sehir` varchar(15) DEFAULT NULL,
  `kadi` varchar(40) DEFAULT NULL,
  `birim` varchar(50) DEFAULT NULL,
  `sifre` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kayitno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kullanicilar
-- ----------------------------
INSERT INTO `kullanicilar` VALUES ('1', 'root', 'root', '11111111111', 'root', 'Erkek', '1981-11-21', 'İzmir', 'root', 'Yönetim', 'root');
INSERT INTO `kullanicilar` VALUES ('2', 'Erim', 'Tuzcuoğlu', '16139875641', '0123456', 'Erkek', '1996-04-21', 'Adana', 'aroot', 'İnsan Kaynakları', '123');
INSERT INTO `kullanicilar` VALUES ('3', 'Ayhan', 'Taşıyan', '15698742364', '8954632', 'Erkek', '1990-10-16', 'İstanbul', 'atas', 'Pazarlama', '846ata');
INSERT INTO `kullanicilar` VALUES ('4', 'Emre', 'Özkabak', '12547869325', '3598741', 'Erkek', '1991-05-08', 'Bayburt', 'emre9', 'Çay', 'emre98');
INSERT INTO `kullanicilar` VALUES ('5', 'Aliye', 'Taşıyan', '98598598598', '2658794', 'Kadın', '1975-05-04', 'Afyon', 'aliye', 'Kantin', 'aliye77');
INSERT INTO `kullanicilar` VALUES ('6', 'Mehmet', 'Mürsel', '65456865959', '2156934', 'Erkek', '1995-11-19', 'Yozgat', 'mehmetm', 'Yemekhane', 'mehmetbey');
INSERT INTO `kullanicilar` VALUES ('7', 'Ahmet', 'Yılmaz', '45427854278', '2145687', 'Erkek', '1996-07-18', 'Gaziantep', 'ahmety', 'Yönetim', 'ahmetm');
INSERT INTO `kullanicilar` VALUES ('8', 'Umay', 'Ayabakan', '44578578242', '2136956', 'Kadın', '1974-06-13', 'Burdur', 'ummay', 'İnsan Kaynakları', 'umaycan');
INSERT INTO `kullanicilar` VALUES ('9', 'Burak', 'Güneş', '87785744245', '2569871', 'Erkek', '1998-06-22', 'Isparta', 'burak9', 'Haberleşme', 'burrak');
INSERT INTO `kullanicilar` VALUES ('10', 'Elif', 'Yıldırım', '78784423757', '4789632', 'Kadın', '1976-03-20', 'Kahramanmaraş', 'elif', 'Ulaşım', 'elif85');
INSERT INTO `kullanicilar` VALUES ('11', 'Bülent', 'Ay', '45876789368', '5896746', 'Erkek', '1975-12-01', 'İzmir', 'bulent', 'Sağlık', 'bulent74');
INSERT INTO `kullanicilar` VALUES ('12', 'Yağmur', 'Bulut', '42528674568', '5897464', 'Kadın', '1985-04-26', 'Balıkesir', 'yagmur9', 'Dağıtım', 'yagmur8');
INSERT INTO `kullanicilar` VALUES ('13', 'Barbaros', 'Çankaya', '26896917117', '3554886', 'Erkek', '1988-03-17', 'Eskişehir', 'barbaros', 'Kantin', 'barbarbey');
INSERT INTO `kullanicilar` VALUES ('14', 'Ayşe', 'Şimşek', '17757842114', '4568777', 'Kadın', '1987-01-12', 'Muş', 'ayse', 'Çay', 'aysesimsek');
INSERT INTO `kullanicilar` VALUES ('15', 'Ziya', 'Çakmak', '75225678412', '7878575', 'Erkek', '1990-03-14', 'Bursa', 'ziyac', 'Dağıtım', 'ziyacan');
INSERT INTO `kullanicilar` VALUES ('16', 'Nuriye', 'Tezcan', '85877654227', '7515581', 'Kadın', '1993-08-31', 'Artvin', 'nuriye', 'Paketleme', 'nuriyek');
INSERT INTO `kullanicilar` VALUES ('17', 'Beste', 'Haklı', '42868754427', '7865441', 'Kadın', '1992-02-18', 'Trabzon', 'beste', 'Yönetim', 'bestehak');
INSERT INTO `kullanicilar` VALUES ('18', 'Muhammed', 'Öztürk', '85786521459', '8578717', 'Erkek', '1988-04-14', 'Çorum', 'muhammed', 'Kantin', 'muhhh');
INSERT INTO `kullanicilar` VALUES ('19', 'Gökhan', 'Fırat', '22828448545', '7857857', 'Erkek', '1993-01-10', 'Adana', 'gokhan', 'Yönetim', 'gokos5');
INSERT INTO `kullanicilar` VALUES ('20', 'Berk', 'Erdoğan', '78785434214', '4786778', 'Erkek', '1991-07-12', 'Ankara', 'berk', 'Yönetim', 'berk75');
SET FOREIGN_KEY_CHECKS=1;
