DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `order_id` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需求标题',
  `price` decimal(65,2) DEFAULT NULL COMMENT '期望价格',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `order_status` int NOT NULL DEFAULT '0' COMMENT '订单状态，0表示待合作，1表示待发货，2表示完成，3表示完成但未评价',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '1销售订单，2需求订单',
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发起订单人',
  `cooperation_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '合作人名字',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单收货地址',
  `child_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO tb_order (picture, title, content, price, own_name, type, category_id, child_id, create_time, update_time)
VALUES (
    'https://image.cnhnb.com/image/jpeg/head/2023/06/06/5ea9b89c122444b7ac9810edd62e20e3.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '金都一号红心火龙果一箱批发',
    '金都一号红心火龙果一箱批发',
    24.9,
    '玉鲜果园',
    'goods',
    0,
    0,
    NOW(),
    NOW()
);
INSERT INTO tb_order (picture, title, content, price, own_name, type, category_id, child_id, create_time, update_time)
VALUES (
    'https://image.cnhnb.com/image/jpg/head/2022/07/18/f03d7c9c7cc542729761d0babdaabcfa.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '椰子海南椰子椰青2-9个装当季热带水果果园新鲜采摘原产地直销',
    '椰子海南椰子椰青2-9个装当季热带水果果园新鲜采摘原产地直销',
    35.0,
    '海南菠萝蜜供应链',
    'goods',
    0,
    0,
    NOW(),
    NOW()
);
INSERT INTO tb_order
    (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time)
VALUES
    ('https://image.cnhnb.com/image/jpeg/head/2023/06/06/5ea9b89c122444b7ac9810edd62e20e3.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
        '金都一号红心火龙果一箱批发',
        '金都一号红心火龙果一箱批发',
        26.80,
        '玉鲜果园',
        0,
        0,
        'goods',
        NOW(),
        NOW()
);
INSERT INTO tb_order
    (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time)
