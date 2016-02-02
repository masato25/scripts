SET NAMES 'utf8';
SET @@session.default_storage_engine = 'InnoDB';

ALTER DATABASE
DEFAULT CHARACTER SET = 'utf8';

INSERT INTO owl_isp(isp_id, isp_name, isp_acronym)
VALUES
	(-1, '<UNDEFINED>', '<UNDEFINED>'),
	(1, '北京三信时代', 'BJCIII'),
	(2, '教育网', 'CERNET'),
	(3, '移动', 'CMCC'),
	(4, '铁通', 'CRTC'),
	(5, '电信', 'CTC'),
	(6, '联通', 'CUC'),
	(7, '电信通', 'DXT'),
	(8, '方正宽带', 'FBN'),
	(9, '视讯宽带', 'GDCATV'),
	(10, '歌华有线', 'GHBN'),
	(11, '长城宽带', 'GWBN'),
	(12, '广州e家宽', 'GZEJK'),
	(13, '北京宽捷', 'KJNET'),
	(14, '有线通', 'OCN'),
	(15, '日升科技', 'SIF'),
	(16, '光环新网', 'SINNET'),
	(17, '广电网', 'SYCATV'),
	(18, '天威视讯', 'TWSX'),
	(19, '华数宽带', 'WASU'),
	(20, '油田宽带', 'YTBN'),
	(21, '中信网络', 'ZXNET'),
	(22, '日本电信电话', 'NTT'),
	(23, '台湾中华电信', 'CHT'),
	(24, '香港和记通讯', 'HGC'),
	(25, '台湾大电讯', 'TWM')
ON DUPLICATE KEY UPDATE
	isp_name = VALUES(isp_name),
	isp_acronym = VALUES(isp_acronym);

INSERT INTO owl_province(pv_id, pv_name)
VALUES
	(-1, '<UNDEFINED>'),
	(1, '内蒙古'),
	(2, '山西'),
	(3, '河北'),
	(4, '北京'),
	(5, '辽宁'),
	(6, '吉林'),
	(7, '黑龙江'),
	(8, '上海'),
	(9, '江苏'),
	(10, '安徽'),
	(11, '山东'),
	(12, '天津'),
	(13, '浙江'),
	(14, '江西'),
	(15, '福建'),
	(16, '重庆'),
	(17, '湖南'),
	(18, '湖北'),
	(19, '河南'),
	(20, '广东'),
	(21, '广西'),
	(22, '贵州'),
	(23, '海南'),
	(24, '四川'),
	(25, '云南'),
	(26, '陕西'),
	(27, '甘肃'),
	(28, '宁夏'),
	(29, '青海'),
	(30, '新疆'),
	(31, '西藏'),
	(32, '香港'),
	(33, '澳门'),
	(34, '台湾')
ON DUPLICATE KEY UPDATE
	pv_name = VALUES(pv_name);

