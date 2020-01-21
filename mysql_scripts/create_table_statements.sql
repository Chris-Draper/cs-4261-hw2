# These statements define and then create all of the database tables
# To run all of these statements press ctrl+a to highlight everything
# Then press ctrl+shift+enter to run all of the statements
# The statements execute in order from the top of the file to the bottom of the file

create schema if not exists my_closet;
use my_closet;

create table if not exists account_data (
username varchar(40) not null,
user_pass binary(64) not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
primary key (username)
);

create table if not exists clothing_data (
c_id smallint unsigned auto_increment not null,
username varchar(40) not null,
c_name varchar(20) not null,
c_store varchar(20),
c_img_path varchar(40),
c_timestamp timestamp default current_timestamp,
primary key (c_id, username),
foreign key (username) references account_data(username)
	on update cascade on delete cascade
);

create table if not exists clothing_type (
c_type_id tinyint unsigned auto_increment not null,
c_id smallint unsigned not null,
username varchar(40) not null,
c_type varchar(20) not null,
primary key (c_type_id, c_id, username),
foreign key (c_id) references clothing_data(c_id)
	on update cascade on delete cascade,
foreign key (username) references account_data(username)
	on update cascade on delete cascade
);

create table if not exists clothing_color (
c_type_id tinyint unsigned auto_increment not null,
c_id smallint unsigned not null,
username varchar(40) not null,
c_color varchar(20) not null,
primary key (c_type_id, c_id, username),
foreign key (c_id) references clothing_data(c_id)
	on update cascade on delete cascade,
foreign key (username) references account_data(username)
	on update cascade on delete cascade
);

create table if not exists clothing_style (
c_type_id tinyint unsigned auto_increment not null,
c_id smallint unsigned not null,
username varchar(40) not null,
c_style varchar(20) not null,
primary key (c_type_id, c_id, username),
foreign key (c_id) references clothing_data(c_id)
	on update cascade on delete cascade,
foreign key (username) references account_data(username)
	on update cascade on delete cascade
);

create table if not exists clothing_season (
c_type_id tinyint unsigned auto_increment not null,
c_id smallint unsigned not null,
username varchar(40) not null,
c_season varchar(20) not null,
primary key (c_type_id, c_id, username),
foreign key (c_id) references clothing_data(c_id)
	on update cascade on delete cascade,
foreign key (username) references account_data(username)
	on update cascade on delete cascade
);