VALUES
    ('https://image.cnhnb.com/image/jpg/head/2022/11/28/a2b901caba6d4ffc8de702f6a62ef607.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '水果红果参上市，种植基地直发，欢迎新老客户咨询下单。', '水果红果参上市，种植基地直发，欢迎新老客户咨询下单。', '26.00', '德尚农场产地直销店', 0, 4, 'goods', NOW(), NOW());
INSERT INTO tb_order
    (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time)
VALUES
    ('https://image.cnhnb.com/image/jpg/2023/08/16/df421fb80abd4a53b46b85dc85835d9b.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '新疆西梅大量出货，欢迎老板来产地采购', '新疆西梅大量出货，欢迎老板来产地采购', '75.00', '正伟产地直营', 0, 4, 'goods', NOW(), NOW());
INSERT INTO tb_order
    (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time)
VALUES
    ('https://image.cnhnb.com/image/jpg/head/2022/09/27/b42919efdfa9459c955699ee7723eff3.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '沂蒙2022新甜红子 现摘现发一手货源，全国发货', '沂蒙2022新甜红子 现摘现发一手货源，全国发货', '2.20', '天天鲜果业', 0, 4, 'goods', NOW(), NOW());

INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES 
(
    'https://image.cnhnb.com/image/jpg/head/2022/11/06/c52d2652375d467b99cd070f4b94bd5c.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi.com/vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '瑶鸡苗 黑瑶鸡苗 红瑶鸡苗 大黑瑶鸡苗 大红瑶鸡苗 广西瑶鸡',
    '3.65', -- 修改价格范围为中间值
    '利桂种禽',
    2,
    0,
    NOW(),
    NOW(),
    '瑶鸡苗 黑瑶鸡苗 红瑶鸡苗 大黑瑶鸡苗 大红瑶鸡苗 广西瑶鸡', -- 内容与标题相同
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2021/05/30/4c9b951e39cd41c4bfc597e34eebaa0b.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi.com/vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '太湖猪苗 太湖母猪 产崽多 耐粗饲料好养活 抗病能力强 全国',
    '800.00',
    '科技大型养猪场',
    2,
    0,
    NOW(),
    NOW(),
    '太湖猪苗 太湖母猪 产崽多 耐粗饲料好养活 抗病能力强 全国',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2020/02/14/bffef11b53a34595aba5d8b78d4f9345.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '鹅苗 大种白鹅苗 三花鹅苗 出壳苗 脱温苗',
    '13.00',
    '李海燕的店',
    2,
    0,
    NOW(),
    NOW(),
    '鹅苗 大种白鹅苗 三花鹅苗 出壳苗 脱温苗',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/head/2023/03/03/6d7823d9048f4724acf5250428dc8cf3.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '清远麻鸡苗 清远麻1.5 清麻2号鸡苗 土鸡 麻鸡苗',
    '2.20', -- 修改价格范围为中间值
    '广西养禽发畜牧发展有限公司',
    2,
    0,
    NOW(),
    NOW(),
    '清远麻鸡苗 清远麻1.5 清麻2号鸡苗 土鸡 麻鸡苗',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2019/12/11/04fcc1d65b6e4f03aab0dbe34bc94f11.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '乌骨鸡苗 快大乌苗 五黑一绿 白凤乌鸡 山地乌鸡 出壳苗',
    '3.75', -- 修改价格范围为中间值
    '李海燕的店',
    2,
    0,
    NOW(),
    NOW(),
    '乌骨鸡苗 快大乌苗 五黑一绿 白凤乌鸡 山地乌鸡 出壳苗',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/2023/07/04/8d2dad1278bd43319773220fee299a90.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '带皮兔肉，烫皮兔肉，去头去内脏带皮',
    '13.00',
    '鑫马生鲜',
    2,
    1,
    NOW(),
    NOW(),
    '带皮兔肉，烫皮兔肉，去头去内脏带皮',
    'goods'
),
(
    'https://image.cnhnb.com/image/png/head/2022/08/03/552bce1635c04cfabffd2b942b7b388a.png?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '鲜驴肉，真空鲜驴肉，可发全国，一手货源，长期供货，量大优惠',
    '38.50', -- 修改价格范围为中间值
    '亮亮生熟驴肉批发店',
    2,
    1,
    NOW(),
    NOW(),
    '鲜驴肉，真空鲜驴肉，可发全国，一手货源，长期供货，量大优惠',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2023/03/02/4e049f899ae44a24b846d4db6875100f.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '鸡腰子 鸡肾 鸡卵 鸡春',
    '50.15', -- 修改价格范围为中间值
    '陈氏鱼泡花胶鱼肚产地直批',
    2,
    1,
    NOW(),
    NOW(),
    '鸡腰子 鸡肾 鸡卵 鸡春',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/2023/07/20/8e0e077e3f864fa2ac57d53d7d1f78cb.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '鲜冻黄牛肉 牛腿肉 牛肉 屠宰厂直销 牛腿肉',
    '23.50', -- 修改价格范围为中间值
    '潮汕牛肉批发',
    2,
    1,
    NOW(),
    NOW(),
    '鲜冻黄牛肉 牛腿肉 牛肉 屠宰厂直销 牛腿肉',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/2023/06/07/ead1fdcb3129433b9f0c15071bc011a2.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '牛腩 牛肚腩',
    '21.00',
    '小颜生鲜店',
    2,
    1,
    NOW(),
    NOW(),
    '牛腩 牛肚腩',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2021/09/10/9f37a46e48a64dc8b5fcac2cd217ae98.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '散养土鹅蛋，主食稻谷，小麦，蚬壳小虾优良品质',
    '4.95', -- 修改价格范围为中间值
    '恩平市盈昌经销行',
    2,
    2,
    NOW(),
    NOW(),
    '散养土鹅蛋，主食稻谷，小麦，蚬壳小虾优良品质',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2020/07/02/fb1bb7e989e340e3b1c430405e2e3a15.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '糖心皮蛋 口感留香 香而不腻 无抗养殖',
    '0.27', -- 修改价格范围为中间值
    '鹌鹑小哥',
    2,
    2,
    NOW(),
    NOW(),
    '糖心皮蛋 口感留香 香而不腻 无抗养殖',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2023/02/11/2cdbdc8c92b7417cada931e66e9c7424.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '土鸡蛋，散养土鸡蛋，初生蛋',
    '108.00', -- 修改价格范围为中间值
    '邱猛潮养鸡场',
    2,
    2,
    NOW(),
    NOW(),
    '土鸡蛋，散养土鸡蛋，初生蛋',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/2023/07/09/a9e7fefc23ce40f796439c4c0b5e6e29.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '湖北420枚净重 新鲜绿壳土鸡蛋乌鸡蛋整件批发',
    '315.00', -- 修改价格范围为中间值
    '小黄土鸡蛋',
    2,
    2,
    NOW(),
    NOW(),
    '湖北420枚净重 新鲜绿壳土鸡蛋乌鸡蛋整件批发',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/head/2022/09/14/1c8e97cbc5294090aa14c4d79bb70ded.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '高品质放养土鸡蛋',
    '336.00',
    '一亩山土鸡蛋',
    2,
    2,
    NOW(),
    NOW(),
    '高品质放养土鸡蛋',
    'goods'
);

INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES
(
    'https://image.cnhnb.com/image/jpg/head/2022/04/17/bf99fbaabe834cccba1e5068fca3954f.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '改良小黄牛苗',
    '1200.00',
    '陇南小黄牛批发中心',
    2,
    3,
    NOW(),
    NOW(),
    '改良小黄牛苗',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2021/04/24/3964f932346f41cf9a76309d2fea62b1.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '肉驴 德州驴 厂家直供 售后有保障 免费运输 包教技术',
    '2300.00',
    '侯宪讲的店',
    2,
    3,
    NOW(),
    NOW(),
    '肉驴 德州驴 厂家直供 售后有保障 免费运输 包教技术',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/head/2022/08/02/a95de306907e460c94a2249e98f33cdc.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '常年出售波尔山羊 质量好 价格便宜 欢迎选购 支持视频挑选',
    '775.00', -- 修改价格范围为中间值
    '通晟牧业',
    2,
    3,
    NOW(),
    NOW(),
    '常年出售波尔山羊 质量好 价格便宜 欢迎选购 支持视频挑选',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/head/2022/09/27/55f0493e06e742f381766870564891fa.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '中华黑兔六只以上免费包邮',
    '100.00', -- 修改价格范围为中间值
    '联民兔业',
    2,
    3,
    NOW(),
    NOW(),
    '中华黑兔六只以上免费包邮',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2022/08/29/b5eb86c374954881aba6f21de9375a6d.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '肉牛犊西门塔尔肉牛犊改良黄牛犊批发出售',
    '4200.00', -- 修改价格范围为中间值
    '郓城隆发牧业有限公司',
    2,
    3,
    NOW(),
    NOW(),
    '肉牛犊西门塔尔肉牛犊改良黄牛犊批发出售',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2022/11/08/351d296bae72439faf7e40122d8c3e0f.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '狮头鹅白条鹅壳冰鲜发全国',
    '12.75', -- 修改价格范围为中间值
    '滨裕狮头鹅',
    2,
    4,
    NOW(),
    NOW(),
    '狮头鹅白条鹅壳冰鲜发全国',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2023/02/06/e503cc6dadc6499ea1cd4013613ec017.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '肉鸽 扒皮乳鸽，碳烤鸽农村一手货源，欢迎饭店，烧烤店来电洽',
    '19.00', -- 修改价格范围为中间值
    '鲁西散养家禽批发店',
    2,
    4,
    NOW(),
    NOW(),
    '肉鸽 扒皮乳鸽，碳烤鸽农村一手货源，欢迎饭店，烧烤店来电洽',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2023/04/07/29665e8f13d54787809e636e97b8d794.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '脱温珍珠鸡10只包邮发货',
    '16.50', -- 修改价格范围为中间值
    '广西养禽发畜牧发展有限公司',
    2,
    4,
    NOW(),
    NOW(),
    '脱温珍珠鸡10只包邮发货',
    'goods'
),
(
    'https://image.cnhnb.com/image/png/head/2022/10/20/779072c46122452788ef80a55cf5386f.png?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '鹧鸪冻品真空包装',
    '14.00',
    '李苗鹧鸪冻品店',
    2,
    4,
    NOW(),
    NOW(),
    '鹧鸪冻品真空包装',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2019/03/25/dee96f10ad61489fb042321badca2ccd.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2lt.gz5nb20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '自家散养超大珍珠鸡每只三斤多即将下蛋的真珠鸡活体到家包邮',
    '76.50', -- 修改价格范围为中间值
    '太康县刘振伟养殖场',
    2,
    4,
    NOW(),
    NOW(),
    '自家散养超大珍珠鸡每只三斤多即将下蛋的真珠鸡活体到家包邮',
    'goods'
);

INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/group1/M00/88/20/CD425979C0ChRkRllD7NyAMyBAAALPodDZe8U80.JPEG?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '山东毛豆 万亩基地 支持各种包装 诚信合作 质量保证',
    '1.50',
    '韩宇蔬菜',
    1,
    3,
    NOW(),
    NOW(),
    '山东毛豆 万亩基地 支持各种包装 诚信合作 质量保证',
    'goods'
);

-- 第2条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpeg/head/2021/07/05/262288994cc34b1dae96a74‌​7d7f81cd.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aH‌​R0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/w‌​st/2',
    '长豇豆 河南博爱长豆角60厘米以上',
    '0.60',
    '高艳敏的店',
    1,
    3,
    NOW(),
    NOW(),
    '长豇豆 河南博爱长豆角60厘米以上',
    'goods'
);

-- 第3条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpg/2023/05/29/93a3b5e0e7d0422493478a1efdeb21bf.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '白云豆大量有货，价格不高。货品美丽，需要联系',
    '0.50',
    '小郝蔬菜代办',
    1,
    3,
    NOW(),
    NOW(),
    '白云豆大量有货，价格不高。货品美丽，需要联系',
    'goods'
);

