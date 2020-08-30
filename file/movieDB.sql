use movieticketdb;

create table member(
	mem_idNUM int primary key,
    id char(8),
    pw char(12),
    name char(5),
    phone int not null,
	enter_date datetime default now(),          
	modify_date datetime on update now()        
);

create table theater(
	theater_num int primary key,
    empty_seat int,
    enter_date datetime default now(),          
	modify_date datetime on update now()
);

create table movie(
	mvi_num int primary key,
    theater_num int,
    title char(20),
    actor char(20),
    director char(20),
    plot char(100),
	foreign key(theater_num) references theater(theater_num),    
    enter_date datetime default now(),          
	modify_date datetime on update now()      
);

create table seats(
	seat_num int primary key,
    theater_num int,
    seat_check int,
    foreign key(theater_num) references theater(theater_num),
    enter_date datetime default now(),          
	modify_date datetime on update now()     
);

create table ticket(
	tic_num int primary key,
    mvi_num int,
    theater_num int,
    seat_num int,
    price int,
    count int,
    foreign key(mvi_num) references movie(mvi_num),
    foreign key(theater_num) references theater(theater_num),
    foreign key(seat_num) references seats(seat_num),
    enter_date datetime default now(),          
	modify_date datetime on update now()
);

create table pay(
	pay_idNum int primary key,
    mem_idNum int,
    tic_num int,
    payment char(10),
    price int,
    date int,
    foreign key(mem_idNum) references member(mem_idNum),
    foreign key(tic_num) references ticket(tic_num),
	enter_date datetime default now(),          
	modify_date datetime on update now()        
);

create table snacks(
	snack_num int primary key,
    tic_num int,
    name char(10),
    price int,
    foreign key(tic_num) references ticket(tic_num),
    enter_date datetime default now(),          
	modify_date datetime on update now()
);