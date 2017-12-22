-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-08 14:02:40
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pink`
--

-- --------------------------------------------------------

--
-- 表的结构 `pk_index_carousel`
--

CREATE TABLE `pk_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_index_carousel`
--

INSERT INTO `pk_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'img/index/banner7.jpg', '图片1', 'product.html'),
(2, 'img/index/banner4.jpg', '图片2', 'product.html'),
(3, 'img/index/banner9.jpg', '图片3', 'product.html'),
(4, 'img/index/banner6.jpg', '图片4', 'product-detail.html?pid=19');

-- --------------------------------------------------------

--
-- 表的结构 `pk_index_name`
--

CREATE TABLE `pk_index_name` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_index_name`
--

INSERT INTO `pk_index_name` (`cid`, `img`, `title`, `href`) VALUES
(1, 'img/index/name20.jpg', '图片1', 'product.html'),
(2, 'img/index/name21.jpg', '图片2', 'product.html'),
(3, 'img/index/name22.jpg', '图片3', 'product.html'),
(4, 'img/index/name23.jpg', '图片1', 'product.html'),
(5, 'img/index/name24.jpg', '图片2', 'product.html'),
(6, 'img/index/name25.jpg', '图片3', 'product.html'),
(7, 'img/index/name27.jpg', '图片4', 'product-detail.html?pid=19'),
(8, 'img/index/name28.jpg', '图片1', 'product.html'),
(9, 'img/index/name29.jpg', '图片2', 'product.html'),
(10, 'img/index/name30.jpg', '图片3', 'product.html'),
(11, 'img/index/name31.jpg', '图片1', 'product.html'),
(12, 'img/index/name32.jpg', '图片2', 'product.html'),
(13, 'img/index/name34.jpg', '图片3', 'product.html'),
(14, 'img/index/name34.jpg', '图片2', 'product.html'),
(15, 'img/index/name35.jpg', '图片3', 'product.html'),
(16, 'img/index/name36.jpg', '图片4', 'product-detail.html?pid=19'),
(17, 'img/index/name34.jpg', '图片1', 'product-detail.html?pid=12'),
(18, 'img/index/name35.jpg', '图片2', 'product-detail.html?pid=23'),
(19, 'img/index/name36.jpg', '图片3', 'product-detail.html?pid=32'),
(20, 'img/index/name34.jpg', '图片2', 'product-detail.html?pid=5'),
(21, 'img/index/name35.jpg', '图片3', 'product-detail.html?pid=26'),
(22, 'img/index/name36.jpg', '图片4', 'product-detail.html?pid=19');

-- --------------------------------------------------------

--
-- 表的结构 `pk_product`
--

CREATE TABLE `pk_product` (
  `pid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `fname` varchar(20) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `pic_pro` varchar(128) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sales` varchar(64) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `weight` decimal(10,3) DEFAULT NULL,
  `detail_pic` varchar(368) NOT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_salse` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_product`
--

INSERT INTO `pk_product` (`pid`, `fid`, `fname`, `title`, `subtitle`, `pic_pro`, `price`, `sales`, `promise`, `weight`, `detail_pic`, `spec`, `shelf_time`, `sold_count`, `is_salse`) VALUES
(1, 1, '美迪惠尔', '美迪惠尔面膜', 'Mediheal可莱丝美迪惠尔水润保湿面膜10片水库针剂(保湿补水男女士 护肤品）新老包装随机发放 ', 'img/product/md_pr1.jpg', '105.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg">  <img class="" src="img/product_det', '水润保湿面膜10片', 150123456789, 2968, 1),
(2, 1, '美迪惠尔', '美迪惠尔面膜', '美迪惠尔(Mediheal) 可莱丝 N.M.F针剂水库补水面膜贴 10片/盒 补水保湿 ', 'img/product/md_pr2.jpg', '49.90', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '针剂水库10片', 150123456789, 2968, 1),
(3, 1, '美迪惠尔', '美迪惠尔', 'Mediheal可莱丝 美迪惠尔美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ', 'img/product/md_pr3.jpg', '125.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '美白黑炭面膜10片', 150123456789, 2968, 1),
(4, 1, '美迪惠尔', '美迪惠尔面膜', ' Mediheal可莱丝美迪惠尔胶原蛋白面膜10片水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士）', 'img/product/md_pr4.jpg', '49.90', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '胶原蛋白面膜10片', 150123456789, 2968, 1),
(5, 1, '美迪惠尔', '美迪惠尔面膜', ' 美迪惠尔(Mediheal)保湿莹润焕肤精选套组（水润保湿面膜x2片+胶原面膜x2片+维生素面膜x2片）', 'img/product/md_pr5.jpg', '65.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.205', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '保湿莹润焕肤套装6片', 150123456789, 2968, 1),
(6, 1, '美迪惠尔', '美迪惠尔面膜', ' Mediheal可莱丝 美迪惠尔毛孔紧致黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ', 'img/product/md_pr6.jpg', '49.90', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '毛孔紧致黑炭面膜10片', 150123456789, 2968, 1),
(7, 1, '美迪惠尔', '美迪惠尔面膜', 'Mediheal可莱丝 美迪惠尔美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ', 'img/product/md_pr7.jpg', '128.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '美白黑炭面膜10片', 150123456789, 2968, 1),
(8, 1, '美迪惠尔', '美迪惠尔面膜', ' Mediheal可莱丝 美迪惠尔维生素面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士）', 'img/product/md_pr8.jpg', '109.90', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.350', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '茶树面膜10片', 150123456789, 2968, 1),
(9, 1, '美迪惠尔', '美迪惠尔面膜', 'Mediheal可莱丝 美迪惠尔美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ', 'img/product/md_pr9.jpg', '128.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '维生素针剂面膜10片', 150123456789, 2968, 1),
(10, 2, 'Dior', '迪奥唇蜜', '克丽丝汀迪奥DIOR魅惑润唇蜜SPF10 3.5g（又名：克丽丝汀迪奥魅惑润唇膏 口红（焕彩）', 'img/product/di_pr1.jpg', '269.00', '此价格不与套装优惠同时享受', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.040', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '粉色001', 150123456789, 2968, 1),
(11, 2, 'Dior', '迪奥唇蜜', '迪奥（Dior）魅惑润唇蜜004 3.5g（丰唇膏 口红 橘色）新老包装交替 ', 'img/product/di_pr2.jpg', '289.00', '此价格不与套装优惠同时享受', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.035', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '橘色002', 150123456789, 2968, 1),
(12, 2, 'Dior', '迪奥唇膏', '迪奥（Dior）魅惑润唇蜜 005 3.5g（丰唇膏 口红 紫罗兰色）', 'img/product/di_pr3.jpg', '289.00', '此价格不与套装优惠同时享受', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.030', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '紫色003', 150123456789, 2968, 1),
(13, 2, 'Dior', '迪奥香水', '迪奥（Dior）迪奥小姐花漾淡香氛 100ml（又名:迪奥小姐花漾淡香水） ', 'img/product/di_pr4.jpg', '1099.00', ' 此价格不与套装优惠同时享受', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '花漾100ml', 150123456789, 2968, 1),
(14, 2, 'Dior', '迪奥香水', '迪奥（Dior）迪奥（Dior）迪奥小姐漫舞花漾香氛 100ml ', 'img/product/di_pr5.jpg', '999.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.230', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '淡香氛50ml', 150123456789, 2968, 1),
(15, 2, 'Dior', '迪奥香氛', '迪奥(Dior)迪奥小姐香氛 50ml（全新迪奥小姐淡香氛）', 'img/product/di_pr6.jpg', '1049.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '漫舞花漾100ml', 150123456789, 2968, 1),
(16, 2, 'Dior', '迪奥香氛', '迪奥（Dior）真我淡香水 100ml ', 'img/product/di_pr7.jpg', '709.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.186', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '50ml', 150123456789, 2968, 1),
(18, 2, 'Dior', '迪奥香水', '迪奥（Dior）真我淡香水 100ml ', 'img/product/di_pr8.png', '999.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.366', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '100ml', 150123456789, 2968, 1),
(19, 3, 'SK-II', 'SK-II礼盒', 'SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ', 'img/product/sk_pr1.jpg', '1377.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '1.760', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '神仙水净透修护礼盒', 150123456789, 2968, 1),
(20, 3, 'SK-II', 'SK-II精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr2.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露105ml', 150123456789, 2968, 1),
(21, 3, 'SK-II', 'SK-II精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr3.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露155ml', 150123456789, 2968, 1),
(22, 3, 'SK-II', 'SK-II精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr4.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露205ml', 150123456789, 2968, 1),
(23, 4, 'SPN', 'SPN面膜', 'SPN水润保湿面膜10片水库针剂(保湿补水男女士 护肤品）新老包装随机发放 ', 'img/product/md_pr1.jpg', '105.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '水润保湿面膜10片', 150123456789, 2968, 1),
(24, 4, 'SPN', 'SPN面膜', 'SPN N.M.F针剂水库补水面膜贴 10片/盒 补水保湿 ', 'img/product/md_pr2.jpg', '49.90', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '针剂水库10片', 150123456789, 2968, 1),
(25, 4, 'SPN', 'SPN', 'SPN美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ', 'img/product/md_pr3.jpg', '125.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '美白黑炭面膜10片', 150123456789, 2968, 1),
(26, 4, 'SPN', 'SPN面膜', ' SPN胶原蛋白面膜10片水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士）', 'img/product/md_pr4.jpg', '49.90', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '胶原蛋白面膜10片', 150123456789, 2968, 1),
(27, 4, 'SPN', 'SPN面膜', 'SPN保湿莹润焕肤精选套组（水润保湿面膜x2片+胶原面膜x2片+维生素面膜x2片）', 'img/product/md_pr5.jpg', '65.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.205', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '保湿莹润焕肤套装6片', 150123456789, 2968, 1),
(28, 4, 'SPN', 'SPN面膜', ' SPN毛孔紧致黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ', 'img/product/md_pr6.jpg', '49.90', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.345', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '毛孔紧致黑炭面膜10片', 150123456789, 2968, 1),
(29, 4, 'SPN', 'SPN面膜', 'SPN美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ', 'img/product/md_pr7.jpg', '128.00', '购买1-3件时享受优惠，超出数量以结算价为准', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '美白黑炭面膜10片', 150123456789, 2968, 1),
(30, 5, '香奈儿', '香奈儿唇蜜', '克丽丝汀迪奥DIOR魅惑润唇蜜SPF10 3.5g（又名：克丽丝汀迪奥魅惑润唇膏 口红（焕彩）', 'img/product/di_pr1.jpg', '269.00', '此价格不与套装优惠同时享受', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.040', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '粉色001', 150123456789, 2968, 1),
(31, 5, '香奈儿', '香奈儿唇蜜', '迪奥（Dior）魅惑润唇蜜004 3.5g（丰唇膏 口红 橘色）新老包装交替 ', 'img/product/di_pr2.jpg', '289.00', '此价格不与套装优惠同时享受', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.035', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '橘色002', 150123456789, 2968, 1),
(32, 5, '香奈儿', '香奈儿香水', '迪奥（Dior）迪奥小姐花漾淡香氛 100ml（又名:迪奥小姐花漾淡香水） ', 'img/product/di_pr4.jpg', '1099.00', ' 此价格不与套装优惠同时享受', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '花漾100ml', 150123456789, 2968, 1),
(33, 5, '香奈儿', '香奈儿香氛', '迪奥(Dior)迪奥小姐香氛 50ml（全新迪奥小姐淡香氛）', 'img/product/di_pr6.jpg', '1049.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '漫舞花漾100ml', 150123456789, 2968, 1),
(34, 5, '香奈儿', '香奈儿香氛', '迪奥(Dior)迪奥小姐香氛 50ml（全新迪奥小姐淡香氛）', 'img/product/di_pr6.jpg', '1049.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '漫舞花漾100ml', 150123456789, 2968, 1),
(35, 6, '卡姿兰', '卡姿兰礼盒', 'SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ', 'img/product/sk_pr1.jpg', '1377.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '1.760', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '神仙水净透修护礼盒', 150123456789, 2968, 1),
(36, 6, '卡姿兰', '卡姿兰精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr3.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露155ml', 150123456789, 2968, 1),
(37, 6, '卡姿兰', '卡姿兰精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr4.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露205ml', 150123456789, 2968, 1),
(38, 6, '卡姿兰', '卡姿兰精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr3.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露155ml', 150123456789, 2968, 1),
(39, 6, '卡姿兰', '卡姿兰礼盒', 'SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ', 'img/product/sk_pr1.jpg', '1377.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '1.760', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '神仙水净透修护礼盒', 150123456789, 2968, 1),
(40, 5, '香奈儿', '香奈儿香氛', '迪奥（Dior）真我淡香水 100ml ', 'img/product/di_pr7.jpg', '709.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.186', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '50ml', 150123456789, 2968, 1),
(41, 6, '卡姿兰', '卡姿兰精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr4.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露205ml', 150123456789, 2968, 1),
(42, 5, '香奈儿', '香奈儿香水', '迪奥（Dior）迪奥小姐花漾淡香氛 100ml（又名:迪奥小姐花漾淡香水） ', 'img/product/di_pr4.jpg', '1099.00', ' 此价格不与套装优惠同时享受', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.300', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>', '花漾100ml', 150123456789, 2968, 1),
(43, 6, '卡姿兰', '卡姿兰精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr2.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露105ml', 150123456789, 2968, 1),
(46, 6, '卡姿兰', '卡姿兰精华露', 'SK-II护肤精华露75ml（精华液 神仙水） ', 'img/product/sk_pr3.jpg', '590.00', '满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '0.220', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '护肤精华露205ml', 150123456789, 2968, 1),
(47, 6, '卡姿兰', '卡姿兰礼盒', 'SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ', 'img/product/sk_pr1.jpg', '1377.00', '购买美妆部分商品满1元，即返服饰类部分商品99减20元东券', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '1.760', '<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>', '神仙水净透修护礼盒', 150123456789, 2968, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pk_product_family`
--

