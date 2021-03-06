DROP TABLE IF EXISTS `web_busintro`;

CREATE TABLE `web_busintro` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `businame` varchar(30) DEFAULT NULL COMMENT '业务名称',
  `busiintro` varchar(200) DEFAULT NULL COMMENT '业务介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `web_card`;

CREATE TABLE `web_card` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `card_code` varchar(10) DEFAULT NULL COMMENT '卡片代码',
  `pro_name` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `pro_introduct` text COMMENT '产品介绍',
  `pic_link` varchar(200) DEFAULT NULL COMMENT '图片链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `web_cardapply`;

CREATE TABLE `web_cardapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name1` varchar(10) DEFAULT NULL COMMENT '姓',
  `name2` varchar(20) DEFAULT NULL COMMENT '名',
  `pinyin` varchar(30) DEFAULT NULL COMMENT '拼音',
  `appellation` varchar(10) DEFAULT NULL COMMENT '称谓（先生，女士）',
  `passno` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `education` varchar(50) DEFAULT NULL COMMENT '教育程度',
  `home_address1` varchar(100) DEFAULT NULL COMMENT '家庭地址1',
  `home_address2` varchar(100) DEFAULT NULL COMMENT '家庭地址2',
  `detail_add` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `home_post` varchar(10) DEFAULT NULL COMMENT '住宅邮编',
  `residence_year` varchar(10) DEFAULT NULL COMMENT '现址住宅时间（年）',
  `residence_type` varchar(10) DEFAULT NULL COMMENT '住宅性质',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `mobile_phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `family_name_mum` varchar(10) DEFAULT NULL COMMENT '母亲姓氏',
  `wkname` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `wk_address1` varchar(100) DEFAULT NULL COMMENT '单位地址1',
  `wk_address2` varchar(100) DEFAULT NULL COMMENT '单位地址2',
  `detail_wk_add` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `wk_post` varchar(10) DEFAULT NULL COMMENT '单位邮编',
  `wk_phone` varchar(20) DEFAULT NULL COMMENT '单位电话',
  `profession_type` varchar(20) DEFAULT NULL COMMENT '行业性质',
  `economic_type` varchar(10) DEFAULT NULL COMMENT '经济类型',
  `title` varchar(50) DEFAULT NULL COMMENT '职位或职级',
  `worktime_year` varchar(10) DEFAULT NULL COMMENT '现职工作时间（年）',
  `tot_income` varchar(20) DEFAULT NULL COMMENT '年收入总额',
  `connection_person` varchar(50) DEFAULT NULL COMMENT '联系人',
  `relationship` varchar(50) DEFAULT NULL COMMENT '与申请人关系（父母，配偶，亲戚，其他）',
  `con_person_wkname` varchar(100) DEFAULT NULL COMMENT '联系人单位名称',
  `con_person_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `con_person_mobile` varchar(11) DEFAULT NULL COMMENT '联系人手机号码',
  `account_send_type` varchar(50) DEFAULT NULL COMMENT '您的对账单发送方式选择（E-mail，手机）',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `send_address` varchar(100) DEFAULT NULL COMMENT '您的卡片等重要资料寄送地址（单位地址，家庭地址）',
  `need_pwd` varchar(10) DEFAULT NULL COMMENT '刷卡消费时是否需要密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `web_cardmap`;

CREATE TABLE `web_cardmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cardname` varchar(50) DEFAULT NULL COMMENT '信用卡代码',
  `prolinename` varchar(50) DEFAULT NULL COMMENT '产品线名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `web_custapply`;

