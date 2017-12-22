-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-22 03:36:22
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gf`
--

-- --------------------------------------------------------

--
-- 表的结构 `gf_heart`
--

CREATE TABLE `gf_heart` (
  `hid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gf_index`
--

CREATE TABLE `gf_index` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_index`
--

INSERT INTO `gf_index` (`cid`, `img`, `title`, `href`) VALUES
(1, 'img/index/log1.jpg', '图片1', '1'),
(2, 'img/index/log2.jpg', '图片2', '2'),
(3, 'img/index/log3.jpg', '图片3', '3'),
(4, 'img/index/log4.jpg', '图片1', '4'),
(5, 'img/index/se1.jpg', '多肉宝盒，享受3包政策，18天包活', 'product.html'),
(6, 'img/index/se2.jpg', '图片3', 'product.html'),
(7, 'img/index/se3.jpg', '图片4', 'product-detail.html?pid=6'),
(8, 'img/index/se4.png', '图片1', 'product.html'),
(9, 'img/index/md1.jpg', '水培简单的优雅', 'product.html'),
(10, 'img/index/md2.jpg', '图片3', 'product.html'),
(11, 'img/index/md3.jpg', '图片1', 'product.html'),
(12, 'img/index/md4.jpg', '创意莲花', 'product.html'),
(13, 'img/index/md5.jpg', '琼台仙葩', 'product-detail.html?pid=12'),
(14, 'img/index/md6.jpg', '琼台仙葩', 'product-detail.html?pid=13'),
(15, 'img/index/md2.jpg', '图片3', 'product.html');

-- --------------------------------------------------------

--
-- 表的结构 `gf_love`
--

