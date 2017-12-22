SET NAMES UTF8;
DROP DATABASE IF EXISTS pink;
CREATE DATABASE pink CHARSET=UTF8;
USE pink;


/**笔记本电脑型号家族**/
CREATE TABLE pk_product_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);

/**笔记本电脑**/
CREATE TABLE pk_product(
  pid  INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,              #所属型号家族编号
  fname VARCHAR(64),     #家族名字；
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  pic_pro  VARCHAR(128),       #商品图片
  price DECIMAL(10,2),        #价格
  sales  VARCHAR(64),         #促销活动
  promise VARCHAR(64),         #服务承诺
  weight DECIMAL(10,3),        #商品重量
  detail_pic VARCHAR(356),     #详情信息
  spec VARCHAR(64),           #规格/颜色
  shelf_time BIGINT,          #上架时间
  sold_count INT,           #已售出的数量
  is_salse  tinyint(1)         #是否下架

);

#推荐商品表；；

CREATE TABLE pk_recom(
  mid INT PRIMARY KEY AUTO_INCREMENT,               
  img   VARCHAR(128),           
  price  DECIMAL(10,2),        #价格      
  title  VARCHAR(128)             
);
/**笔记本电脑图片**/
CREATE TABLE pk_product_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,             #笔记本电脑编号
  sm VARCHAR(128),            #小图片路径      #64*64
  md VARCHAR(128),            #中图片路径    #400*400
  lg VARCHAR(128)             #大图片路径     #800*800
);

/**用户信息**/
CREATE TABLE pk_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/**收货地址信息**/
CREATE TABLE pk_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,   #收货地址编号
  uid INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目**/
CREATE TABLE pk_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,   #购物车编号
  uid INT,      #用户编号
  pid INT,      #商品编号
  count INT,        #购买数量
FOREIGN KEY(pid) REFERENCES pk_product(pid),
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单**/
CREATE TABLE pk_order(
  oid INT PRIMARY KEY AUTO_INCREMENT,  #订单编号
  uid INT,
  aid INT,     
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单详情表**/
CREATE TABLE pk_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,   #商品详情编号
  oid INT,               #订单编号
  pid INT,         #产品编号
  count INT               #购买数量
);
#首页轮播
CREATE TABLE pk_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT, 
  img VARCHAR(128),
  title VARCHAR(64), 
  href VARCHAR(128)
);
#首页name内容
CREATE TABLE pk_index_name(
  cid INT PRIMARY KEY AUTO_INCREMENT, 
  img VARCHAR(128),
  title VARCHAR(64), 
  href VARCHAR(128)
);


/*******************/
/******数据导入******/
/*******************/
/**笔记本电脑型号家族**/
INSERT INTO pk_product_family VALUES
(NULL,'美迪惠尔'),
(NULL,'迪奥'),,
(NULL,'SK-II'),
(NULL,'SPN'),
(NULL,'香奈儿'),
(NULL,'卡姿兰');
INSERT INTO pk_index_carousel VALUES
(NULL,'img/index/banner7.jpg','图片1','product.html'),
(NULL,'img/index/banner4.jpg','图片2','product.html'),
(NULL,'img/index/banner9.jpg','图片3','product.html'),
(NULL,'img/index/banner6.jpg','图片4','product-detail.html?pid=19');

