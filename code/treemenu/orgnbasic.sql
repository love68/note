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
  is '������ʶ��';
comment on column ORGN_BASIC.orgn_code
  is '���Ļ�����';
comment on column ORGN_BASIC.f_orgn_id
  is '��������';
comment on column ORGN_BASIC.orgn_unicode
  is '��λ������';
comment on column ORGN_BASIC.orgn_name
  is '��������';
comment on column ORGN_BASIC.orgn_type
  is '��������';
comment on column ORGN_BASIC.orgn_lvl
  is '�����ȼ�';
comment on column ORGN_BASIC.state
  is '����״̬';
comment on column ORGN_BASIC.last_mod
  is '����޸�ʱ��';
comment on column ORGN_BASIC.leaf
  is '�ڵ��жϷ�';
comment on column ORGN_BASIC.orgn_wdsign
  is '�����ʶ';
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
values (10256, '111', '300308', '300308306', '111', '111', null, null, '3', null, null, null, null, null, '11-7�� -18 11.45.48.000000 ����', 1, null, null, null);

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (30, '10179', '300', '300300310', '����֧��', '����֧��', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (33, '10179', '300300310', '300300310003', '����֧��Ӫҵ��', '����֧��Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, '900', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (38, '10208', '300300310', '300300310301', '���к�ƽ֧��', '���к�ƽ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (39, '10180', '300', '300300311', '����֧��', '����֧��', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (42, '10180', '300300311', '300300311003', '����֧��Ӫҵ��', '����֧��Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (46, '10209', '300300311', '300300311300', '�����Ͻ�֧��', '�����Ͻ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (48, '10221', '300', '300300312', '����֧��', '����֧��', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (51, '10221', '300300312', '300300312003', '����֧��Ӫҵ��', '����֧��Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (54, '10181', '300', '300301', '��Ȫ����', '��Ȫ����', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (57, '10181', '300301', '300301003', '��Ȫ����Ӫҵ��', '��Ȫ����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (61, '10192', '300301', '300301300', '��Ȫ�Ͻ�֧��', '��Ȫ�Ͻ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (63, '10242', '300301', '300301302', '��Ȫ����֧��', '��Ȫ����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (64, '300302', '300', '300302', '��ˮ����', '��ˮ����', null, null, '2', null, null, null, null, null, null, 1, to_date('06-11-2017 16:44:04', 'dd-mm-yyyy hh24:mi:ss'), null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (71, '10183', '300302', '300302300', '��ˮ��Ȫ֧��', '��ˮ��Ȫ֧��', null, null, '3', null, null, null, null, null, null, 1, null, '1050', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (72, '10204', '300302', '300302301', '��ˮ���֧��', '��ˮ���֧��', null, null, '3', null, null, null, null, null, null, 1, null, '1060', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (75, '10269', '300302', '300302304', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (76, '10193', '300', '300303', '��������', '��������', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (79, '10193', '300303', '300303003', '��������Ӫҵ��', '��������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (83, '10214', '300303', '300303300', '¤��֧��', '¤��֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (86, '10273', '300303', '300303303', '������վ֧��', '������վ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (87, '10194', '300', '300304', '��������', '��������', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (90, '10194', '300304', '300304003', '��������Ӫҵ��', '��������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (96, '10224', '300304', '300304301', '��������֧��', '��������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (97, '10279', '300304', '300304302', '��������֧��', '��������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (98, '10184', '300', '300305', '�ػͷ���', '�ػͷ���', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (101, '10184', '300305', '300305003', '�ػͷ���Ӫҵ��', '�ػͷ���Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (110, '10197', '300306', '300306003', '��������Ӫҵ��', '��������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (114, '10216', '300306', '300306300', '��������֧��', '��������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (116, '10247', '300306', '300306302', '��������֧��', '��������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (223, '10116', '300317', '300317301', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '240', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (121, '10199', '300307', '300307003', '���ķ���Ӫҵ��', '���ķ���Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, '1310', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (225, '10114', '300317', '300317303', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (125, '10200', '300', '300308', '��Ҵ����', '��Ҵ����', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (128, '10200', '300308', '300308003', '��Ҵ����Ӫҵ��', '��Ҵ����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (132, '10245', '300308', '300308300', '��Ҵɽ��֧��', '��Ҵɽ��֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (226, '10115', '300317', '300317304', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (228, '10211', '300317', '300317306', '���Ŷ�֧��', '���Ŷ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (229, '10220', '300317', '300317307', '�ػ�Դ֧��', '�ػ�Դ֧��', null, null, '3', null, null, null, null, null, null, 1, null, '300', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (133, '10238', '300308', '300308301', '��Ҵ����֧��', '��Ҵ����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (134, '10274', '300308', '300308302', '��Ҵ����֧��', '��Ҵ����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (231, '10065', '300', '300318', '������������', '������������', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (135, '10202', '300', '300309', '�����ط���', '�����ط���', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (138, '10202', '300309', '300309003', '�����ط���Ӫҵ��', '�����ط���Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (142, '10223', '300309', '300309300', '�۹�֧��', '�۹�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (234, '10065', '300318', '300318003', '������������Ӫҵ��', '������������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (238, '10172', '300318', '300318300', '������֧��', '������֧��', null, null, '3', null, null, null, null, null, null, 1, null, '730', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (239, '10170', '300318', '300318301', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '740', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (143, '10258', '300309', '300309301', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (144, '10267', '300309', '300309302', '�������»�֧��', '�������»�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (241, '10175', '300318', '300318303', '����̲֧��', '����̲֧��', null, null, '3', null, null, null, null, null, null, 1, null, '760', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (148, '10207', '300310', '300310003', '�������Ӫҵ��', '�������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (153, '10255', '300310', '300310301', '�����԰·֧��', '�����԰·֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (242, '10131', '300318', '300318305', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '770', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (154, '10272', '300310', '300310302', '�������֧��', '�������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (155, '10212', '300', '300311', '��������', '��������', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (158, '10212', '300311', '300311003', '��������Ӫҵ��', '��������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (162, '10270', '300311', '300311007', '�д�֧��', '�д�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (163, '10217', '300', '300312', '��������', '��������', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (171, '10253', '300312', '300312301', '��Զ֧��', '��Զ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (243, '10178', '300318', '300318306', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '780', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (244, '10176', '300318', '300318307', '�˿�֧��', '�˿�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (245, '10166', '300318', '300318308', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (246, '10164', '300318', '300318309', '¡ʢ֧��', '¡ʢ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (179, '10050', '300', '300314', '��Ź�����', '��Ź�����', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (182, '10050', '300314', '300314003', '��Ź�����Ӫҵ��', '��Ź�����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (187, '10101', '300314', '300314301', 'Ҥ��֧��', 'Ҥ��֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (188, '10102', '300314', '300314302', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (189, '10051', '300', '300315', '���̹�����', '���̹�����', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (192, '10051', '300315', '300315003', '���̹�����Ӫҵ��', '���̹�����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (247, '10168', '300318', '300318310', '�γ�֧��', '�γ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (248, '10165', '300318', '300318311', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (250, '10231', '300318', '300318314', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (253, '10259', '300318', '300318317', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, '880', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (254, '10082', '300', '300322', '�ǹع�����', '�ǹع�����', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (257, '10082', '300322', '300322003', '�ǹع�����Ӫҵ��', '�ǹع�����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (196, '10103', '300315', '300315300', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '90', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (197, '10107', '300315', '300315301', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '100', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (198, '10108', '300315', '300315302', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '130', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (200, '10105', '300315', '300315304', '���̶�·֧��', '���̶�·֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (201, '10106', '300315', '300315305', '��ҵ֧��', '��ҵ֧��', null, null, '3', null, null, null, null, null, null, 1, null, '140', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (202, '10256', '300315', '300315306', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (261, '10142', '300322', '300322300', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, '330', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (262, '10145', '300322', '300322301', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (264, '10189', '300322', '300322304', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, '350', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (266, '10117', '300322', '300322308', '��ɽ֧��', '��ɽ֧��', null, null, '3', null, null, null, null, null, null, 1, null, '370', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (267, '10121', '300322', '300322309', '�Ų�֧��', '�Ų�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (204, '10052', '300', '300316', '����������', '����������', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (207, '10052', '300316', '300316003', '����������Ӫҵ��', '����������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (212, '10111', '300316', '300316301', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '190', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (213, '10228', '300316', '300316302', '���ұ�֧��', '���ұ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, '200', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (214, '10252', '300316', '300316303', '�ƽ̳�֧��', '�ƽ̳�֧��', null, null, '3', null, null, null, null, null, null, 1, null, '210', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (218, '10053', '300317', '300317003', '����ӹ�����Ӫҵ��', '����ӹ�����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (222, '10112', '300317', '300317300', '�����֧��', '�����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '230', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (269, '10136', '300322', '300322311', '��֧ͨ��', '��֧ͨ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (270, '10137', '300322', '300322312', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (271, '10139', '300322', '300322313', '����·֧��', '����·֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (272, '10133', '300322', '300322314', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (273, '10118', '300322', '300322315', '��֧ͨ��', '��֧ͨ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (274, '10120', '300322', '300322316', '��Ҵ·֧��', '��Ҵ·֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (275, '10122', '300322', '300322317', '����·֧��', '����·֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (276, '10126', '300322', '300322318', '����ɽ֧��', '����ɽ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (277, '10124', '300322', '300322319', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (278, '10125', '300322', '300322320', '�ذ�·֧��', '�ذ�·֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (279, '10135', '300322', '300322321', '��¡֧��', '��¡֧��', null, null, '3', null, null, null, null, null, null, 1, null, '490', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (280, '10128', '300322', '300322322', '����·֧��', '����·֧��', null, null, '3', null, null, null, null, null, null, 1, null, '500', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (106, '10249', '300305', '300305301', '�ػͱ���֧��', '�ػͱ���֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (175, '10187', '300313', '300313003', '����Ӫҵ��', '����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (186, '10100', '300314', '300314300', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, '50', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (199, '10104', '300315', '300315303', '�ǽ�֧��', '�ǽ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, '110', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (281, '10123', '300322', '300322323', '��԰֧��', '��԰֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (282, '10154', '300322', '300322324', '��֧ͨ��', '��֧ͨ��', null, null, '3', null, null, null, null, null, null, 1, null, '530', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (283, '10146', '300322', '300322325', '��Ȫ֧��', '��Ȫ֧��', null, null, '3', null, null, null, null, null, null, 1, null, '510', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (284, '10268', '300322', '300322326', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (285, '10084', '300', '300324', '��ӹ�����', '��ӹ�����', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (288, '10084', '300324', '300324003', '��ӹ�����Ӫҵ��', '��ӹ�����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (211, '10109', '300316', '300316300', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '180', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (224, '10113', '300317', '300317302', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '250', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (251, '10169', '300318', '300318315', '�Ƽ�֧��', '�Ƽ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (263, '10140', '300322', '300322303', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, '340', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (293, '10157', '300324', '300324300', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '560', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (294, '10161', '300324', '300324301', '��ˮ·֧��', '��ˮ·֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (295, '10144', '300324', '300324302', '֣��̨֧��', '֣��̨֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (296, '10151', '300324', '300324303', '�ƺ�֧��', '�ƺ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (297, '10132', '300324', '300324304', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (298, '10163', '300324', '300324305', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '600', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (152, '10225', '300310', '300310300', '�����֧��', '�����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (166, '10217', '300312', '300312003', '��������Ӫҵ��', '��������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (299, '10150', '300324', '300324306', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, '610', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (300, '10156', '300324', '300324307', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (301, '10149', '300324', '300324308', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, '630', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (302, '10160', '300324', '300324309', '��ҵ֧��', '��ҵ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (303, '10159', '300324', '300324311', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (304, '10148', '300324', '300324312', '�˻�֧��', '�˻�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (203, '10276', '300315', '300315307', '������֧��', '������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (215, '10053', '300', '300317', '����ӹ�����', '����ӹ�����', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (305, '10152', '300324', '300324313', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (306, '10147', '300324', '300324314', '��¤֧��', '��¤֧��', null, null, '3', null, null, null, null, null, null, 1, null, '690', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (307, '10171', '300324', '300324315', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (308, '10129', '300324', '300324317', '������֧��', '������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (309, '10127', '300324', '300324318', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (310, '10251', '300', '300326', '¤�Ϸ���', '¤�Ϸ���', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (313, '10251', '300326', '300326003', '¤�϶���֧��', '¤�϶���֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (227, '10119', '300317', '300317305', '�Ļ���֧��', '�Ļ���֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (317, '10277', '300326', '300326007', '¤�Ϸ���Ӫҵ��', '¤�Ϸ���Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (318, '10093', '300', '300328', 'ƽ�����л��ܻ���', 'ƽ�����л��ܻ���', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (322, '10275', '300328', '300328004', 'ƽ������Ӫҵ��', 'ƽ������Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (325, '300329', '300', '300329', '���ϴ���', '���ϴ���', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (329, '300329004', '300329', '300329004', '���ϴ���Ӫҵ��', '���ϴ���Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (2, '10084', '300324', '300324007', '�Ƹ�����', '�Ƹ�����', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (240, '10173', '300318', '300318302', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (252, '10264', '300318', '300318316', '�㱱·֧��', '�㱱·֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (265, '10143', '300322', '300322307', '�ǹ�֧��', '�ǹ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, '360', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (145, '10207', '300', '300310', '�������', '�������', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (37, '10195', '300300310', '300300310300', '���ж���֧��', '���ж���֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (62, '10219', '300301', '300301301', '��Ȫ����֧��', '��Ȫ����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (74, '10263', '300302', '300302303', '��ˮ�ʹ�֧��', '��ˮ�ʹ�֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (85, '10246', '300303', '300303302', '���֧��', '���֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (95, '10215', '300304', '300304300', '��������֧��', '��������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (107, '10197', '300', '300306', '��������', '��������', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (118, '10199', '300', '300307', '���ķ���', '���ķ���', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (0, '10187', '0', '300', '��������', '��������', null, null, '1', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (47, '10226', '300300311', '300300311301', '���ǹ㳡֧��', '���ǹ㳡֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (67, '10182', '300302', '300302003', '��ˮ����Ӫҵ��', '��ˮ����Ӫҵ��', null, null, '3', null, null, null, null, null, null, 1, null, '1040', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (84, '10230', '300303', '300303301', '��������֧��', '��������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (105, '10210', '300305', '300305300', '�ػ�������֧��', '�ػ�������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (170, '10240', '300312', '300312300', 'ͭ��֧��', 'ͭ��֧��', null, null, '3', null, null, null, null, null, null, 1, null, '1530', '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (230, '10198', '300317', '300317308', '���ƺ֧��', '���ƺ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (249, '10177', '300318', '300318312', '����֧��', '����֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (115, '10237', '300306', '300306301', '��������֧��', '��������֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (73, '10248', '300302', '300302302', '��ˮ��ɽ֧��', '��ˮ��ɽ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (268, '10138', '300322', '300322310', '��Դ֧��', '��Դ֧��', null, null, '3', null, null, null, null, null, null, 1, null, null, '1');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (1, '10187', '300', '300313', '����Ӫҵ��', '����Ӫҵ��', null, null, '2', null, null, null, null, null, null, 1, null, null, '0');

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (10253, '11111', '300308', '300308009', '��Ҵ����', '��Ҵ����', null, null, '3', null, null, null, null, null, '11-7�� -18 10.19.41.000000 ����', 1, null, null, null);

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (10254, '10000', '300308', '300308303', 'ˮ��ѷ�����', 'ˮ��ѷ�����', null, null, '3', null, null, null, null, null, '11-7�� -18 11.21.32.000000 ����', 1, null, null, null);

insert into orgn_basic (ID, ORGN_CODE, F_ORGN_ID, ORGN_UNICODE, ORGN_NAME, ORGN_ABBRNAME, ORGN_DIV, ORGN_TYPE, ORGN_LVL, ORGN_STAT, ZONE_TYPE, ADMIN_LEVEL, FUNC_TYPE, BANK_NO, SDATE, STATE, LAST_MOD, LEAF, ORGN_WDSIGN)
values (10255, '111', '300308', '300308304', '111', '111', null, null, '3', null, null, null, null, null, '11-7�� -18 11.28.16.000000 ����', 1, null, null, null);

prompt Done.