-- 第4条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpg/head/2023/03/04/d2b09e5e5f7440f1bff7cac87c2f7487.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '福建扁豆，芸豆，刀豆，大量有货，可以长期合作，需要联系',
    '1.50',
    '迎客来果蔬配送有限公司',
    1,
    3,
    NOW(),
    NOW(),
    '福建扁豆，芸豆，刀豆，大量有货，可以长期合作，需要联系',
    'goods'
);

-- 第5条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpg/2023/06/17/11ba7fb56a0d40a2bf4c64a55b034933.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '四季豆，湖北高山四季豆，架豆，无筋豆，精品',
    '0.90', -- 由于价格范围不标准，我将取中间值 0.90
    '小李农产品产地销售中心',
    1,
    3,
    NOW(),
    NOW(),
    '四季豆，湖北高山四季豆，架豆，无筋豆，精品',
    'goods'
);

-- 第6条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/group1/M00/31/4D/E841BDA8E1ChRkRleZYBaAAZCDAABedBs-RMY834.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '山东聊城大红西红柿生产基地 专业代收代发 厚皮西红柿耐运输',
    '1.20',
    '莘县小龙瓜果蔬菜专业合作社',
    1,
    4,
    NOW(),
    NOW(),
    '山东聊城大红西红柿生产基地 专业代收代发 厚皮西红柿耐运输',
    'goods'
);

