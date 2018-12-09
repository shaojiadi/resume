SET NAMES UTF8;
DROP DATABASE IF EXISTS bz;
CREATE DATABASE bz CHARSET=UTF8;
USE bz;
#用户表
CREATE TABLE bz_user()
  uid INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  uname VARCHAR(36),
  upwd VARCHAR(32),
  user_name VARCHAR(32),
  country VARCHAR(16),
  phone VARCHAR(16) NOT NULL UNIQUE,
  avatar VARCHAR(128)
;
INSERT INTO bz_user VALUES
(NULL,'lei','123456879','李然','中国','15234896520','image'),
(NULL,'feng','123780210','王明','中国','13364102589','image'),
(NULL,'lei','465565655','陈俊','中国','12658792010','image'),
(NULL,'wanger','10223598','项湘雅','中国','15349932107','image'),
(NULL,'rouse','525695045','李云龙','中国','13698220156','image'),
(NULL,'dangdang','165723a54','廖帆','中国','13524153359','image'),


#奔驰家族信息
CREATE TABLE bz_family (
  lid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR
);
INSERT INTO bz_site_info VALUES
('NULL','coupe'),    #轿车
('NULL','SUV'),       
('NULL','roadster'), #轿跑
('Null','MPV')


#奔驰
CREATE TABLE bz(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,             #所属型号家族编号 
  title VARCHAR(64),         #标题
  Fuel_type VARCHAR(20)      #燃油类型
  rated_power VARCHAR(40)    #额定功率
  dioxide  VARCHAR(20)       #综合二氧化碳排放量
  fuel_oil VARCHAR(20)       #综合燃油消耗量
  gearbox VARCHAR(36)        #变速箱
  details VARCHAR(1024),     #产品详细说明
  price DECIMAL(9,0),        #价格
)
INSERT INTO bz_navbar_item VALUES
('NULL','1','S 320L','高级无铅汽油','220千瓦(299马力)4个气缸','169克/公里','7.0升/100公里','9速自动变速箱(9G-TRONIC)','','860000'),
('NULL','1','梅赛德斯-迈巴赫 S 450 4MATIC','270千瓦(367马力)6个气缸','221克公里','9.2升/100公里','9速自动变速箱(9G-TRONIC)','','1400000'),
('NULL','1','E 200 L 4MATIC','135千瓦(184马力)4个气缸','182克公里','7.6升/100公里','9速自动变速箱(9G-TRONIC)','','450000'),


#轮播图
CREATE TBALE bz_carousel_item(
  cid INT PRIMARY KEY AUTO_INCREMENT,   #序号
  pic VARCHAR(128),
  url VARCHAR(128),
  title VARCHAR(32)
);
INSERT INTO bz_carousel_item VALUES(NULL,'images/xxx','','');