CREATE TABLE `pk_product_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_product_family`
--

INSERT INTO `pk_product_family` (`fid`, `fname`) VALUES
(1, '美迪惠尔'),
(2, '迪奥'),
(3, 'SK-II'),
(4, 'SPN'),
(5, '香奈儿'),
(6, '卡姿兰');

-- --------------------------------------------------------

--
-- 表的结构 `pk_product_pic`
--

CREATE TABLE `pk_product_pic` (
  `pid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_product_pic`
--

INSERT INTO `pk_product_pic` (`pid`, `fid`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/product/med_sm1.jpg', 'img/product/med_md1.jpg', 'img/product/med_lg1.jpg'),
(2, 1, 'img/product/med_sm2.jpg', 'img/product/med_md2.jpg', 'img/product/med_lg2.jpg'),
(3, 1, 'img/product/med_sm3.jpg', 'img/product/med_md3.jpg', 'img/product/med_lg3.jpg'),
(4, 1, 'img/product/med_sm4.jpg', 'img/product/med_md4.jpg', 'img/product/med_lg4.jpg'),
(5, 1, 'img/product/med_sm5.jpg', 'img/product/med_md5.jpg', 'img/product/med_lg5.jpg'),
(6, 1, 'img/product/med_sm6.jpg', 'img/product/med_md6.jpg', 'img/product/med_lg6.jpg'),
(7, 1, 'img/product/med_sm7.jpg', 'img/product/med_md7.jpg', 'img/product/med_lg7.jpg'),
(8, 1, 'img/product/med_sm3.jpg', 'img/product/med_md3.jpg', 'img/product/med_lg3.jpg'),
(9, 1, 'img/product/med_sm4.jpg', 'img/product/med_md4.jpg', 'img/product/med_lg4.jpg'),
(10, 2, 'img/product/dior_sm4.jpg', 'img/product/dior_md4.jpg', 'img/product/dior_lg4.jpg'),
(11, 2, 'img/product/dior_sm5.jpg', 'img/product/dior_md5.jpg', 'img/product/dior_lg5.jpg'),
(12, 2, 'img/product/dior_sm6.jpg', 'img/product/dior_md6.jpg', 'img/product/dior_lg6.jpg'),
(13, 2, 'img/product/dior_sm1.jpg', 'img/product/dior_md1.jpg', 'img/product/dior_lg1.jpg'),
(14, 2, 'img/product/dior_sm2.jpg', 'img/product/dior_md2.jpg', 'img/product/dior_lg2.jpg'),
(15, 2, 'img/product/dior_sm3.jpg', 'img/product/dior_md3.jpg', 'img/product/dior_lg3.jpg'),
(16, 2, 'img/product/dior_sm7.jpg', 'img/product/dior_md7.jpg', 'img/product/dior_lg7.jpg'),
(17, 2, 'img/product/dior_sm5.jpg', 'img/product/dior_md5.jpg', 'img/product/dior_lg5.jpg'),
(18, 2, 'img/product/dior_sm8.jpg', 'img/product/dior_md8.jpg', 'img/product/dior_lg8.jpg'),
(19, 3, 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg'),
(20, 3, 'img/product/sk_sm2.jpg', 'img/product/sk_md2.jpg', 'img/product/sk_lg2.jpg'),
(21, 3, 'img/product/sk_sm3.jpg', 'img/product/sk_md3.jpg', 'img/product/sk_lg3.jpg'),
(22, 3, 'img/product/sk_sm4.jpg', 'img/product/sk_md4.jpg', 'img/product/sk_lg4.jpg'),
(23, 4, 'img/product/med_sm1.jpg', 'img/product/med_md1.jpg', 'img/product/med_lg1.jpg'),
(24, 4, 'img/product/med_sm2.jpg', 'img/product/med_md2.jpg', 'img/product/med_lg2.jpg'),
(25, 4, 'img/product/med_sm3.jpg', 'img/product/med_md3.jpg', 'img/product/med_lg3.jpg'),
(26, 4, 'img/product/med_sm4.jpg', 'img/product/med_md4.jpg', 'img/product/med_lg4.jpg'),
(27, 4, 'img/product/med_sm5.jpg', 'img/product/med_md5.jpg', 'img/product/med_lg5.jpg'),
(28, 4, 'img/product/med_sm6.jpg', 'img/product/med_md6.jpg', 'img/product/med_lg6.jpg'),
(29, 4, 'img/product/med_sm7.jpg', 'img/product/med_md7.jpg', 'img/product/med_lg7.jpg'),
(30, 5, 'img/product/dior_sm1.jpg', 'img/product/dior_md1.jpg', 'img/product/dior_lg1.jpg'),
(31, 5, 'img/product/dior_sm2.jpg', 'img/product/dior_md2.jpg', 'img/product/dior_lg2.jpg'),
(32, 5, 'img/product/dior_sm4.jpg', 'img/product/dior_md4.jpg', 'img/product/dior_lg4.jpg'),
(33, 5, 'img/product/dior_sm6.jpg', 'img/product/dior_md6.jpg', 'img/product/dior_lg6.jpg'),
(34, 5, 'img/product/dior_sm6.jpg', 'img/product/dior_md6.jpg', 'img/product/dior_lg6.jpg'),
(35, 6, 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg'),
(36, 6, 'img/product/sk_sm2.jpg', 'img/product/sk_md2.jpg', 'img/product/sk_lg2.jpg'),
(37, 6, 'img/product/sk_sm3.jpg', 'img/product/sk_md3.jpg', 'img/product/sk_lg3.jpg'),
(38, 6, 'img/product/sk_sm4.jpg', 'img/product/sk_md4.jpg', 'img/product/sk_lg4.jpg'),
(39, 6, 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg'),
(40, 5, 'img/product/dior_sm7.jpg', 'img/product/dior_md7.jpg', 'img/product/dior_lg7.jpg'),
(41, 6, 'img/product/sk_sm4.jpg', 'img/product/sk_md4.jpg', 'img/product/sk_lg4.jpg'),
(42, 5, 'img/product/dior_sm4.jpg', 'img/product/dior_md4.jpg', 'img/product/dior_lg4.jpg'),
(43, 6, 'img/product/sk_sm2.jpg', 'img/product/sk_md2.jpg', 'img/product/sk_lg2.jpg'),
(44, 6, 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg'),
(45, 5, 'img/product/dior_sm7.jpg', 'img/product/dior_md7.jpg', 'img/product/dior_lg7.jpg'),
(46, 6, 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg'),
(47, 6, 'img/product/sk_sm2.jpg', 'img/product/sk_md2.jpg', 'img/product/sk_lg2.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pk_receiver_address`
--

CREATE TABLE `pk_receiver_address` (
  `aid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_receiver_address`
--

INSERT INTO `pk_receiver_address` (`aid`, `uid`, `receiver`, `province`, `city`, `county`, `address`, `cellphone`, `fixedphone`, `postcode`, `tag`, `is_default`) VALUES
(1, 1, '芳芳', '河南省', '周口市', '天康县', '张集', '13673606949', NULL, '450000', '陌上芳菲', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pk_recom`
--

CREATE TABLE `pk_recom` (
  `mid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_recom`
--

INSERT INTO `pk_recom` (`mid`, `img`, `price`, `title`) VALUES
(1, 'img/product_detail/osm_md1.jpg', '234.00', '欧诗漫珍珠美白'),
(2, 'img/product_detail/osm_md2.jpg', '324.00', '欧诗漫补水养颜'),
(3, 'img/product_detail/osm_md3.jpg', '123.00', '欧诗漫祛痘美白'),
(4, 'img/product_detail/mei_md2.jpg', '99.99', '敏感肌套盒'),
(6, 'img/product_detail/mei_md4.jpg', '67.00', '补水保湿'),
(7, 'img/product_detail/mei_md5.jpg', '89.00', '补水洁面套盒'),
(8, 'img/product_detail/mei_md6.jpg', '996.00', '深层洁面霜'),
(9, 'img/product_detail/mei_md7.jpg', '465.00', '美白软化角质'),
(10, 'img/product_detail/mei_md8.jpg', '34.00', '修复面部问题'),
(11, 'img/product_detail/han_de1.jpg', '123.00', '欧诗漫祛痘美白'),
(12, 'img/product_detail/han_de2.jpg', '99.99', '敏感肌套盒'),
(13, 'img/product_detail/han_de3.jpg', '199.90', '调理面部肌肤'),
(14, 'img/product_detail/han_de5.jpg', '67.00', '补水保湿'),
(15, 'img/product_detail/han_de6.jpg', '89.00', '补水洁面套盒'),
(16, 'img/product_detail/han_de7.jpg', '996.00', '深层洁面霜'),
(17, 'img/product_detail/han_de9.jpg', '465.00', '美白软化角质');

-- --------------------------------------------------------

--
-- 表的结构 `pk_shoppingcart_item`
--

CREATE TABLE `pk_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_shoppingcart_item`
--

INSERT INTO `pk_shoppingcart_item` (`iid`, `uid`, `pid`, `count`, `is_checked`) VALUES
(44, 5, 7, 25, 0),
(45, 5, 6, 20, 0),
(46, 5, 5, 10, 0),
(47, 5, 8, 16, 0),
(48, 5, 1, 3, 0),
(49, 5, 2, 11, 0),
(50, 5, 3, 8, 0),
(51, 5, 4, 5, 0),
(52, 5, 42, 1, 0),
(53, 5, 36, 1, 0),
(54, 5, 37, 1, 0),
(55, 5, 20, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pk_user`
--

CREATE TABLE `pk_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pk_user`
--

INSERT INTO `pk_user` (`uid`, `uname`, `pwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, '1234555', '123456', '1233@qq.com', '12345678900', NULL, NULL, NULL),
(2, '1234555', '123456', '1233@qq.com', '12345678900', NULL, NULL, NULL),
(3, '1233456', '1234567', '1220668579@qq.com', '12343456777', NULL, NULL, NULL),
(4, '1234567', '123456', '123@qq.com', '12345678900', NULL, NULL, NULL),
(5, 'fangfang', '123456', '123@qq.com', '13456578643', NULL, NULL, NULL),
(6, 'lingling', '123456', '1220668579@qq.com', '12343223211', NULL, NULL, NULL),
(7, 'huihui', '123456', '1243@qq.com', '12343456777', NULL, NULL, NULL),
(9, 'dingding', '123456', 'sss@aa.com', '12345678900', NULL, NULL, NULL),
(10, 'dingding', '123456', 'sss@aa.com', '12345678900', NULL, NULL, NULL),
(11, 'dingding', '123456', 'sss@aa.com', '12345678900', NULL, NULL, NULL),
(12, 'dingding', '123456', 'sss@aa.com', '12345678900', NULL, NULL, NULL),
(13, 'lingling', '1234567', '3344@aa.com', '12345678900', NULL, NULL, NULL),
(14, 'lingling', '1234567', '3344@aa.com', '12345678900', NULL, NULL, NULL),
(15, 'lingling', '1234567', '3344@aa.com', '12345678900', NULL, NULL, NULL),
(16, 'ppdppkfdd', '1234567', '3344@aa.com', '12345678900', NULL, NULL, NULL),
(19, 'sssssssss', '1234567', '122@xx.com', '12343456777', NULL, NULL, NULL),
(20, '1233234', '1234567', '23454@qq.com', '12345678900', NULL, NULL, NULL),
(21, '23erfefdffd', '123456', '121323@ss.com', '11212222323', NULL, NULL, NULL),
(22, 'wewere', 'wwwwwwww', '234@aa.com', '12334556776', NULL, NULL, NULL),
(23, 'wwertyt', 'yyyyyyyy', '23434@aa.com', '12343545543', NULL, NULL, NULL),
(24, '234566', 'jjjjjjjj', '45@134.com', '12343456777', NULL, NULL, NULL),
(25, 'errtttyy', '1234567', '4546@aa.com', '23243545465', NULL, NULL, NULL),
(26, 'xiaohuang', '1234567', 'assd@aa.com', '12343223211', NULL, NULL, NULL),
(27, 'xiaohuang', '1234567', 'assd@aa.com', '12343223211', NULL, NULL, NULL),
(29, 'sansan', '1234567', '12345556@aa.com', '12343223211', NULL, NULL, NULL),
(30, 'wwwwwww', '1234567', '1220668579@qq.com', '12343223211', NULL, NULL, NULL),
(31, 'wwwwww', '1234567', '1323@aa.com', '12345566561', NULL, NULL, NULL),
(32, '2222222', '123456', '222@aa.com', '22243324533', NULL, NULL, NULL),
(33, '123456', '123456', '129@qq.com', '15874569856', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pk_index_carousel`
--
ALTER TABLE `pk_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `pk_index_name`
--
ALTER TABLE `pk_index_name`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `pk_product`
--
ALTER TABLE `pk_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pk_product_family`
--
ALTER TABLE `pk_product_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `pk_product_pic`
--
ALTER TABLE `pk_product_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pk_receiver_address`
--
ALTER TABLE `pk_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `pk_recom`
--
ALTER TABLE `pk_recom`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `pk_shoppingcart_item`
--
ALTER TABLE `pk_shoppingcart_item`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `pk_user`
--
ALTER TABLE `pk_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pk_index_carousel`
--
ALTER TABLE `pk_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `pk_index_name`
--
ALTER TABLE `pk_index_name`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `pk_product`
--
ALTER TABLE `pk_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- 使用表AUTO_INCREMENT `pk_product_family`
--
ALTER TABLE `pk_product_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `pk_product_pic`
--
ALTER TABLE `pk_product_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- 使用表AUTO_INCREMENT `pk_receiver_address`
--
ALTER TABLE `pk_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `pk_recom`
--
ALTER TABLE `pk_recom`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `pk_shoppingcart_item`
--
ALTER TABLE `pk_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- 使用表AUTO_INCREMENT `pk_user`
--
ALTER TABLE `pk_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- 限制导出的表
--

--
-- 限制表 `pk_shoppingcart_item`
--
ALTER TABLE `pk_shoppingcart_item`
  ADD CONSTRAINT `pk_shoppingcart_item_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `pk_product` (`pid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