-- 第7条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpg/2023/07/01/417ced2aaf7149ef973fa22a8e522636.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '紫长茄 精品紫长茄广茄基地种植面积大自产自销',
    '0.30',
    '张轩蔬菜',
    1,
    4,
    NOW(),
    NOW(),
    '紫长茄 精品紫长茄广茄基地种植面积大自产自销',
    'goods'
);

-- 第8条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpg/head/2022/11/29/fd63286626ea4af289e2cfc53e39f4cd.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '鲜玉米，水果玉米，甜玉米，糯玉米，产地直供',
    '0.80',
    '河北绿泓丰裕农业',
    1,
    4,
    NOW(),
    NOW(),
    '鲜玉米，水果玉米，甜玉米，糯玉米，产地直供',
    'goods'
);

-- 第9条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpeg/head/2019/09/28/14bbadf23c334e118c4ea507ee871e69.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '线椒 精品大量供应，量大从优',
    '1.30',
    '小涛果蔬购销中心',
    1,
    4,
    NOW(),
    NOW(),
    '线椒 精品大量供应，量大从优',
    'goods'
);

-- 第10条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpg/2023/08/30/91ce129409ed4ee7800371ba453408fd.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '头批甜糯黑玉米',
    '60.00',
    '苗苗玉米鲜食',
    1,
    4,
    NOW(),
    NOW(),
    '头批甜糯黑玉米',
    'goods'
);