CREATE TABLE `web_custapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `custid` varchar(20) DEFAULT NULL COMMENT '客户号',
  `gender` varchar(20) DEFAULT NULL COMMENT '性别',
  `age` varchar(10) DEFAULT NULL COMMENT '年龄',
  `marital_status` varchar(30) DEFAULT NULL COMMENT '婚姻状态',
  `profession` varchar(30) DEFAULT NULL COMMENT '职业',
  `income` varchar(10) DEFAULT NULL COMMENT '年收入',
  `BAL_AST` varchar(10) DEFAULT NULL COMMENT '资产',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `web_customer`;

CREATE TABLE `web_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `custid` varchar(16) DEFAULT NULL COMMENT '客户号',
  `custnm` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `custnm1` varchar(20) DEFAULT NULL COMMENT '客户姓',
  `custnm2` varchar(30) DEFAULT NULL COMMENT '客户名',
  `pinyin1` varchar(100) DEFAULT NULL COMMENT '姓名拼音',
  `title` varchar(30) DEFAULT NULL COMMENT '称谓',
  `idno` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `education` varchar(30) DEFAULT NULL COMMENT '教育程度',
  `hmaddr1` varchar(20) DEFAULT NULL COMMENT '家庭地址1',
  `hmaddr2` varchar(20) DEFAULT NULL COMMENT '家庭地址2',
  `hmaddr3` varchar(30) DEFAULT NULL COMMENT '家庭地址3',
  `hmaddr4` varchar(100) DEFAULT NULL COMMENT '家庭地址4',
  `hmpost` varchar(10) DEFAULT NULL COMMENT '家庭地址邮编',
  `hmphone` varchar(20) DEFAULT NULL COMMENT '家庭电话',
  `mobile` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `wkname` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `wkadd1` varchar(20) DEFAULT NULL COMMENT '单位地址1',
  `wkadd2` varchar(20) DEFAULT NULL COMMENT '单位地址2',
  `wkadd3` varchar(30) DEFAULT NULL COMMENT '单位地址3',
  `wkadd4` varchar(100) DEFAULT NULL COMMENT '单位地址4',
  `wkpost` varchar(20) DEFAULT NULL COMMENT '单位邮编',
  `wkphone` varchar(30) DEFAULT NULL COMMENT '单位电话',
  `wktype` varchar(100) DEFAULT NULL COMMENT '行业性质',
  `ectype` varchar(100) DEFAULT NULL COMMENT '经济类型',
  `prolvl` varchar(100) DEFAULT NULL COMMENT '职位或职级',
  `wkyear` varchar(10) DEFAULT NULL COMMENT '现职工作时间（年）',
  `incom` varchar(20) DEFAULT NULL COMMENT '年收入总额',
  `age` varchar(10) DEFAULT NULL COMMENT '年龄',
  `childrens` varchar(10) DEFAULT NULL COMMENT '有无子女',
  `pronum` varchar(10) DEFAULT NULL COMMENT '产品持有个数',
  `ccard` varchar(10) DEFAULT NULL COMMENT '信用卡',
  `xpad` varchar(18) DEFAULT NULL COMMENT '理财',
  `fund` varchar(18) DEFAULT NULL COMMENT '基金',
  `invm` varchar(18) DEFAULT NULL COMMENT '存款',
  `tpcc` varchar(10) DEFAULT NULL COMMENT '三方',
  `bond` varchar(10) DEFAULT NULL COMMENT '债券',
  `insure` varchar(10) DEFAULT NULL COMMENT '保险',
  `jcj` varchar(10) DEFAULT NULL COMMENT '积存金',
  `card` varchar(10) DEFAULT NULL COMMENT '借记卡',
  `borm` varchar(18) DEFAULT NULL COMMENT '贷款',
  `bocnet` varchar(10) DEFAULT NULL COMMENT '网银',
  `mobnet` varchar(10) DEFAULT NULL COMMENT '手机银行',
  `xpadg` varchar(10) DEFAULT NULL COMMENT '贵金属(有、无)',
  `cars` varchar(10) DEFAULT NULL COMMENT '车',
  `house` varchar(10) DEFAULT NULL COMMENT '房子',
  `custlvl` varchar(255) DEFAULT NULL COMMENT '客户等级（大众、理财、财富、私行）',
  `totasset` varchar(18) DEFAULT NULL COMMENT '总资产',
  `pinyin2` varchar(20) DEFAULT NULL COMMENT '拼音2',
  `years` varchar(10) DEFAULT NULL COMMENT '成为中行客户时间（年）',
  `intot` varchar(10) DEFAULT NULL COMMENT '近一年转入资金',
  `outtot` varchar(10) DEFAULT NULL COMMENT '近一年转出资金',
  `othcust` varchar(10) DEFAULT NULL COMMENT '他行客户（是否）',
  `daifa` varchar(10) DEFAULT NULL COMMENT '代发代扣业务（有无）',
  `nianx` varchar(20) DEFAULT NULL COMMENT '客户粘性',
  `zhongcd` varchar(20) DEFAULT NULL COMMENT '客户忠诚度',
  `qianli` varchar(20) DEFAULT NULL COMMENT '客户潜在价值',
  `custpa` varchar(10) DEFAULT NULL COMMENT '客户贡献度',
  `pinyin` varchar(255) DEFAULT NULL,
  `prodetial` varchar(300) DEFAULT NULL COMMENT '产品持有情况',
  `account` varchar(20) DEFAULT NULL COMMENT '卡号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `web_rate`;

CREATE TABLE `web_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `curr` varchar(20) DEFAULT NULL COMMENT '货币',
  `currin` double DEFAULT NULL COMMENT '现汇买入价',
  `cashin` double DEFAULT NULL COMMENT '现钞买入价',
  `currout` double DEFAULT NULL COMMENT '现汇卖出价',
  `cashout` double DEFAULT NULL COMMENT '现钞卖出价',
  `midrate` double DEFAULT NULL COMMENT '中行折算价',
  `reldate` varchar(20) DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `web_timeline`;

CREATE TABLE `web_timeline` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `custnm` varchar(100) DEFAULT NULL,
  `custid` varchar(10) DEFAULT NULL,
  `datetime` varchar(20) DEFAULT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `action` varchar(200) DEFAULT NULL,
  `acttype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
