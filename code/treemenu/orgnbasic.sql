-- Create table
create table ORGN_BASIC
(
  id            NUMBER(11) not null,
  orgn_code     VARCHAR2(12),
  f_orgn_id     VARCHAR2(12),
  orgn_unicode  VARCHAR2(15),
  orgn_name     VARCHAR2(500),
  orgn_abbrname VARCHAR2(500),
  orgn_div      VARCHAR2(5),
  orgn_type     VARCHAR2(5),
  orgn_lvl      VARCHAR2(5),
  orgn_stat     VARCHAR2(5),
  zone_type     VARCHAR2(5),
  admin_level   VARCHAR2(5),
  func_type     VARCHAR2(5),
  bank_no       VARCHAR2(5),
  sdate         TIMESTAMP(6),
  state         NUMBER(1) default '1',
  last_mod      DATE,
  leaf          VARCHAR2(10),
  orgn_wdsign   VARCHAR2(2)
)
tablespace FDMS_LANZHOU
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the columns 
comment on column ORGN_BASIC.id
  is '机构标识符';
comment on column ORGN_BASIC.orgn_code
  is '中心机构号';
comment on column ORGN_BASIC.f_orgn_id
  is '父机构号';
comment on column ORGN_BASIC.orgn_unicode
  is '单位机构号';
comment on column ORGN_BASIC.orgn_name
  is '机构名称';
comment on column ORGN_BASIC.orgn_type
  is '机构类型';
comment on column ORGN_BASIC.orgn_lvl
  is '机构等级';
comment on column ORGN_BASIC.state
  is '启动状态';
comment on column ORGN_BASIC.last_mod
  is '最后修改时间';
comment on column ORGN_BASIC.leaf
  is '节点判断符';
comment on column ORGN_BASIC.orgn_wdsign
  is '网点标识';
-- Create/Recreate indexes 
create unique index ORGN_BASIC_ID_UINDEX on ORGN_BASIC (ID)
  tablespace FDMS_LANZHOU
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table ORGN_BASIC
  add constraint ORGN_BASIC_ID_PK primary key (ID);