-- 第11条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpg/head/2022/02/20/549dbd3809864eaa8a48b89853a8e258.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '黑木耳 特级东北木耳，质优价廉，无异味',
    '22.25', -- 由于价格范围不标准，我将取中间值 22.25
    '顺发香菇东北木耳批发',
    1,
    5,
    NOW(),
    NOW(),
    '黑木耳 特级东北木耳，质优价廉，无异味',
    'goods'
);

-- 第12条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpeg/head/2019/01/09/a1c6b0fab10c4902a314fcb5aff08f70.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '22年新货茶树菇干货开伞茶树菇香嫩农家自产江西广昌茶薪菇散装',
    '27.25', -- 由于价格范围不标准，我将取中间值 27.25
    '广昌县睿优农副食品',
    1,
    5,
    NOW(),
    NOW(),
    '22年新货茶树菇干货开伞茶树菇香嫩农家自产江西广昌茶薪菇散装',
    'goods'
);

-- 第13条数据插入语句
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES (
    'https://image.cnhnb.com/image/jpeg/head/2021/02/24/8dd049fe7f514784bef28b6e87aa7a23.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '古田银耳干货白木耳散装批发 丑耳糯耳雪耳产地直供产地直销',
    '24.50', -- 由于价格范围不标准，我将取中间值 24.50
    '古田县建宏农业开发有限公司',
    1,
    5,
    NOW(),
    NOW(),
    '古田银耳干货白木耳散装批发 丑耳糯耳雪耳产地直供产地直销',
    'goods'
);
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpg/head/2021/08/07/0b1dffe1a5314321a981a5cb477362f1.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '冬枣 五十万亩基地直供枣园现摘对接电商平台一件代发价格便宜', '冬枣 五十万亩基地直供枣园现摘对接电商平台一件代发价格便宜', '0.48', '枣源枣业', 0, 4, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpeg/head/2022/08/12/1ff426c514bd4fc99c0cd09910b8c67f.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '软籽石榴 四川突尼斯软籽石榴 一件代发产地直供', '软籽石榴 四川突尼斯软籽石榴 一件代发产地直供', '28.50', '王星的店', 0, 4, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpg/head/2022/11/28/a2b901caba6d4ffc8de702f6a62ef607.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '水果红果参上市，种植基地直发，欢迎新老客户咨询下单。', '水果红果参上市，种植基地直发，欢迎新老客户咨询下单。', '26.00', '德尚农场产地直销店', 0, 4, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpg/head/2023/04/10/66da4f26c97d430f9eeffe256f5712a1.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '手工剥皮葱 用于配菜 炼油', '手工剥皮葱 用于配菜 炼油', '10.90', '手工去皮葱', 1, 0, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpg/head/2021/11/10/450c55510adf424e979dbc29e59a6335.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '韭黄 黄韭盆景', '韭黄 黄韭盆景', '48.00', '南宫市韭菜基地', 1, 0, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpeg/head/2021/03/20/ed860cacf2d04cb599dab9f26a13cb50.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '泰国南姜、够味、够大块、够白、够干净、全年有货。', '泰国南姜、够味、够大块、够白、够干净、全年有货。', '6.00', '广州瑞禾农业有限公司', 1, 0, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpeg/head/2021/08/30/99d7d2b969e84a019ef95f7abb82f38d.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '大陆最南端广东省湛江市徐闻县黑土地露天大叶韭菜', '大陆最南端广东省湛江市徐闻县黑土地露天大叶韭菜', '0.70', '徐闻韭菜代办', 1, 0, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpg/head/2023/05/15/1fe856ae6bc7470fa527367445469acd.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '特香红葱头！量大从优基地发货', '特香红葱头！量大从优基地发货', '9.00', '手工去皮葱', 1, 0, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpeg/head/2021/06/26/6f03318165404cc1badc2f6c3c6332b9.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '甘肃兰州甜百合包邮&#8203;``oaicite:{"number":1,"invalid_reason":"Malformed citation 【基地直发】"}``&#8203;酒店 商超配送', '甘肃兰州甜百合包邮&#8203;``oaicite:{"number":2,"invalid_reason":"Malformed citation 【基地直发】"}``&#8203;酒店 商超配送', '40.00', '康氏鲜水果生鲜特产店', 1, 1, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpg/head/2022/09/12/d8f62d54b2454d55aa272e827846c694.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '合水粉葛，新葛无渣，种植基地直发，不卖次品垃圾，售后有保障', '合水粉葛，新葛无渣，种植基地直发，不卖次品垃圾，售后有保障', '3.20', '佛山市高明区丰廉农产品有限公司', 1, 1, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpg/head/2022/10/12/53708b68628144a4a020359269c29a92.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '广西精品山药，淮山，黑鬼白鬼大量有货，有需要的老板联系我', '广西精品山药，淮山，黑鬼白鬼大量有货，有需要的老板联系我', '1.30', '广西惠诚果业', 1, 1, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, content, price, own_name, category_id, child_id, type, create_time, update_time) VALUES ('https://image.cnhnb.com/image/jpeg/head/2020/11/18/8c62e05b6aa1449a8b829eee29454cc6.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi5jb20vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2', '大果烟薯25蜜薯红薯红心烤薯糖份高流糖无丝软糯香甜9月新薯', '大果烟薯25蜜薯红薯红心烤薯糖份高流糖无丝软糯香甜9月新薯', '1.80', '河北宸丰烤薯供应商', 1, 1, 'goods', NOW(), NOW());
INSERT INTO tb_order (picture, title, price, own_name, category_id, child_id, create_time, update_time, content, type)
VALUES 
(
    'https://image.cnhnb.com/image/jpg/head/2022/02/07/aa9bce415e584c648292f7341542172d.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi.com/vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '雪莲果产区合作社直供',
    '1.60', -- 修改价格范围为中间值
    '兴合雪莲果',
    1,
    1,
    NOW(),
    NOW(),
    '雪莲果产区合作社直供', -- 内容与标题相同
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2023/04/18/24463e2efa234bffa66a91d33aa94c83.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi.com/vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '菠菜精品万亩菠菜 产地一手货源 对接各大批发市场 超市 电商',
    '0.60',
    '毛贺涛精品蔬菜供应',
    1,
    2,
    NOW(),
    NOW(),
    '菠菜精品万亩菠菜 产地一手货源 对接各大批发市场 超市 电商',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/2023/05/31/f8a70d997f374ebfb5de5f5eb31c1220.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi.com/vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '精品香芹 淮安小香芹 一手货源 产地直供 货发全国 品质保证',
    '1.50',
    '江苏淮蔬跨运产地直发',
    1,
    2,
    NOW(),
    NOW(),
    '精品香芹 淮安小香芹 一手货源 产地直供 货发全国 品质保证',
    'goods'
),
(
    'https://image.cnhnb.com/image/png/head/2022/03/06/a7be8a32bf294f9981aecf8f4f903ac9.png?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi.com/vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '山东曹县上海青、蔬菜种植基地。',
    '0.60',
    '曹县绿福蔬菜配送中心',
    1,
    2,
    NOW(),
    NOW(),
    '山东曹县上海青、蔬菜种植基地。',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpg/head/2022/11/21/4a195276734441c295f6a1dc392104de.jpg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi.com/vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '去根云南大香菜 新鲜大芫茜 老缅香菜 批发带根芫荽泰国大香菜',
    '9.50', -- 修改价格范围为中间值
    '邓哥鲜生',
    1,
    2,
    NOW(),
    NOW(),
    '去根云南大香菜 新鲜大芫茜 老缅香菜 批发带根芫荽泰国大香菜',
    'goods'
),
(
    'https://image.cnhnb.com/image/jpeg/head/2022/08/25/e89abe4d11a14c4fb7dd0fdcbfcaf512.jpeg?imageView2/2/w/750/format/jpg/ignore-error/1|watermark/3/image/aHR0cDovL2ltZy5jbmhuYi.com/vd20ucG5n/gravity/SouthEast/dx/10/dy/10/ws/0.14/wst/2',
    '芥菜',
    '0.65',
    '青铜蔬菜转运站',
    1,
    2,
    NOW(),
    NOW(),
    '芥菜',
    'goods'
);