CREATE TABLE `gf_love` (
  `lid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `subTitle` varchar(268) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_love`
--

INSERT INTO `gf_love` (`lid`, `title`, `subTitle`, `href`) VALUES
(5, '种植草本花卉应注意什么?', '草本花卉对土壤的要求相对不高，\r\n有些草本花卉几乎不择土壤。通常种植草本花卉的土壤要求疏松肥沃，保水性和透水性好，\r\n团粒结构优良，而腐殖质含量高。在生产实践中，许多地方的花农使用配方土壤，效果很好。\r\n配方土壤一般采用田园土加腐殖土、草腐土和腐熟厩肥。这种混合配方土疏松透气，保水保温，\r\n而且肥沃，非常适合草花的种植。种好草本花卉，要根据各种草本花卉的生长习性，精心做好土壤准备，\r\n为花卉生长奠定良好的土壤基础。要深翻土地，平整细化土壤。露天栽培时，要培垄下种或精细播种。\r\n如果是播种繁育幼苗，还要准备好配方播种用土，耙细整平，', 'img/love/love1.jpg'),
(6, '种植草花如何育苗? ', '草花幼苗通常用种子进行繁育，\r\n其特点是植株生长好，花期易控制，是大面积草花育苗的主要方法。\r\n草花种子大多靠自己繁育，繁育的方法是选择优良的花株进行培育，\r\n种子成熟后要及时采收，收获后的种子就可以用来播种繁育幼苗。草本花卉的播种时间不尽相同\r\n，一定要根据其生长周期和上市时间适时播种。用播种法繁育草花幼苗，\r\n应注意的问题是：撒种要均匀，播后要用细沙土覆盖，覆盖厚度0．5厘米，\r\n过薄种子戴帽出土，生长不良，过厚又不易出芽。种子发芽生长的最佳温度为10——26摄氏度。\r\n为便于生产，请记住如下生产口诀：       草花育苗很', 'img/love/love2.jpg'),
(7, '盆栽花卉植物浇水方法及注意事项', '观叶的看花的，盆大盆小，一般的浇水方法都是直灌法（直接浇入花盆内）。但是，浇水时的两个动作把握准了，\r\n慢慢往花盆里浇水，一般都留2-3公分浇水的空间，先浇一半，让水慢慢向下渗，\r\n渗完盆托里不见水，说明没浇透，再浇，再看盆托，等盆托里有水了，说明浇透浇好了！\r\n这是一般情况下的参考标准。下面有介绍特殊情况下浇水方法。\r\n大型盆栽植物，花盆大，土的面积大深度厚，不容易浇透，浇水时沿着花盆转圈浇\r\n花盆里每寸土都要浇到，只有上面有水了才能慢慢向下渗，上边的土就没有水怎么向下渗？\r\n造成浇水不均匀，没浇透。根部吸收水份不均匀，就会影响', 'img/love/love3.jpg'),
(8, '新手养盆景的注意事项', '培植植物选择\r\n总的来说，能够制作成盆景养殖的植物基本上就是一些乔木和灌木，常绿型的植物也比较常见。\r\n新手还是选择去花卉店购买比较合适，丰富多样、应有尽有，随便你怎么挑选，并且店主还会带给你不错的推荐和建议。\r\n挑的时候注意看植株的外观，尽量选一些健壮的、造型美观的。\r\n虽然像压条、扦插等方式比较经济划算，也比较能锻炼花友们的动手能力，\r\n但是毕竟对新手来说有点困难，先熟悉一下简单的养护方法，再尝试高难度的比较好。', 'img/love/love4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `gf_product`
--

CREATE TABLE `gf_product` (
  `pid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `fname` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `pic_pro` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sales` varchar(64) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `detail_pic` varchar(356) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_product`
--

INSERT INTO `gf_product` (`pid`, `fid`, `fname`, `title`, `pic_pro`, `price`, `sales`, `promise`, `detail_pic`) VALUES
(1, 1, '栀子花', '红豆（Hodo）栀子花文竹铁海棠沙漠玫瑰办公室内水培绿植盆栽四季开花花卉植', 'img/product/1.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(2, 1, '铜钱草', '阿克苏河 铜钱草盆栽套餐 金钱草室内盆栽植物 土培 水培花卉绿植 时尚圆球瓶 铜钱草套餐', 'img/product/2.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(3, 1, '枝苑', '沁心园【30粒已开口碗莲套装】荷花睡莲花种碗莲种子盆栽水培绿植花卉种子四季播种 A混色30粒套装', 'img/product/3.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(4, 1, '栀子花', '蝴蝶兰花苗 室内盆栽花卉绿植 兰花盆栽 当年开花 蓝精灵', 'img/product/4.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(5, 1, '铜钱草', '羞花闭月 发财树大植物盆栽绿植花卉办公室室内花草绿萝富贵竹盆景 文竹带盆栽好', 'img/product/5.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(6, 1, '枝苑', '懒人园艺（LAZYGARDEN） 绿萝办公室居家观叶花卉绿植发财树水培植物栀子花带盆栽好 文竹-白盆奶白篮', 'img/product/6.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(7, 2, '栀子花', '红豆（Hodo）栀子花文竹铁海棠沙漠玫瑰办公室内水培绿植盆栽四季开花花卉植', 'img/product/7.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(8, 2, '铜钱草', '阿克苏河 铜钱草盆栽套餐 金钱草室内盆栽植物 土培 水培花卉绿植 时尚圆球瓶 铜钱草套餐', 'img/product/8.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(9, 2, '枝苑', '沁心园【30粒已开口碗莲套装】荷花睡莲花种碗莲种子盆栽水培绿植花卉种子四季播种 A混色30粒套装', 'img/product/9.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(10, 2, '栀子花', '蝴蝶兰花苗 室内盆栽花卉绿植 兰花盆栽 当年开花 蓝精灵', 'img/product/10.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(11, 3, '铜钱草', '羞花闭月 发财树大植物盆栽绿植花卉办公室室内花草绿萝富贵竹盆景 文竹带盆栽好', 'img/product/11.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(12, 3, '枝苑', '懒人园艺（LAZYGARDEN） 绿萝办公室居家观叶花卉绿植发财树水培植物栀子花带盆栽好 文竹-白盆奶白篮', 'img/product/11.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(13, 3, '栀子花', '蝴蝶兰花苗 室内盆栽花卉绿植 兰花盆栽 当年开花 蓝精灵', 'img/product/12.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(14, 3, '铜钱草', '羞花闭月 发财树大植物盆栽绿植花卉办公室室内花草绿萝富贵竹盆景 文竹带盆栽好', 'img/product/13.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(15, 3, '枝苑', '懒人园艺（LAZYGARDEN） 绿萝办公室居家观叶花卉绿植发财树水培植物栀子花带盆栽好 文竹-白盆奶白篮', 'img/product/14.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(16, 4, '栀子花', '红豆（Hodo）栀子花文竹铁海棠沙漠玫瑰办公室内水培绿植盆栽四季开花花卉植', 'img/product/1.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(17, 4, '铜钱草', '阿克苏河 铜钱草盆栽套餐 金钱草室内盆栽植物 土培 水培花卉绿植 时尚圆球瓶 铜钱草套餐', 'img/product/2.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(18, 4, '枝苑', '沁心园【30粒已开口碗莲套装】荷花睡莲花种碗莲种子盆栽水培绿植花卉种子四季播种 A混色30粒套装', 'img/product/3.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(19, 4, '栀子花', '蝴蝶兰花苗 室内盆栽花卉绿植 兰花盆栽 当年开花 蓝精灵', 'img/product/4.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(20, 5, '铜钱草', '羞花闭月 发财树大植物盆栽绿植花卉办公室室内花草绿萝富贵竹盆景 文竹带盆栽好', 'img/product/5.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(21, 5, '枝苑', '懒人园艺（LAZYGARDEN） 绿萝办公室居家观叶花卉绿植发财树水培植物栀子花带盆栽好 文竹-白盆奶白篮', 'img/product/6.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(22, 5, '栀子花', '红豆（Hodo）栀子花文竹铁海棠沙漠玫瑰办公室内水培绿植盆栽四季开花花卉植', 'img/product/7.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(23, 5, '铜钱草', '阿克苏河 铜钱草盆栽套餐 金钱草室内盆栽植物 土培 水培花卉绿植 时尚圆球瓶 铜钱草套餐', 'img/product/8.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(24, 6, '枝苑', '沁心园【30粒已开口碗莲套装】荷花睡莲花种碗莲种子盆栽水培绿植花卉种子四季播种 A混色30粒套装', 'img/product/9.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(25, 6, '栀子花', '蝴蝶兰花苗 室内盆栽花卉绿植 兰花盆栽 当年开花 蓝精灵', 'img/product/10.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(26, 6, '铜钱草', '羞花闭月 发财树大植物盆栽绿植花卉办公室室内花草绿萝富贵竹盆景 文竹带盆栽好', 'img/product/11.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(27, 7, '枝苑', '懒人园艺（LAZYGARDEN） 绿萝办公室居家观叶花卉绿植发财树水培植物栀子花带盆栽好 文竹-白盆奶白篮', 'img/product/11.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(28, 7, '栀子花', '蝴蝶兰花苗 室内盆栽花卉绿植 兰花盆栽 当年开花 蓝精灵', 'img/product/12.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(29, 7, '铜钱草', '羞花闭月 发财树大植物盆栽绿植花卉办公室室内花草绿萝富贵竹盆景 文竹带盆栽好', 'img/product/13.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL),
(30, 7, '枝苑', '懒人园艺（LAZYGARDEN） 绿萝办公室居家观叶花卉绿植发财树水培植物栀子花带盆栽好 文竹-白盆奶白篮', 'img/product/14.jpg', '123.99', '满39元，可享受地区包邮', '正品保证，不支持七天退货', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `gf_product_family`
--

CREATE TABLE `gf_product_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_product_family`
--

INSERT INTO `gf_product_family` (`fid`, `fname`) VALUES
(1, '栀子花'),
(2, '发财树'),
(3, '吊兰'),
(4, '绿萝'),
(5, '茉莉'),
(6, '红豆'),
(7, '蝴蝶兰');

-- --------------------------------------------------------

--
-- 表的结构 `gf_product_pic`
--

CREATE TABLE `gf_product_pic` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_product_pic`
--

INSERT INTO `gf_product_pic` (`tid`, `pid`, `fid`, `md`) VALUES
(1, 1, 1, 'img/detail/1_md1.jpg'),
(2, 2, 1, 'img/detail/1_md2.jpg'),
(3, 3, 1, 'img/detail/1_md3.jpg'),
(4, 4, 1, 'img/detail/2_md1.jpg'),
(5, 5, 1, 'img/detail/2_md2.jpg'),
(6, 6, 1, 'img/detail/2_md3.jpg'),
(7, 7, 2, 'img/detail/3_md1.jpg'),
(8, 8, 2, 'img/detail/3_md2.jpg'),
(9, 9, 2, 'img/detail/3_md3.jpg'),
(10, 10, 2, 'img/detail/4_md1.jpg'),
(11, 11, 3, 'img/detail/4_md2.jpg'),
(12, 12, 3, 'img/detail/4_md3.jpg'),
(13, 13, 3, 'img/detail/5_md1.jpg'),
(14, 14, 3, 'img/detail/5_md2.jpg'),
(15, 15, 3, 'img/detail/5_md3.jpg'),
(16, 16, 4, 'img/detail/6_md1.jpg'),
(17, 17, 4, 'img/detail/6_md2.jpg'),
(18, 18, 4, 'img/detail/6_md3.jpg'),
(19, 19, 4, 'img/detail/7_md1.jpg'),
(20, 20, 5, 'img/detail/7_md2.jpg'),
(21, 21, 5, 'img/detail/7_md3.jpg'),
(22, 22, 5, 'img/detail/8_md1.jpg'),
(23, 23, 5, 'img/detail/8_md2.jpg'),
(24, 24, 6, 'img/detail/8_md3.jpg'),
(25, 25, 6, 'img/detail/9_md1.jpg'),
(26, 26, 6, 'img/detail/9_md2.jpg'),
(27, 27, 7, 'img/detail/9_md3.jpg'),
(28, 28, 7, 'img/detail/10_md1.jpg'),
(29, 29, 7, 'img/detail/10_md2.jpg'),
(30, 30, 7, 'img/detail/10_md3.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `gf_shoppingcart_item`
--

CREATE TABLE `gf_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_shoppingcart_item`
--

INSERT INTO `gf_shoppingcart_item` (`iid`, `uid`, `pid`, `count`, `is_checked`) VALUES
(3, 1, 2, 2, 0),
(4, 1, 3, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gf_user`
--

CREATE TABLE `gf_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gf_user`
--

INSERT INTO `gf_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'fangfang', '123456', '123@qq.com', '1323245666', NULL, NULL, NULL),
(2, 'lingling', '123456', '123@qq.com', '1323245666', NULL, NULL, NULL),
(3, 'fangfang', 'fangfang', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gf_heart`
--
ALTER TABLE `gf_heart`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `gf_index`
--
ALTER TABLE `gf_index`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `gf_love`
--
ALTER TABLE `gf_love`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `gf_product`
--
ALTER TABLE `gf_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `gf_product_family`
--
ALTER TABLE `gf_product_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `gf_product_pic`
--
ALTER TABLE `gf_product_pic`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `gf_shoppingcart_item`
--
ALTER TABLE `gf_shoppingcart_item`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `gf_user`
--
ALTER TABLE `gf_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `gf_heart`
--
ALTER TABLE `gf_heart`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `gf_index`
--
ALTER TABLE `gf_index`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `gf_love`
--
ALTER TABLE `gf_love`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `gf_product`
--
ALTER TABLE `gf_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `gf_product_family`
--
ALTER TABLE `gf_product_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `gf_product_pic`
--
ALTER TABLE `gf_product_pic`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `gf_shoppingcart_item`
--
ALTER TABLE `gf_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `gf_user`
--
ALTER TABLE `gf_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 限制导出的表
--

--
-- 限制表 `gf_heart`
--
ALTER TABLE `gf_heart`
  ADD CONSTRAINT `gf_heart_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `gf_product` (`pid`);

--
-- 限制表 `gf_shoppingcart_item`
--
ALTER TABLE `gf_shoppingcart_item`
  ADD CONSTRAINT `gf_shoppingcart_item_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `gf_product` (`pid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