INSERT INTO owl_city(ct_id, ct_pv_id, ct_name, ct_post_code)
VALUES
	(-1, -1, '<UNDEFINED>', '<UNDEFINED>'),
	(1, 4, '北京市', '100000'),
	(2, 12, '天津市', '300000'),
	(3, 8, '上海市', '200000'),
	(4, 16, '重庆市', '400000'),
	(5, 20, '广州市', '510000'),
	(6, 20, '深圳市', '518000'),
	(7, 20, '东莞市', '511700'),
	(8, 20, '珠海市', '519000'),
	(9, 20, '汕头市', '515000'),
	(10, 20, '佛山市', '528000'),
	(11, 20, '韶关市', '512000'),
	(12, 20, '河源市', '517000'),
	(13, 20, '梅州市', '514000'),
	(14, 20, '惠州市', '516000'),
	(15, 20, '汕尾市', '516600'),
	(16, 20, '中山市', '528400'),
	(17, 20, '江门市', '529000'),
	(18, 20, '阳江市', '529500'),
	(19, 20, '湛江市', '524000'),
	(20, 20, '茂名市', '525000'),
	(21, 20, '肇庆市', '526000'),
	(22, 20, '清远市', '511500'),
	(23, 20, '潮州市', '521000'),
	(24, 20, '揭阳市', '522000'),
	(25, 20, '云浮市', '527300'),
	(26, 17, '长沙市', '410000'),
	(27, 17, '岳阳市', '414000'),
	(28, 17, '张家界市', '427000'),
	(29, 17, '常德市', '415000'),
	(30, 17, '益阳市', '413000'),
	(31, 17, '湘潭市', '411100'),
	(32, 17, '株洲市', '412000'),
	(33, 17, '娄底市', '417000'),
	(34, 17, '怀化市', '418000'),
	(35, 17, '邵阳市', '422000'),
	(36, 17, '衡阳市', '421000'),
	(37, 17, '永州市', '425000'),
	(38, 17, '郴州市', '423000'),
	(39, 18, '武汉市', '430000'),
	(40, 18, '十堰市', '442000'),
	(41, 18, '襄樊市', '441000'),
	(42, 18, '随州市', '441300'),
	(43, 18, '荆门市', '448000'),
	(44, 18, '孝感市', '432100'),
	(45, 18, '宜昌市', '443000'),
	(46, 18, '黄冈市', '438000'),
	(47, 18, '鄂州市', '436000'),
	(48, 18, '荆州市', '434100'),
	(49, 18, '黄石市', '435000'),
	(50, 18, '咸宁市', '437000'),
	(51, 14, '南昌市', '330000'),
	(52, 14, '九江市', '332000'),
	(53, 14, '景德镇市', '333000'),
	(54, 14, '上饶市', '334000'),
	(55, 14, '鹰潭市', '335000'),
	(56, 14, '抚州市', '344000'),
	(57, 14, '新余市', '336500'),
	(58, 14, '宜春市', '336000'),
	(59, 14, '萍乡市', '337000'),
	(60, 14, '吉安市', '343000'),
	(61, 14, '赣州市', '341000'),
	(62, 15, '福州市', '350000'),
	(63, 15, '宁德市', '352100'),
	(64, 15, '南平市', '353000'),
	(65, 15, '三明市', '365000'),
	(66, 15, '莆田市', '351100'),
	(67, 15, '龙岩市', '364000'),
	(68, 15, '泉州市', '362000'),
	(69, 15, '漳州市', '363000'),
	(70, 15, '厦门市', '361000'),
	(71, 23, '海口市', '570000'),
	(72, 23, '三亚市', '572000'),
	(73, 24, '成都市', '610000'),
	(74, 24, '广元市', '628000'),
	(75, 24, '巴中市', '636000'),
	(76, 24, '绵阳市', '621000'),
	(77, 24, '德阳市', '618000'),
	(78, 24, '达州市', '635000'),
	(79, 24, '南充市', '637000'),
	(80, 24, '遂宁市', '629000'),
	(81, 24, '广安市', '638000'),
	(82, 24, '资阳市', '641300'),
	(83, 24, '眉山市', '620010'),
	(84, 24, '雅安市', '625000'),
	(85, 24, '内江市', '641000'),
	(86, 24, '乐山市', '614000'),
	(87, 24, '自贡市', '643000'),
	(88, 24, '泸州市', '646000'),
	(89, 24, '宜宾市', '644000'),
	(90, 24, '攀枝花市', '617000'),
	(91, 22, '贵阳市', '550000'),
	(92, 22, '遵义市', '563000'),
	(93, 22, '六盘水市', '553000'),
	(94, 22, '安顺市', '561000'),
	(95, 25, '昆明市', '650000'),
	(96, 25, '昭通市', '657000'),
	(97, 25, '丽江市', '674100'),
	(98, 25, '曲靖市', '655000'),
	(99, 25, '保山市', '678000'),
	(100, 25, '玉溪市', '653100'),
	(101, 25, '临沧市', '677000'),
	(102, 25, '普洱市', '665000'),
	(103, 21, '南宁市', '530000'),
	(104, 21, '桂林市', '541000'),
	(105, 21, '河池市', '547000'),
	(106, 21, '贺州市', '542800'),
	(107, 21, '柳州市', '545000'),
	(108, 21, '百色市', '533000'),
	(109, 21, '来宾市', '546100'),
	(110, 21, '梧州市', '543000'),
	(111, 21, '贵港市', '537100'),
	(112, 21, '玉林市', '537000'),
	(113, 21, '崇左市', '532200'),
	(114, 21, '钦州市', '535000'),
	(115, 21, '防城港市', '538000'),
	(116, 21, '北海市', '536000'),
	(117, 31, '拉萨市', '850000'),
	(118, 31, '日喀则市', '857000'),
	(119, 9, '南京市', '210000'),
	(120, 9, '连云港市', '222000'),
	(121, 9, '徐州市', '221000'),
	(122, 9, '宿迁市', '223800'),
	(123, 9, '淮安市', '223200'),
	(124, 9, '盐城市', '224000'),
	(125, 9, '泰州市', '225300'),
	(126, 9, '扬州市', '225000'),
	(127, 9, '镇江市', '212000'),
	(128, 9, '南通市', '226000'),
	(129, 9, '常州市', '213000'),
	(130, 9, '无锡市', '214000'),
	(131, 9, '苏州市', '215000'),
	(132, 13, '杭州市', '310000'),
	(133, 13, '湖州市', '313000'),
	(134, 13, '嘉兴市', '314000'),
	(135, 13, '绍兴市', '312000'),
	(136, 13, '舟山市', '316000'),
	(137, 13, '宁波市', '315000'),
	(138, 13, '金华市', '321000'),
	(139, 13, '衢州市', '324000'),
	(140, 13, '台州市', '318000'),
	(141, 13, '丽水市', '323000'),
	(142, 13, '温州市', '325000'),
	(143, 10, '合肥市', '230000'),
	(144, 10, '淮北市', '235000'),
	(145, 10, '亳州市', '236800'),
	(146, 10, '宿州市', '234000'),
	(147, 10, '蚌埠市', '233000'),
	(148, 10, '阜阳市', '236000'),
	(149, 10, '淮南市', '232000'),
	(150, 10, '滁州市', '239000'),
	(151, 10, '六安市', '237000'),
	(152, 10, '马鞍山市', '243000'),
	(153, 10, '巢湖市', '238000'),
	(154, 10, '芜湖市', '241000'),
	(155, 10, '宣城市', '242000'),
	(156, 10, '铜陵市', '244000'),
	(157, 10, '池州市', '247000'),
	(158, 10, '安庆市', '246000'),
	(159, 10, '黄山市', '245000'),
	(160, 19, '郑州市', '450000'),
	(161, 19, '安阳市', '455000'),
	(162, 19, '鹤壁市', '458000'),
	(163, 19, '濮阳市', '457000'),
	(164, 19, '新乡市', '453000'),
	(165, 19, '焦作市', '454000'),
	(166, 19, '三门峡市', '472000'),
	(167, 19, '开封市', '475000'),
	(168, 19, '洛阳市', '471000'),
	(169, 19, '商丘市', '476000'),
	(170, 19, '许昌市', '461000'),
	(171, 19, '平顶山市', '467000'),
	(172, 19, '周口市', '466000'),
	(173, 19, '漯河市', '462000'),
	(174, 19, '南阳市', '473000'),
	(175, 19, '驻马店市', '463000'),
	(176, 19, '信阳市', '464000'),
	(177, 2, '太原市', '030000'),
	(178, 2, '大同市', '037000'),
	(179, 2, '朔州市', '038500'),
	(180, 2, '忻州市', '034000'),
	(181, 2, '阳泉市', '045000'),
	(182, 2, '晋中市', '030600'),
	(183, 2, '吕梁市', '033000'),
	(184, 2, '长治市', '046000'),
	(185, 2, '临汾市', '041000'),
	(186, 2, '晋城市', '048000'),
	(187, 2, '运城市', '044000'),
	(188, 26, '西安市', '710000'),
	(189, 26, '榆林市', '719000'),
	(190, 26, '延安市', '716000'),
	(191, 26, '铜川市', '727000'),
	(192, 26, '渭南市', '714000'),
	(193, 26, '宝鸡市', '721000'),
	(194, 26, '咸阳市', '712000'),
	(195, 26, '商洛市', '726000'),
	(196, 26, '汉中市', '723000'),
	(197, 26, '安康市', '725000'),
	(198, 27, '兰州市', '730000'),
	(199, 27, '嘉峪关市', '735100'),
	(200, 27, '酒泉市', '735000'),
	(201, 27, '张掖市', '734000'),
	(202, 27, '金昌市', '737100'),
	(203, 27, '武威市', '733000'),
	(204, 27, '白银市', '730900'),
	(205, 27, '庆阳市', '745000'),
	(206, 27, '平凉市', '744000'),
	(207, 27, '定西市', '743000'),
	(208, 27, '天水市', '741000'),
	(209, 27, '陇南市', '746000'),
	(210, 29, '西宁市', '810000'),
	(211, 28, '银川市', '750000'),
	(212, 28, '石嘴山市', '753200'),
	(213, 28, '吴忠市', '751100'),
	(214, 28, '中卫市', '755000'),
	(215, 28, '固原市', '756000'),
	(216, 30, '乌鲁木齐市', '830000'),
	(217, 30, '克拉玛依市', '834000'),
	(218, 1, '呼和浩特市', '010000'),
	(219, 1, '包头市', '014000'),
	(220, 1, '乌海市', '016000'),
	(221, 1, '赤峰市', '024000'),
	(222, 1, '通辽市', '028000'),
	(223, 1, '鄂尔多斯市', '150600'),
	(224, 1, '呼伦贝尔市', '021000'),
	(225, 1, '巴彦淖尔市', '015000'),
	(226, 1, '乌兰察布市', '012000'),
	(227, 11, '济南市', '250000'),
	(228, 11, '德州市', '253000'),
	(229, 11, '滨州市', '256600'),
	(230, 11, '东营市', '257000'),
	(231, 11, '烟台市', '264000'),
	(232, 11, '威海市', '264200'),
	(233, 11, '淄博市', '255000'),
	(234, 11, '潍坊市', '261000'),
	(235, 11, '聊城市', '252000'),
	(236, 11, '泰安市', '271000'),
	(237, 11, '莱芜市', '271100'),
	(238, 11, '青岛市', '266000'),
	(239, 11, '日照市', '276800'),
	(240, 11, '济宁市', '272100'),
	(241, 11, '菏泽市', '274000'),
	(242, 11, '临沂市', '276000'),
	(243, 11, '枣庄市', '277100'),
	(244, 3, '石家庄市', '050000'),
	(245, 3, '张家口市', '075000'),
	(246, 3, '承德市', '067000'),
	(247, 3, '唐山市', '063000'),
	(248, 3, '秦皇岛市', '066000'),
	(249, 3, '廊坊市', '065000'),
	(250, 3, '保定市', '071000'),
	(251, 3, '沧州市', '061000'),
	(252, 3, '衡水市', '053000'),
	(253, 3, '邢台市', '054000'),
	(254, 3, '邯郸市', '056000'),
	(255, 7, '哈尔滨市', '150000'),
	(256, 7, '黑河市', '164300'),
	(257, 7, '伊春市', '153000'),
	(258, 7, '齐齐哈尔市', '161000'),
	(259, 7, '鹤岗市', '154100'),
	(260, 7, '佳木斯市', '154000'),
	(261, 7, '双鸭山市', '155100'),
	(262, 7, '绥化市', '152000'),
	(263, 7, '大庆市', '163000'),
	(264, 7, '七台河市', '154600'),
	(265, 7, '鸡西市', '158100'),
	(266, 7, '牡丹江市', '157000'),
	(267, 6, '长春市', '130000'),
	(268, 6, '白城市', '137000'),
	(269, 6, '松原市', '138000'),
	(270, 6, '吉林市', '132000'),
	(271, 6, '四平市', '136000'),
	(272, 6, '辽源市', '136200'),
	(273, 6, '白山市', '134300'),
	(274, 6, '通化市', '134000'),
	(275, 5, '沈阳市', '110000'),
	(276, 5, '铁岭市', '112000'),
	(277, 5, '阜新市', '123000'),
	(278, 5, '抚顺市', '113000'),
	(279, 5, '朝阳市', '122000'),
	(280, 5, '本溪市', '117000'),
	(281, 5, '辽阳市', '111000'),
	(282, 5, '鞍山市', '114000'),
	(283, 5, '盘锦市', '124000'),
	(284, 5, '锦州市', '121000'),
	(285, 5, '葫芦岛市', '125000'),
	(286, 5, '营口市', '115000'),
	(287, 5, '丹东市', '118000'),
	(288, 5, '大连市', '116000'),
	(289, 32, '香港', '999077'),
	(290, 33, '澳门', '999078'),
	(291, 34, '台湾', '999079'),
	(292, 6, '延吉市', '133000')
ON DUPLICATE KEY UPDATE
	ct_pv_id = VALUES(ct_pv_id),
	ct_name = VALUES(ct_name),
	ct_post_code = VALUES(ct_post_code);