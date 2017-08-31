CREATE TABLE IF NOT EXISTS `ly_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户UID',
  `nickname` varchar(63) NOT NULL COMMENT '用户昵称',
  `avatar` varchar(255) NOT NULL COMMENT '头像地址',
  `live_city` varchar(127) NOT NULL COMMENT '常驻城市可用于判断异地登录',
  `last_login_time` datetime NOT NULL COMMENT '最近一次登录时间',
  `last_login_ip` char(20) NOT NULL COMMENT '最近一次登录IP',
  `last_login_city` varchar(127) NOT NULL COMMENT '最近一次登录所在城市',
  `last_login_isp` varchar(31) NOT NULL COMMENT '最近一次登录运营商',
  `register_time` datetime NOT NULL COMMENT '用户注册时间',
  `register_ip` char(20) NOT NULL DEFAULT '' COMMENT '用户注册IP',
  `register_city` varchar(127) NOT NULL DEFAULT '' COMMENT '用户注册所在城市',
  `register_isp` varchar(31) NOT NULL DEFAULT '' COMMENT '用户注册运营商',
  `status` tinyint(3) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户帐号信息表';

CREATE TABLE IF NOT EXISTS `ly_admin_user_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'UID',
  `account_type` varchar(11) NOT NULL DEFAULT '' COMMENT '账号类型',
  `account` varchar(127) NOT NULL COMMENT '帐号',
  `verified` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已验证',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `is_oauth` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否第三方登录',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户帐号信息表';


CREATE TABLE IF NOT EXISTS `ly_admin_user_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `login_time` datetime NOT NULL COMMENT '登录时间',
  `login_ip` char(20) NOT NULL COMMENT '登录IP',
  `login_city` varchar(127) NOT NULL COMMENT '登录所在城市',
  `login_isp` varchar(31) NOT NULL COMMENT '运营商',
  `client_os` varchar(31) NOT NULL COMMENT '客户端操作系统',
  `client_type` varchar(63) NOT NULL COMMENT '登录客户端类型',
  `user_agent` text NOT NULL COMMENT '用户代理',
  `login_result` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '登录结果',
  `login_uid` int(11) unsigned NOT NULL COMMENT '登录的用户UID',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户登录历史记录';

CREATE TABLE IF NOT EXISTS `ly_admin_user_password_update_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'UID',
  `create_time` datetime NOT NULL COMMENT '密码修改时间',
  `update_ip` varchar(20) NOT NULL COMMENT 'IP',
  `update_city` varchar(127) NOT NULL COMMENT '城市',
  `update_isp` varchar(255) NOT NULL COMMENT '运营商',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='密码修改记录';