INSERT INTO pk_index_name VALUES
(NULL,'img/index/name20.jpg','图片1','product.html'),
(NULL,'img/index/name21.jpg','图片2','product.html'),
(NULL,'img/index/name22.jpg','图片3','product.html'),
(NULL,'img/index/name23.jpg','图片1','product.html'),
(NULL,'img/index/name24.jpg','图片2','product.html'),
(NULL,'img/index/name25.jpg','图片3','product.html'),
(NULL,'img/index/name27.jpg','图片4','product-detail.html?pid=19');
(NULL,'img/index/name28.jpg','图片1','product.html'),
(NULL,'img/index/name29.jpg','图片2','product.html'),
(NULL,'img/index/name30.jpg','图片3','product.html'),
(NULL,'img/index/name31.jpg','图片1','product.html'),
(NULL,'img/index/name32.jpg','图片2','product.html'),
(NULL,'img/index/name34.jpg','图片2','product-detail.html?pid=12'),
(NULL,'img/index/name35.jpg','图片3','product-detail.html?pid=6'),
(NULL,'img/index/name36.jpg','图片4','product-detail.html?pid=19');
(NULL,'img/index/name34.jpg','图片3','product-detail.html?pid=30'),
(NULL,'img/index/name35.jpg','图片2','product-detail.html?pid=21'),
(NULL,'img/index/name36.jpg','图片3','product-detail.html?pid=32'),
(NULL,'img/index/name34.jpg','图片2','product.html'),
(NULL,'img/index/name35.jpg','图片3','product.html'),
(NULL,'img/index/name34.jpg','图片2','product.html'),
(NULL,'img/index/name35.jpg','图片3','product.html'),
/**笔记本电脑     15 列**/

