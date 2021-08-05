use sys_auth;
-- 禁用外键约束
set foreign_key_checks = 0;
truncate table sys_api_function;
truncate table sys_api_page;
truncate table sys_page_role_function;
truncate table sys_role_page;
truncate table sys_user_role;
truncate table sys_api;
truncate table sys_page;
truncate table sys_role;
truncate table sys_page_function;
truncate table sys_user;
-- 启用外键约束
set foreign_key_checks = 1;


insert into sys_user(username, account, create_time, update_time)
values('张三', '10001', '2018-05-12', '2018-05-12');
insert into sys_user(username, account, create_time, update_time)
values('李四', '10002', '2018-06-24', '2018-06-24');
insert into sys_user(username, account, create_time, update_time)
values('王五', '10003', '2019-01-14', '2019-01-14');
insert into sys_user(username, account, create_time, update_time)
values('赵六', '10004', '2019-03-12', '2019-03-12');
insert into sys_user(username, account, create_time, update_time)
values('柺七', '10005', '2019-08-09', '2019-08-09');
insert into sys_user(username, account, create_time, update_time)
values('老八', '10006', '2020-04-10', '2020-04-10');
insert into sys_user(username, account, create_time, update_time)
values('阿九', '10007', '2020-04-15', '2020-04-15');
insert into sys_user(username, account, create_time, update_time)
values('憨十', '10008', '2020-04-18', '2020-04-18');
insert into sys_user(username, account, create_time, update_time)
values('十一', '10009', '2020-04-18', '2020-04-18');
insert into sys_user(username, account, create_time, update_time)
values('十二', '10010', '2020-05-21', '2020-05-21');
insert into sys_user(username, account, create_time, update_time)
values('十三', '10011', '2020-07-08', '2020-07-08');
insert into sys_user(username, account, create_time, update_time)
values('十四', '10012', '2020-08-01', '2020-08-01');

insert into sys_page(path, name, _order, parent_id, type, add_time)
values('http://localhost:8080/index', '首页', 1, 0, 2, '2019-01-01');
insert into sys_page(path, name, _order, parent_id, type, add_time)
values('http://localhost:8080/index/index_menu', '首页菜单', 2, 1, 1, '2019-01-01');
insert into sys_page(path, name, _order, parent_id, type, add_time)
values('http://localhost:8080/user', '个人主页', 1, 0, 2, '2019-01-01');
insert into sys_page(path, name, _order, parent_id, type, add_time)
values('http://localhost:8080/user/purchase_history', '购买历史', 2, 3, 2, '2019-01-01');
insert into sys_page(path, name, _order, parent_id, type, add_time)
values('http://localhost:8080/goods/content', '商品详情页', 1, 0, 2, '2019-01-01');
insert into sys_page(path, name, _order, parent_id, type, add_time)
values('http://localhost:8080/goods/content/order', '商品订单页', 2, 0, 2, '2019-01-01');
insert into sys_page(path, name, _order, parent_id, type, add_time)
values('http://localhost:8080/goods/content/order/pay', '商品支付页', 3, 0, 2, '2019-01-01');

insert into sys_api(name, path, add_time)
values('首页菜单内容', 'http://localhost:8080/api/index/index_menu', '2019-01-01');
insert into sys_api(name, path, add_time)
values('首页模块一数据接口', 'http://localhost:8080/api/index/index_mode1', '2019-01-01');
insert into sys_api(name, path, add_time)
values('首页模块二数据接口', 'http://localhost:8080/api/index/index_mode2', '2019-01-01');
insert into sys_api(name, path, add_time)
values('购买历史数据', 'http://localhost:8080/api/user/purchase_history', '2019-01-01');
insert into sys_api(name, path, add_time)
values('商品列表数据', 'http://localhost:8080/api/goods/list', '2019-01-01');
insert into sys_api(name, path, add_time)
values('商品评论数据', 'http://localhost:8080/api/goods/content/comment', '2019-01-01');
insert into sys_api(name, path, add_time)
values('发送商品评论接口', 'http://localhost:8080/api/goods/content/comment/add', '2019-01-01');
insert into sys_api(name, path, add_time)
values('删除商品评论接口', 'http://localhost:8080/api/goods/content/comment/delete', '2019-01-01');
insert into sys_api(name, path, add_time)
values('购买商品', 'http://localhost:8080/api/goods/purchase', '2019-01-01');
insert into sys_api(name, path, add_time)
values('申请退货', 'http://localhost:8080/api/goods/return_purchase', '2019-01-01');
insert into sys_api(name, path, add_time)
values('商品打折', 'http://localhost:8080/api/goods/discount', '2019-01-01');

insert into sys_page_function(page_id, name, _key, add_time)
values(2, '首页菜单项一', 'index_menu_item1', '2019-01-01');
insert into sys_page_function(page_id, name, _key, add_time)
values(2, '首页菜单项二', 'index_menu_item2', '2019-01-01');
insert into sys_page_function(page_id, name, _key, add_time)
values(2, '首页菜单项三', 'index_menu_item3', '2019-01-01');
insert into sys_page_function(page_id, name, _key, add_time)
values(5, '发送评论', 'push_comment', '2019-01-01');
insert into sys_page_function(page_id, name, _key, add_time)
values(5, '删除评论', 'delete_comment', '2019-01-01');
insert into sys_page_function(page_id, name, _key, add_time)
values(7, '使用折扣', 'using_discount', '2019-01-01');