prompt Importing table orgn_basic...
set feedback off
set define off
insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (10256, '111', '300308', '300308306', '111', '111', null, null, '3', null, null, null, null, null, '11-7月 -18 11.45.48.000000 上午', 1, null, null, null);

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (30, '10179', '300', '300300310', '榆中支行', '榆中支行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (33, '10179', '300300310', '300300310003', '榆中支行营业室', '榆中支行营业室', null, null, '3', null, null, null, null, null, null, 1, null, '900', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (38, '10208', '300300310', '300300310301', '榆中和平支行', '榆中和平支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (39, '10180', '300', '300300311', '永登支行', '永登支行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (42, '10180', '300300311', '300300311003', '永登支行营业室', '永登支行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (46, '10209', '300300311', '300300311300', '永登南街支行', '永登南街支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (48, '10221', '300', '300300312', '皋兰支行', '皋兰支行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (51, '10221', '300300312', '300300312003', '皋兰支行营业室', '皋兰支行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (54, '10181', '300', '300301', '酒泉分行', '酒泉分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (57, '10181', '300301', '300301003', '酒泉分行营业室', '酒泉分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (61, '10192', '300301', '300301300', '酒泉南街支行', '酒泉南街支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (63, '10242', '300301', '300301302', '酒泉西城支行', '酒泉西城支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (64, '300302', '300', '300302', '天水分行', '天水分行', null, null, '2', null, null, null, null, null, null, 1, to_date('06-11-2017 16:44:04', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (71, '10183', '300302', '300302300', '天水官泉支行', '天水官泉支行', null, null, '3', null, null, null, null, null, null, 1, null, '1050', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (72, '10204', '300302', '300302301', '天水麦积支行', '天水麦积支行', null, null, '3', null, null, null, null, null, null, 1, null, '1060', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (75, '10269', '300302', '300302304', '秦州支行', '秦州支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (76, '10193', '300', '300303', '定西分行', '定西分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (79, '10193', '300303', '300303003', '定西分行营业室', '定西分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (83, '10214', '300303', '300303300', '陇西支行', '陇西支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (86, '10273', '300303', '300303303', '定西火车站支行', '定西火车站支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (87, '10194', '300', '300304', '武威分行', '武威分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (90, '10194', '300304', '300304003', '武威分行营业室', '武威分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (96, '10224', '300304', '300304301', '武威天马支行', '武威天马支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (97, '10279', '300304', '300304302', '武威新区支行', '武威新区支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (98, '10184', '300', '300305', '敦煌分行', '敦煌分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (101, '10184', '300305', '300305003', '敦煌分行营业室', '敦煌分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (110, '10197', '300306', '300306003', '庆阳分行营业室', '庆阳分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (114, '10216', '300306', '300306300', '庆阳新区支行', '庆阳新区支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (116, '10247', '300306', '300306302', '庆阳环县支行', '庆阳环县支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (223, '10116', '300317', '300317301', '兰西支行', '兰西支行', null, null, '3', null, null, null, null, null, null, 1, null, '240', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (121, '10199', '300307', '300307003', '临夏分行营业室', '临夏分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, '1310', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (225, '10114', '300317', '300317303', '西津支行', '西津支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (125, '10200', '300', '300308', '张掖分行', '张掖分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (128, '10200', '300308', '300308003', '张掖分行营业室', '张掖分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (132, '10245', '300308', '300308300', '张掖山丹支行', '张掖山丹支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (226, '10115', '300317', '300317304', '银河支行', '银河支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (228, '10211', '300317', '300317306', '土门墩支行', '土门墩支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (229, '10220', '300317', '300317307', '曦华源支行', '曦华源支行', null, null, '3', null, null, null, null, null, null, 1, null, '300', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (133, '10238', '300308', '300308301', '张掖甘州支行', '张掖甘州支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (134, '10274', '300308', '300308302', '张掖西关支行', '张掖西关支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (231, '10065', '300', '300318', '开发区管理行', '开发区管理行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (135, '10202', '300', '300309', '嘉峪关分行', '嘉峪关分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (138, '10202', '300309', '300309003', '嘉峪关分行营业室', '嘉峪关分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (142, '10223', '300309', '300309300', '雄关支行', '雄关支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (234, '10065', '300318', '300318003', '开发区管理行营业室', '开发区管理行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (238, '10172', '300318', '300318300', '开发区支行', '开发区支行', null, null, '3', null, null, null, null, null, null, 1, null, '730', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (239, '10170', '300318', '300318301', '友谊支行', '友谊支行', null, null, '3', null, null, null, null, null, null, 1, null, '740', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (143, '10258', '300309', '300309301', '长城支行', '长城支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (144, '10267', '300309', '300309302', '嘉峪关新华支行', '嘉峪关新华支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (241, '10175', '300318', '300318303', '张苏滩支行', '张苏滩支行', null, null, '3', null, null, null, null, null, null, 1, null, '760', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (148, '10207', '300310', '300310003', '金昌分行营业室', '金昌分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (153, '10255', '300310', '300310301', '金昌公园路支行', '金昌公园路支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (242, '10131', '300318', '300318305', '雁宁支行', '雁宁支行', null, null, '3', null, null, null, null, null, null, 1, null, '770', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (154, '10272', '300310', '300310302', '金昌永昌支行', '金昌永昌支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (155, '10212', '300', '300311', '新区分行', '新区分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (158, '10212', '300311', '300311003', '新区分行营业室', '新区分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (162, '10270', '300311', '300311007', '中川支行', '中川支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (163, '10217', '300', '300312', '白银分行', '白银分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (171, '10253', '300312', '300312301', '靖远支行', '靖远支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (243, '10178', '300318', '300318306', '金雁支行', '金雁支行', null, null, '3', null, null, null, null, null, null, 1, null, '780', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (244, '10176', '300318', '300318307', '兴科支行', '兴科支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (245, '10166', '300318', '300318308', '东部支行', '东部支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (246, '10164', '300318', '300318309', '隆盛支行', '隆盛支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (179, '10050', '300', '300314', '红古管理行', '红古管理行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (182, '10050', '300314', '300314003', '红古管理行营业室', '红古管理行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (187, '10101', '300314', '300314301', '窑街支行', '窑街支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (188, '10102', '300314', '300314302', '华龙支行', '华龙支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (189, '10051', '300', '300315', '西固管理行', '西固管理行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (192, '10051', '300315', '300315003', '西固管理行营业室', '西固管理行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (247, '10168', '300318', '300318310', '鑫成支行', '鑫成支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (248, '10165', '300318', '300318311', '金祥支行', '金祥支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (250, '10231', '300318', '300318314', '高新支行', '高新支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (253, '10259', '300318', '300318317', '硅谷支行', '硅谷支行', null, null, '3', null, null, null, null, null, null, 1, null, '880', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (254, '10082', '300', '300322', '城关管理行', '城关管理行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (257, '10082', '300322', '300322003', '城关管理行营业室', '城关管理行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (196, '10103', '300315', '300315300', '西固支行', '西固支行', null, null, '3', null, null, null, null, null, null, 1, null, '90', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (197, '10107', '300315', '300315301', '银炼支行', '银炼支行', null, null, '3', null, null, null, null, null, null, 1, null, '100', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (198, '10108', '300315', '300315302', '福鑫支行', '福鑫支行', null, null, '3', null, null, null, null, null, null, 1, null, '130', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (200, '10105', '300315', '300315304', '西固东路支行', '西固东路支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (201, '10106', '300315', '300315305', '炼业支行', '炼业支行', null, null, '3', null, null, null, null, null, null, 1, null, '140', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (202, '10256', '300315', '300315306', '福瑞支行', '福瑞支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (261, '10142', '300322', '300322300', '金城支行', '金城支行', null, null, '3', null, null, null, null, null, null, 1, null, '330', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (262, '10145', '300322', '300322301', '民西支行', '民西支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (264, '10189', '300322', '300322304', '民大支行', '民大支行', null, null, '3', null, null, null, null, null, null, 1, null, '350', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (266, '10117', '300322', '300322308', '中山支行', '中山支行', null, null, '3', null, null, null, null, null, null, 1, null, '370', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (267, '10121', '300322', '300322309', '信昌支行', '信昌支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (204, '10052', '300', '300316', '安宁管理行', '安宁管理行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (207, '10052', '300316', '300316003', '安宁管理行营业室', '安宁管理行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (212, '10111', '300316', '300316301', '桃林支行', '桃林支行', null, null, '3', null, null, null, null, null, null, 1, null, '190', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (213, '10228', '300316', '300316302', '刘家堡支行', '刘家堡支行', null, null, '3', null, null, null, null, null, null, 1, null, '200', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (214, '10252', '300316', '300316303', '科教城支行', '科教城支行', null, null, '3', null, null, null, null, null, null, 1, null, '210', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (218, '10053', '300317', '300317003', '七里河管理行营业室', '七里河管理行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (222, '10112', '300317', '300317300', '七里河支行', '七里河支行', null, null, '3', null, null, null, null, null, null, 1, null, '230', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (269, '10136', '300322', '300322311', '汇通支行', '汇通支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (270, '10137', '300322', '300322312', '诚信支行', '诚信支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (271, '10139', '300322', '300322313', '白银路支行', '白银路支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (272, '10133', '300322', '300322314', '民升支行', '民升支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (273, '10118', '300322', '300322315', '恒通支行', '恒通支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (274, '10120', '300322', '300322316', '张掖路支行', '张掖路支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (275, '10122', '300322', '300322317', '永昌路支行', '永昌路支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (276, '10126', '300322', '300322318', '白塔山支行', '白塔山支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (277, '10124', '300322', '300322319', '民族支行', '民族支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (278, '10125', '300322', '300322320', '秦安路支行', '秦安路支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (279, '10135', '300322', '300322321', '德隆支行', '德隆支行', null, null, '3', null, null, null, null, null, null, 1, null, '490', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (280, '10128', '300322', '300322322', '庆阳路支行', '庆阳路支行', null, null, '3', null, null, null, null, null, null, 1, null, '500', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (106, '10249', '300305', '300305301', '敦煌北街支行', '敦煌北街支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (175, '10187', '300313', '300313003', '总行营业室', '总行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (186, '10100', '300314', '300314300', '红古支行', '红古支行', null, null, '3', null, null, null, null, null, null, 1, null, '50', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (199, '10104', '300315', '300315303', '城建支行', '城建支行', null, null, '3', null, null, null, null, null, null, 1, null, '110', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (281, '10123', '300322', '300322323', '兰园支行', '兰园支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (282, '10154', '300322', '300322324', '永通支行', '永通支行', null, null, '3', null, null, null, null, null, null, 1, null, '530', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (283, '10146', '300322', '300322325', '五泉支行', '五泉支行', null, null, '3', null, null, null, null, null, null, 1, null, '510', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (284, '10268', '300322', '300322326', '广厦支行', '广厦支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (285, '10084', '300', '300324', '天河管理行', '天河管理行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (288, '10084', '300324', '300324003', '天河管理行营业室', '天河管理行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (211, '10109', '300316', '300316300', '安宁支行', '安宁支行', null, null, '3', null, null, null, null, null, null, 1, null, '180', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (224, '10113', '300317', '300317302', '宏鑫支行', '宏鑫支行', null, null, '3', null, null, null, null, null, null, 1, null, '250', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (251, '10169', '300318', '300318315', '科技支行', '科技支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (263, '10140', '300322', '300322303', '祥和支行', '祥和支行', null, null, '3', null, null, null, null, null, null, 1, null, '340', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (293, '10157', '300324', '300324300', '飞天支行', '飞天支行', null, null, '3', null, null, null, null, null, null, 1, null, '560', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (294, '10161', '300324', '300324301', '天水路支行', '天水路支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (295, '10144', '300324', '300324302', '郑家台支行', '郑家台支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (296, '10151', '300324', '300324303', '黄河支行', '黄河支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (297, '10132', '300324', '300324304', '金轮支行', '金轮支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (298, '10163', '300324', '300324305', '东岗支行', '东岗支行', null, null, '3', null, null, null, null, null, null, 1, null, '600', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (152, '10225', '300310', '300310300', '金昌金川支行', '金昌金川支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (166, '10217', '300312', '300312003', '白银分行营业室', '白银分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (299, '10150', '300324', '300324306', '联惠支行', '联惠支行', null, null, '3', null, null, null, null, null, null, 1, null, '610', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (300, '10156', '300324', '300324307', '金河支行', '金河支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (301, '10149', '300324', '300324308', '金汇支行', '金汇支行', null, null, '3', null, null, null, null, null, null, 1, null, '630', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (302, '10160', '300324', '300324309', '兴业支行', '兴业支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (303, '10159', '300324', '300324311', '天成支行', '天成支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (304, '10148', '300324', '300324312', '兴华支行', '兴华支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (203, '10276', '300315', '300315307', '港务区支行', '港务区支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (215, '10053', '300', '300317', '七里河管理行', '七里河管理行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (305, '10152', '300324', '300324313', '兴天支行', '兴天支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (306, '10147', '300324', '300324314', '兴陇支行', '兴陇支行', null, null, '3', null, null, null, null, null, null, 1, null, '690', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (307, '10171', '300324', '300324315', '兴兰支行', '兴兰支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (308, '10129', '300324', '300324317', '东方红支行', '东方红支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (309, '10127', '300324', '300324318', '三金支行', '三金支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (310, '10251', '300', '300326', '陇南分行', '陇南分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (313, '10251', '300326', '300326003', '陇南东江支行', '陇南东江支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (227, '10119', '300317', '300317305', '文化宫支行', '文化宫支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (317, '10277', '300326', '300326007', '陇南分行营业部', '陇南分行营业部', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (318, '10093', '300', '300328', '平凉分行汇总机构', '平凉分行汇总机构', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (322, '10275', '300328', '300328004', '平凉分行营业室', '平凉分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (325, '300329', '300', '300329', '甘南代表处', '甘南代表处', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (329, '300329004', '300329', '300329004', '甘南代表处营业室', '甘南代表处营业室', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (2, '10084', '300324', '300324007', '财富中心', '财富中心', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (240, '10173', '300318', '300318302', '万佳支行', '万佳支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (252, '10264', '300318', '300318316', '雁北路支行', '雁北路支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (265, '10143', '300322', '300322307', '城关支行', '城关支行', null, null, '3', null, null, null, null, null, null, 1, null, '360', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (145, '10207', '300', '300310', '金昌分行', '金昌分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (37, '10195', '300300310', '300300310300', '榆中东城支行', '榆中东城支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (62, '10219', '300301', '300301301', '酒泉东街支行', '酒泉东街支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (74, '10263', '300302', '300302303', '天水甘谷支行', '天水甘谷支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (85, '10246', '300303', '300303302', '岷县支行', '岷县支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (95, '10215', '300304', '300304300', '武威西城支行', '武威西城支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (107, '10197', '300', '300306', '庆阳分行', '庆阳分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (118, '10199', '300', '300307', '临夏分行', '临夏分行', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (0, '10187', '0', '300', '兰州总行', '兰州总行', null, null, '1', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (47, '10226', '300300311', '300300311301', '永登广场支行', '永登广场支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (67, '10182', '300302', '300302003', '天水分行营业室', '天水分行营业室', null, null, '3', null, null, null, null, null, null, 1, null, '1040', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (84, '10230', '300303', '300303301', '定西安定支行', '定西安定支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (105, '10210', '300305', '300305300', '敦煌七里镇支行', '敦煌七里镇支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (170, '10240', '300312', '300312300', '铜城支行', '铜城支行', null, null, '3', null, null, null, null, null, null, 1, null, '1530', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (230, '10198', '300317', '300317308', '彭家坪支行', '彭家坪支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (249, '10177', '300318', '300318312', '东兴支行', '东兴支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (115, '10237', '300306', '300306301', '庆阳西峰支行', '庆阳西峰支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (73, '10248', '300302', '300302302', '天水武山支行', '天水武山支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (268, '10138', '300322', '300322310', '德源支行', '德源支行', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (1, '10187', '300', '300313', '总行营业部', '总行营业部', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (10253, '11111', '300308', '300308009', '张掖二行', '张掖二行', null, null, '3', null, null, null, null, null, '11-7月 -18 10.19.41.000000 上午', 1, null, null, null);

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (10254, '10000', '300308', '300308303', '水电费反倒是', '水电费反倒是', null, null, '3', null, null, null, null, null, '11-7月 -18 11.21.32.000000 上午', 1, null, null, null);

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (10255, '111', '300308', '300308304', '111', '111', null, null, '3', null, null, null, null, null, '11-7月 -18 11.28.16.000000 上午', 1, null, null, null);

prompt Done.
