/*==============================================================*/
/* Table: mini_app_user 小程序用户表                             */
/*==============================================================*/
create table mini_app_user
(
   id                   int(11) not null AUTO_INCREMENT comment '主键ID',
   user_bid             varchar(20) comment '用户业务主键',
   openid               varchar(100) comment '用户唯一标识',
   session_key          varchar(100) comment '会话密钥',
   unionid              varchar(100) comment '用户在开放平台的唯一标识符',
   is_deleted           int(1) comment '是否删除：1-已删除，0-未删除',
   gmt_create           datetime comment '创建日期',
   gmt_modified         datetime comment '更新日期',
   primary key (id),
   key idx_user (user_bid,openid,session_key)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='小程序用户表';

/*==============================================================*/
/* Table: mini_app_user_login_log 小程序用户登录日志表            */
/*==============================================================*/
create table mini_app_user_login_log
(
   id                   int(11) not null AUTO_INCREMENT comment '主键ID',
   login_code           varchar(100) comment '用户登錄code',
   user_bid             varchar(20) comment '用户业务主键',
   openid               varchar(100) comment '用户唯一标识',
   session_key          varchar(100) comment '会话密钥',
   unionid              varchar(100) comment '用户在开放平台的唯一标识符',
   gmt_create           datetime comment '创建日期',
   primary key (id),
   key idx_user (user_bid,openid,session_key)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='小程序用户登录日志表';

/*==============================================================*/
/* Table: mini_app_daily_task 小程序日常任务表                    */
/*==============================================================*/
create table mini_app_daily_task
(
   id                   int(11) not null AUTO_INCREMENT comment '主键ID',
   task_bid             varchar(20) comment '日常任务业务主键',
   user_bid             varchar(20) comment '用户业务主键',
   task_name            varchar(100) comment '任务名称',
   task_date            datetime comment '任务日期',
   task_week            varchar(10) comment '任务星期',
   remark               varchar(100) comment '备注',
   is_success           int(1) comment '是否完成：1-已完成，0-未完成',
   is_deleted           int(1) comment '是否删除：1-已删除，0-未删除',
   gmt_create           datetime comment '创建日期',
   gmt_modified         datetime comment '更新日期',
   primary key (id),
   key idx_user (task_bid,user_bid,task_date)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='小程序日常任务表';

