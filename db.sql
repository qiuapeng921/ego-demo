create database blog charset=utf8;

use blog;

drop table if exists temp;
create table temp (
    id int unsigned primary key auto_increment comment '主键',
    is_deleted tinyint unsigned not null default 0 comment '是否删除',
    created_at int unsigned not null default 0 comment '创建时间',
    updated_at int unsigned not null default 0 comment '更新时间',
    key `idx_is_deleted`(`is_deleted`),
    key `idx_updated_at`(`updated_at`)
)charset=utf8 comment='模板';



drop table if exists users;
create table users (
    id int unsigned not null primary key auto_increment comment '主键',
    email varchar(255) not null default '' comment '邮箱',
    password varchar(32) not null default '' comment '密码',
    is_deleted tinyint unsigned not null default 0 comment '是否删除',
    created_at int unsigned not null default 0 comment '创建时间',
    updated_at int unsigned not null default 0 comment '更新时间',
    key `idx_is_deleted`(`is_deleted`),
    key `idx_updated_at`(`updated_at`)
)charset=utf8 comment='模板';

