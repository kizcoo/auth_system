-- 用户实体
create table auth_user(
    id int(11) AUTO_INCREMENT,
    username varchar(30) not null,
    name varchar(30) not null,
    phone varchar(11) not null,
    password varchar(128) not null,
    PRIMARY KEY(id)
)engine=INNODB;

-- 角色实体
create table sys_role(
    id int(11) AUTO_INCREMENT,
    name varchar(20) not null,
    status int(11) not null DEFAULT 1,
    desc varchar(300) DEFAULT null,
    PRIMARY KEY(id)
);

-- 用户-角色
create table sys_user_role(
    id int(11) AUTO_INCREMENT,
    user_id int(11) not null,
    role_id int(11) not null,
    UNIQUE INDEX(user_id),
    UNIQUE INDEX(role_id),
    PRIMARY KEY(id),
    constraint tk_user_role1 FOREIGN KEY(user_id) REFERENCES auth_user(id),
    constraint tk_user_role2 FOREIGN KEY(role_id) REFERENCES auth_role(id)
);

-- 前端页面权限实体
create table sys_page(
    id int(11)AUTO_INCREMENT,
    path varchar(60) not null,
    name varchar(20) not null,
    order int(11) not null,
    parent_id int(11) DEFAULT null,
    level int(11) not null,
    type int(11) not null,
    add_time datetime(0),
    status int(11) not null,
    icon varchar(32),
    PRIMARY KEY(id)
);

-- 前端页面权限-角色
create table sys_role_page(
    id int(11) AUTO_INCREMENT,
    role_id int(11) not null,
    page_id int(11) not null,
    UNIQUE INDEX(role_id),
    UNIQUE INDEX(page_id),
    PRIMARY KEY(id),
    constraint tk_role_page1 FOREIGN KEY(role_id) REFERENCES sys_role(id),
    constraint tk_role_page2 FOREIGN KEY(page_id) REFERENCES sys_page(id)
);

-- 后端接口权限实体
create table sys_api(
    id int(11) AUTO_INCREMENT,
    name varchar(20) not null,
    path VARCHAR(60) not null,
    status int(11) not null,
    add_time DATETIME(0),
    PRIMARY KEY(id)
);

-- 后端接口权限-前端页面权限
create table sys_api_page(
    id int(11) AUTO_INCREMENT,
    api_id int(11) not null,
    page_id int(11) not null,
    add_time DATETIME(0) not null,
    status int(11) not null,
    PRIMARY KEY(id),
    UNIQUE INDEX(api_id),
    UNIQUE INDEX(page_id),
    constraint tk_api_page1 FOREIGN KEY(api_id) REFERENCES sys_api(id),
    constraint tk_api_page2 FOREIGN KEY(page_id) REFERENCES sys_page(id)
);

-- 前端功能权限实体
create table sys_page_function(
    id int(11) AUTO_INCREMENT,
    page_id int(11) not null,
    name varchar(50) not null,
    key varchar(50) not null,
    add_time DATETIME(0) not null,
    status int(11) not null,
    PRIMARY KEY(id),
    UNIQUE INDEX(page_id),
    constraint tk_page_function FOREIGN KEY(page_id) REFERENCES sys_page(id) ON update cascade on delete cascade,
);

-- 前端功能权限-角色
create table sys_page_role_function(
    id int(11) AUTO_INCREMENT,
    page_id int(11) not null,
    role_id int(11) not null,
    function_id int(11) not null,
    add_time DATETIME(0) not null,
    UNIQUE INDEX(page_id),
    UNIQUE INDEX(role_id),
    UNIQUE INDEX(function_id),
    PRIMARY KEY(id),
    constraint tk_page_role_function1 FOREIGN KEY(page_id) REFERENCES sys_page(id),
    constraint tk_page_role_function2 FOREIGN KEY(role_id) REFERENCES sys_role(id),
    constraint tk_page_role_function3 FOREIGN KEY(function_id) REFERENCES sys_page_function(id)
);

-- 前端功能权限-后端接口权限
create table sys_api_function(
    id int(11) AUTO_INCREMENT,
    api_id int(11) not null,
    function_id int(11) not null,
    add_time DATETIME(0) not null,
    status int(11) not null,
    PRIMARY KEY(id),
    UNIQUE INDEX(api_id),
    UNIQUE INDEX(function_id),
    constraint tk_api_function1 FOREIGN KEY(api_id) REFERENCES sys_api(id),
    constraint tk_api_function2 FOREIGN KEY(function_id) REFERENCES sys_page_function(id)
);