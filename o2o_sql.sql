#生活服务类表
create table `category`(
`id` int(16) unsigned  not null  primary key auto_increment,
`name` varchar(50) not null default '',
`parent_id` int(10) not null default 0,
`listorder` int(8) not null default 0,
`status` tinyint(2) not null default 0,
`create_time` int(11) unsigned not null default 0,
`update_time` int(11) unsigned not null default 0,
key parent_id(`parent_id`)
)engine=Innodb charset=utf8;


