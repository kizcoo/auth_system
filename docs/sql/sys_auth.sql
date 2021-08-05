-- 用户实体
create table sys_user(
    id int(11) AUTO_INCREMENT,
    username varchar(30) not null COMMENT '用户名',
    account varchar(40) not null COMMENT '用户账号',
    status TINYINT(10) not null DEFAULT '1' COMMENT '用户状态(1启用, 0禁用)',
    create_time DATETIME(0) COMMENT '创建时间',
    update_time DATETIME(0) COMMENT '更新时间',
    PRIMARY KEY(id)
)engine=INNODB;

-- 角色实体
create table sys_role(
    id int(11) AUTO_INCREMENT,
    name varchar(20) not null COMMENT '角色名称',
    status TINYINT(10) not null DEFAULT '1' COMMENT '角色状态(1:启用， 0:禁用)',
    _desc varchar(300) not null DEFAULT '' COMMENT '该角色的描述',
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
    constraint fk_user_role1 FOREIGN KEY(user_id) REFERENCES sys_user(id) on delete cascade,
    constraint fk_user_role2 FOREIGN KEY(role_id) REFERENCES sys_role(id) on delete cascade
);

-- 前端页面权限实体
create table sys_page(
    id int(11)AUTO_INCREMENT,
    path varchar(60) not null COMMENT '前端页面路由(url)',
    name varchar(20) not null COMMENT '前端页面名称',
    _order INT(10) not null DEFAULT '1' COMMENT '顺序访问，防止输入最终路由path越权访问',
    parent_id int(11) DEFAULT 0 COMMENT '页面的上一级(菜单/内容页)',
    type TINYINT(2) not null COMMENT '页面类型(1:菜单， 2:内容页)',
    add_time datetime(0) COMMENT '添加时间',
    status TINYINT(5) not null DEFAULT '1' COMMENT '页面权限状态(1:启用， 0:禁用)',
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
    constraint fk_role_page1 FOREIGN KEY(role_id) REFERENCES sys_role(id) on delete cascade,
    constraint fk_role_page2 FOREIGN KEY(page_id) REFERENCES sys_page(id) on delete cascade
);

-- 后端接口权限实体
create table sys_api(
    id int(11) AUTO_INCREMENT,
    name varchar(20) not null COMMENT '接口权限名称',
    path VARCHAR(60) not null COMMENT '接口路径',
    status TINYINT(5) not null DEFAULT '1' COMMENT '权限状态(1:启用， 0:禁用)',
    add_time DATETIME(0) COMMENT '添加时间',
    PRIMARY KEY(id)
);

-- 后端接口权限-前端页面权限
create table sys_api_page(
    id int(11) AUTO_INCREMENT,
    api_id int(11) not null,
    page_id int(11) not null,
    status TINYINT(5) not null DEFAULT '1',
    PRIMARY KEY(id),
    UNIQUE INDEX(api_id),
    UNIQUE INDEX(page_id),
    constraint fk_api_page1 FOREIGN KEY(api_id) REFERENCES sys_api(id) on delete cascade,
    constraint fk_api_page2 FOREIGN KEY(page_id) REFERENCES sys_page(id) on delete cascade
);

-- 前端功能权限实体
create table sys_page_function(
    id int(11) AUTO_INCREMENT,
    page_id int(11) not null COMMENT '前端页面权限id',
    name varchar(50) not null COMMENT '前端功能权限名称',
    _key varchar(50) not null COMMENT '与前后端约定的唯一标识',
    add_time DATETIME(0) not null COMMENT '添加时间',
    status TINYINT(5) not null DEFAULT '1' COMMENT '权限状态(1:启用， 0:禁用)',
    PRIMARY KEY(id),
    INDEX(page_id),
    UNIQUE INDEX(_key),
    constraint fk_page_function FOREIGN KEY(page_id) REFERENCES sys_page(id) on delete CASCADE on update cascade
);

-- 前端功能权限-角色
create table sys_page_role_function(
    id int(11) AUTO_INCREMENT,
    page_id int(11) not null,
    role_id int(11) not null,
    function_id int(11) not null,
    UNIQUE INDEX(page_id),
    UNIQUE INDEX(role_id),
    UNIQUE INDEX(function_id),
    PRIMARY KEY(id),
    constraint fk_page_role_function1 FOREIGN KEY(page_id) REFERENCES sys_page(id) on delete cascade,
    constraint fk_page_role_function2 FOREIGN KEY(role_id) REFERENCES sys_role(id) on delete cascade,
    constraint fk_page_role_function3 FOREIGN KEY(function_id) REFERENCES sys_page_function(id) on delete cascade
);

-- 前端功能权限-后端接口权限
create table sys_api_function(
    id int(11) AUTO_INCREMENT,
    api_id int(11) not null,
    function_id int(11) not null,
    status TINYINT(5) not null DEFAULT '1',
    PRIMARY KEY(id),
    UNIQUE INDEX(api_id),
    UNIQUE INDEX(function_id),
    constraint fk_api_function1 FOREIGN KEY(api_id) REFERENCES sys_api(id) on delete cascade,
    constraint fk_api_function2 FOREIGN KEY(function_id) REFERENCES sys_page_function(id) on delete cascade
);