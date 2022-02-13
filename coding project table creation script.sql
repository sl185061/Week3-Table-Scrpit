Create tabel 'newschema'.'user' (
'user_id' int not null auto_increment,
'username' varchar(45) not null,
'email' varchar(45) not null,
'password' varchar(45) not null,
'login_create_date' datetime not null,
primary key ('user_id'));

create table 'newschema'.'posts' (
'post_id' int not null,
'user_id' int not null,
'content' varchar(255) not null,
'date_time' datetime not null,
primary key ('post_id'),
foreign key ('user_id'),
references 'newschema'.'user' ('user_id'));

Create table 'newschema' .'comments',
'comment_id' int not null,
'post_id' int not null,
'user_id' int not null,
'comment' varchar(255) not null,
'date_time' datetime not null,
foreign key (post_id) references posts (post_id),
foreign key (user_id) references user (user_id),
primary key ('comment_id'));