INSERT INTO pk_product VALUES
(1,1,'美迪惠尔','美迪惠尔面膜','Mediheal可莱丝美迪惠尔水润保湿面膜10片水库针剂(保湿补水男女士 护肤品）新老包装随机发放 ','img/product/md_pr1.jpg','105','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork">
<div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> 
<img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg">  <img class="" src="img/product_detail/med_de6.jpg"> <img class="" src="img/product_detail/med_de7.jpg"></div></div></div>','水润保湿面膜10片','150123456789', '2968', '1'),
(2,1,'美迪惠尔','美迪惠尔面膜','美迪惠尔(Mediheal) 可莱丝 N.M.F针剂水库补水面膜贴 10片/盒 补水保湿 ','img/product/md_pr2.jpg',49.9','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> 
<img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"><img class="" src="img/product_detail/med_de6.jpg"> <img class="" src="img/product_detail/med_de7.jpg"> </div></div></div>','针剂水库10片','150123456789', '2968', '1'),
(3,1,'美迪惠尔','美迪惠尔','Mediheal可莱丝 美迪惠尔美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ','img/product/md_pr3.jpg','125','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork">
<div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"></div></div></div>','美白黑炭面膜10片','150123456789', '2968', '1'),
(4,1,'美迪惠尔','美迪惠尔面膜',' Mediheal可莱丝美迪惠尔胶原蛋白面膜10片水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士）','img/product/md_pr4.jpg',49.9','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','胶原蛋白面膜10片','150123456789', '2968', '1'),
(5,1,'美迪惠尔','美迪惠尔面膜',' 美迪惠尔(Mediheal)保湿莹润焕肤精选套组（水润保湿面膜x2片+胶原面膜x2片+维生素面膜x2片）','img/product/md_pr5.jpg','65','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.205','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> 
</div></div></div>','保湿莹润焕肤套装6片','150123456789', '2968', '1'),
(6,1,'美迪惠尔','美迪惠尔面膜',' Mediheal可莱丝 美迪惠尔毛孔紧致黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ','img/product/md_pr6.jpg',49.9','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','毛孔紧致黑炭面膜10片','150123456789', '2968', '1'),
(7,1,'美迪惠尔','美迪惠尔面膜','Mediheal可莱丝 美迪惠尔美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ' ,'img/product/md_pr7.jpg','128','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','美白黑炭面膜10片','150123456789', '2968', '1'),
(8,1,'美迪惠尔','美迪惠尔面膜',' Mediheal可莱丝 美迪惠尔维生素面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士）','img/product/md_pr8.jpg','109.9','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.35','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','茶树面膜10片','150123456789', '2968', '1'),
(9,1,'美迪惠尔','美迪惠尔面膜','Mediheal可莱丝 美迪惠尔美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ','img/product/md_pr9.jpg','128','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','维生素针剂面膜10片','150123456789', '2968', '1'),
(10,2,'Dior','迪奥唇蜜','克丽丝汀迪奥DIOR魅惑润唇蜜SPF10 3.5g（又名：克丽丝汀迪奥魅惑润唇膏 口红（焕彩）','img/product/di_pr1.jpg','269.00','此价格不与套装优惠同时享受','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.04','粉色001','150123456789', '2968', '1'),
(11,2,'Dior','迪奥唇蜜','迪奥（Dior）魅惑润唇蜜004 3.5g（丰唇膏 口红 橘色）新老包装交替 ','img/product/di_pr2.jpg','289','此价格不与套装优惠同时享受','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.035','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','橘色002','150123456789', '2968', '1'),
(12,2,'Dior','迪奥唇膏','迪奥（Dior）魅惑润唇蜜 005 3.5g（丰唇膏 口红 紫罗兰色）','img/product/di_pr3.jpg','289','此价格不与套装优惠同时享受','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.03','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','紫色003','150123456789', '2968', '1'),
(13,2,'Dior','迪奥香水','迪奥（Dior）迪奥小姐花漾淡香氛 100ml（又名:迪奥小姐花漾淡香水） ','img/product/di_pr4.jpg','1099',' 此价格不与套装优惠同时享受','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','花漾100ml','150123456789', '2968', '1'),
(14,2,'Dior','迪奥香水','迪奥（Dior）迪奥（Dior）迪奥小姐漫舞花漾香氛 100ml ','img/product/di_pr5.jpg','999','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.230','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','淡香氛50ml','150123456789', '2968', '1'),
(15,2,'Dior','迪奥香氛','迪奥(Dior)迪奥小姐香氛 50ml（全新迪奥小姐淡香氛）','img/product/di_pr6.jpg','1049','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','漫舞花漾100ml','150123456789', '2968', '1'),
(16,2,'Dior','迪奥香氛','迪奥（Dior）真我淡香水 100ml ','img/product/di_pr7.jpg','709','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.186','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','50ml','150123456789', '2968', '1'),
(18,2,'Dior','迪奥香水','迪奥（Dior）真我淡香水 100ml ','img/product/di_pr8.jpg','999','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.366','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','100ml','150123456789', '2968', '1'),
(19,3,'SK-II','SK-II礼盒','SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ','img/product/sk_pr1.jpg','1377','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','1.76','神仙水净透修护礼盒','150123456789', '2968', '1'),
(20,3,'SK-II','SK-II精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr2.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','护肤精华露105ml','150123456789', '2968', '1'),
(21,3,'SK-II','SK-II精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr3.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','护肤精华露155ml','150123456789', '2968', '1'),
(22,3,'SK-II精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr4.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','护肤精华露205ml','150123456789', '2968', '1');
(23,4,'SPN','SPN面膜','Mediheal可莱丝美迪惠尔水润保湿面膜10片水库针剂(保湿补水男女士 护肤品）新老包装随机发放 ','img/product/md_pr1.jpg','105','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','水润保湿面膜10片','150123456789', '2968', '1'),
(24,4,'SPN','SPN面膜','美迪惠尔(Mediheal) 可莱丝 N.M.F针剂水库补水面膜贴 10片/盒 补水保湿 ','img/product/md_pr2.jpg','49.9','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','针剂水库10片','150123456789', '2968', '1'),
(25,4,'SPN','SPN面膜','Mediheal可莱丝 美迪惠尔美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ','img/product/md_pr3.jpg','125','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','美白黑炭面膜10片','150123456789', '2968', '1'),
(26,4,'SPN','SPN面膜',' Mediheal可莱丝美迪惠尔胶原蛋白面膜10片水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士）','img/product/md_pr4.jpg','49.9','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','胶原蛋白面膜10片','150123456789', '2968', '1'),
(27,4,'SPN','SPN面膜',' 美迪惠尔(Mediheal)保湿莹润焕肤精选套组（水润保湿面膜x2片+胶原面膜x2片+维生素面膜x2片）','img/product/md_pr5.jpg','65','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.205','保湿莹润焕肤套装6片','150123456789', '2968', '1'),
(28,4,'SPN','SPN面膜',' Mediheal可莱丝 美迪惠尔毛孔紧致黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ','img/product/md_pr6.jpg','49.9','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.345','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','毛孔紧致黑炭面膜10片','150123456789', '2968', '1'),
(29,4,'SPN','SPN面膜','Mediheal可莱丝 美迪惠尔美白保湿黑炭面膜10片 水库针剂(保湿补水 睡眠 亮肤 护肤品 男女士） ' ,'img/product/md_pr7.jpg','128','购买1-3件时享受优惠，超出数量以结算价为准','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/med_de1.jpg"> <img class="" src="img/product_detail/med_de2.jpg"> <img class="" src="img/product_detail/med_de3.jpg"> <img class="" src="img/product_detail/med_de4.jpg"> <img class="" src="img/product_detail/med_de5.jpg"> </div></div></div>','美白黑炭面膜10片','150123456789', '2968', '1'),
(30,5,'香奈儿','香奈儿唇蜜','克丽丝汀迪奥DIOR魅惑润唇蜜SPF10 3.5g（又名：克丽丝汀迪奥魅惑润唇膏 口红（焕彩）','img/product/di_pr1.jpg','269.00','此价格不与套装优惠同时享受','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.04','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','粉色001','150123456789', '2968', '1'),
(31,5,'香奈儿','香奈儿唇蜜','迪奥（Dior）魅惑润唇蜜004 3.5g（丰唇膏 口红 橘色）新老包装交替 ','img/product/di_pr2.jpg','289','此价格不与套装优惠同时享受','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.035','橘色002','150123456789', '2968', '1'),
(32,5,'香奈儿','香奈儿香水','迪奥（Dior）迪奥小姐花漾淡香氛 100ml（又名:迪奥小姐花漾淡香水） ','img/product/di_pr4.jpg','1099',' 此价格不与套装优惠同时享受','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','花漾100ml','150123456789', '2968', '1'),
(33,5,'香奈儿','香奈儿香氛','迪奥(Dior)迪奥小姐香氛 50ml（全新迪奥小姐淡香氛）','img/product/di_pr6.jpg','1049','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','漫舞花漾100ml','150123456789', '2968', '1'),
(34,5,'香奈儿','香奈儿香氛','迪奥(Dior)迪奥小姐香氛 50ml（全新迪奥小姐淡香氛）','img/product/di_pr6.jpg','1049','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','漫舞花漾100ml','150123456789', '2968', '1'),
(42,5,'香奈儿','香奈儿香水','迪奥（Dior）迪奥小姐花漾淡香氛 100ml（又名:迪奥小姐花漾淡香水） ','img/product/di_pr4.jpg','1099',' 此价格不与套装优惠同时享受','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.30','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','花漾100ml','150123456789', '2968', '1'),
(40,5,'香奈儿','香奈儿香氛','迪奥（Dior）真我淡香水 100ml ','img/product/di_pr7.jpg','709','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.186','
<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/di_de1.jpg"> <img class="" src="img/product_detail/di_de2.jpg"> <img class="" src="img/product_detail/di_de3.jpg"> <img class="" src="img/product_detail/di_de4.jpg"> <img class="" src="img/product_detail/di_de5.jpg"> </div></div></div>','50ml','150123456789', '2968', '1'),
(35,6,'卡姿兰','卡姿兰礼盒','SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ','img/product/sk_pr1.jpg','1377','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','1.76','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','神仙水净透修护礼盒','150123456789', '2968', '1'),
(36,6,'卡姿兰','卡姿兰精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr3.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','护肤精华露105ml','150123456789', '2968', '1'),
(37,6,'卡姿兰','卡姿兰精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr4.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','护肤精华露155ml','150123456789', '2968', '1'),
(38,6,'卡姿兰','卡姿兰精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr3.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','护肤精华露205ml','150123456789', '2968', '1');
(39,6,'卡姿兰','卡姿兰礼盒','SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ','img/product/sk_pr1.jpg','1377','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','1.76','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','神仙水净透修护礼盒','150123456789', '2968', '1'),
(41,6,'卡姿兰','卡姿兰精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr4.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','护肤精华露105ml','150123456789', '2968', '1'),
(43,6,'卡姿兰','卡姿兰精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr2.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','护肤精华露155ml','150123456789', '2968', '1'),
(44,6,'卡姿兰','卡姿兰精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr3.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','护肤精华露205ml','150123456789', '2968', '1');
(45,6,'卡姿兰','卡姿兰礼盒','SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ','img/product/sk_pr1.jpg','1377','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','1.76','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','神仙水净透修护礼盒','150123456789', '2968', '1'),
(46,6,'卡姿兰','卡姿兰精华露','SK-II护肤精华露75ml（精华液 神仙水） ','img/product/sk_pr3.jpg','590','满1099元、1799元可得相应赠品，赠完即止，请在购物车点击领取','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','0.22','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','护肤精华露205ml','150123456789', '2968', '1');
(47,6,'卡姿兰','卡姿兰礼盒','SK-II"神仙水"晶透修护礼盒（神仙水230ml+洁面霜20g+清莹露30ml+微肌因修护精华霜15g）（护肤套装） ','img/product/sk_pr1.jpg','1377','购买美妆部分商品满1元，即返服饰类部分商品99减20元东券','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','1.76','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product_detail/sk_de1.jpg"> <img class="" src="img/product_detail/sk_de2.jpg"> <img class="" src="img/product_detail/sk_de3.jpg"><img class="" src="img/product_detail/sk_de4.jpg"> <img class="" src="img/product_detail/sk_de5.jpg"> </div></div></div>','神仙水净透修护礼盒','150123456789', '2968', '1'),

INSERT INTO `pk_product_pic` VALUES ('1', '1', 'img/product/med_sm1.jpg', 'img/product/med_md1.jpg', 'img/product/med_lg1.jpg');
INSERT INTO `pk_product_pic` VALUES ('2', '1', 'img/product/med_sm2.jpg', 'img/product/med_md2.jpg', 'img/product/med_lg2.jpg');
INSERT INTO `pk_product_pic` VALUES ('3', '1', 'img/product/med_sm3.jpg', 'img/product/med_md3.jpg', 'img/product/med_lg3.jpg');
INSERT INTO `pk_product_pic` VALUES ('4', '1', 'img/product/med_sm4.jpg', 'img/product/med_md4.jpg', 'img/product/med_lg4.jpg');
INSERT INTO `pk_product_pic` VALUES ('5', '1', 'img/product/med_sm5.jpg', 'img/product/med_md5.jpg', 'img/product/med_lg5.jpg');

INSERT INTO `pk_product_pic` VALUES ('6', '1', 'img/product/med_sm6.jpg', 'img/product/med_md6.jpg', 'img/product/med_lg6.jpg');
INSERT INTO `pk_product_pic` VALUES ('7', '1', 'img/product/med_sm7.jpg', 'img/product/med_md7.jpg', 'img/product/med_lg7.jpg');

INSERT INTO `pk_product_pic` VALUES ('8', '1', 'img/product/med_sm3.jpg', 'img/product/med_md3.jpg', 'img/product/med_lg3.jpg');
INSERT INTO `pk_product_pic` VALUES ('9', '1', 'img/product/med_sm4.jpg', 'img/product/med_md4.jpg', 'img/product/med_lg4.jpg');

INSERT INTO `pk_product_pic` VALUES ('10', '2', 'img/product/dior_sm4.jpg', 'img/product/dior_md4.jpg', 'img/product/dior_lg4.jpg');

INSERT INTO `pk_product_pic` VALUES ('11', '2', 'img/product/dior_sm5.jpg', 'img/product/dior_md5.jpg', 'img/product/dior_lg5.jpg');

INSERT INTO `pk_product_pic` VALUES ('12', '2', 'img/product/dior_sm6.jpg', 'img/product/dior_md6.jpg', 'img/product/dior_lg6.jpg');
INSERT INTO `pk_product_pic` VALUES ('13', '2', 'img/product/dior_sm1.jpg', 'img/product/dior_md1.jpg', 'img/product/dior_lg1.jpg');

INSERT INTO `pk_product_pic` VALUES ('14', '2', 'img/product/dior_sm2.jpg', 'img/product/dior_md2.jpg', 'img/product/dior_lg2.jpg');

INSERT INTO `pk_product_pic` VALUES ('15', '2', 'img/product/dior_sm3.jpg', 'img/product/dior_md3.jpg', 'img/product/dior_lg3.jpg');

INSERT INTO `pk_product_pic` VALUES ('16', '2', 'img/product/dior_sm7.jpg', 'img/product/dior_md7.jpg', 'img/product/dior_lg7.jpg');
INSERT INTO `pk_product_pic` VALUES ('17', '2', 'img/product/dior_sm5.jpg', 'img/product/dior_md5.jpg', 'img/product/dior_lg5.jpg');
INSERT INTO `pk_product_pic` VALUES ('18', '2', 'img/product/dior_sm8.jpg', 'img/product/dior_md8.jpg', 'img/product/dior_lg8.jpg');




INSERT INTO `pk_product_pic` VALUES ('19', '3', 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg');


INSERT INTO `pk_product_pic` VALUES ('20', '3', 'img/product/sk_sm2.jpg', 'img/product/sk_md2.jpg', 'img/product/sk_lg2.jpg');

INSERT INTO `pk_product_pic` VALUES ('21', '3', 'img/product/sk_sm3.jpg', 'img/product/sk_md3.jpg', 'img/product/sk_lg3.jpg');

INSERT INTO `pk_product_pic` VALUES ('22', '3', 'img/product/sk_sm4.jpg', 'img/product/sk_md4.jpg', 'img/product/sk_lg4.jpg');

INSERT INTO `pk_product_pic` VALUES ('23', '4', 'img/product/med_sm1.jpg', 'img/product/med_md1.jpg', 'img/product/med_lg1.jpg');
INSERT INTO `pk_product_pic` VALUES ('24', '4', 'img/product/med_sm2.jpg', 'img/product/med_md2.jpg', 'img/product/med_lg2.jpg');
INSERT INTO `pk_product_pic` VALUES ('25', '4', 'img/product/med_sm3.jpg', 'img/product/med_md3.jpg', 'img/product/med_lg3.jpg');
INSERT INTO `pk_product_pic` VALUES ('26', '4', 'img/product/med_sm4.jpg', 'img/product/med_md4.jpg', 'img/product/med_lg4.jpg');
INSERT INTO `pk_product_pic` VALUES ('27', '4', 'img/product/med_sm5.jpg', 'img/product/med_md5.jpg', 'img/product/med_lg5.jpg');

INSERT INTO `pk_product_pic` VALUES ('28', '4', 'img/product/med_sm6.jpg', 'img/product/med_md6.jpg', 'img/product/med_lg6.jpg');
INSERT INTO `pk_product_pic` VALUES ('29', '4', 'img/product/med_sm7.jpg', 'img/product/med_md7.jpg', 'img/product/med_lg7.jpg');

INSERT INTO `pk_product_pic` VALUES ('30', '5', 'img/product/dior_sm1.jpg', 'img/product/dior_md1.jpg', 'img/product/dior_lg1.jpg');

INSERT INTO `pk_product_pic` VALUES ('31', '5', 'img/product/dior_sm2.jpg', 'img/product/dior_md2.jpg', 'img/product/dior_lg2.jpg');

INSERT INTO `pk_product_pic` VALUES ('32', '5', 'img/product/dior_sm4.jpg', 'img/product/dior_md4.jpg', 'img/product/dior_lg4.jpg');

INSERT INTO `pk_product_pic` VALUES ('33', '5', 'img/product/dior_sm6.jpg', 'img/product/dior_md6.jpg', 'img/product/dior_lg6.jpg');
INSERT INTO `pk_product_pic` VALUES ('34', '5', 'img/product/dior_sm6.jpg', 'img/product/dior_md6.jpg', 'img/product/dior_lg6.jpg');


INSERT INTO `pk_product_pic` VALUES ('35', '6', 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg');
INSERT INTO `pk_product_pic` VALUES ('36', '6', 'img/product/sk_sm2.jpg', 'img/product/sk_md2.jpg', 'img/product/sk_lg2.jpg');

INSERT INTO `pk_product_pic` VALUES ('37', '6', 'img/product/sk_sm3.jpg', 'img/product/sk_md3.jpg', 'img/product/sk_lg3.jpg');

INSERT INTO `pk_product_pic` VALUES ('38', '6', 'img/product/sk_sm4.jpg', 'img/product/sk_md4.jpg', 'img/product/sk_lg4.jpg');
INSERT INTO `pk_product_pic` VALUES ('39', '6', 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg');

INSERT INTO `pk_product_pic` VALUES ('40', '5', 'img/product/dior_sm7.jpg', 'img/product/dior_md7.jpg', 'img/product/dior_lg7.jpg');
INSERT INTO `pk_product_pic` VALUES ('41', '6', 'img/product/sk_sm4.jpg', 'img/product/sk_md4.jpg', 'img/product/sk_lg4.jpg');

INSERT INTO `pk_product_pic` VALUES ('42', '5', 'img/product/dior_sm4.jpg', 'img/product/dior_md4.jpg', 'img/product/dior_lg4.jpg');
INSERT INTO `pk_product_pic` VALUES ('43', '6', 'img/product/sk_sm2.jpg', 'img/product/sk_md2.jpg', 'img/product/sk_lg2.jpg');
INSERT INTO `pk_product_pic` VALUES ('44', '6', 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg');

INSERT INTO `pk_product_pic` VALUES ('45', '5', 'img/product/dior_sm7.jpg', 'img/product/dior_md7.jpg', 'img/product/dior_lg7.jpg');
INSERT INTO `pk_product_pic` VALUES ('46', '6', 'img/product/sk_sm2.jpg', 'img/product/sk_md2.jpg', 'img/product/sk_lg2.jpg');
INSERT INTO `pk_product_pic` VALUES ('47', '6', 'img/product/sk_sm1.jpg', 'img/product/sk_md1.jpg', 'img/product/sk_lg1.jpg');

INSERT INTO `pk_recom` VALUES(null,'img/product_detail/osm_md1.jpg','234.00','欧诗漫珍珠美白');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/osm_md2.jpg','324.00','欧诗漫补水养颜');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/osm_md3.jpg','123.00','欧诗漫祛痘美白');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/mei_md2.jpg','99.99','敏感肌套盒');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/mei_md3.jpg','199.90','调理面部肌肤');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/mei_md4.jpg','67.00','补水保湿');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/mei_md5.jpg','89.00','补水洁面套盒');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/mei_md6.jpg','996.00','深层洁面霜');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/mei_md7.jpg','465.00','美白软化角质');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/mei_md8.jpg','34.00','修复面部问题');



INSERT INTO `pk_recom` VALUES(null,'img/product_detail/han_de1.jpg','123.00','欧诗漫祛痘美白');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/han_de2.jpg','99.99','敏感肌套盒');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/han_de3.jpg','199.90','调理面部肌肤');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/han_de5.jpg','67.00','补水保湿');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/han_de6.jpg','89.00','补水洁面套盒');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/han_de7.jpg','996.00','深层洁面霜');
INSERT INTO `pk_recom` VALUES(null,'img/product_detail/han_de9.jpg','465.00','美白软化角质');















