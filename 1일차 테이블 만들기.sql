
-- 데이터 베이스 생성 
-- CREATE DATABASE <데이터 베이스 이름>
CREATE DATABASE mydb;

-- DB를 사용할려면 사용한다고 명령어를 실행 해야 한다.
use mydb;
-- 테이블 생성 시, SQL 작성시 어떤 DB 를 사용 해야하는지 먼저 선택 되어야한다

-- 테이블 생성

create table student(
	student_id int,
	-- 최대 50자까지
    -- NOT NULL 빈칸을 안쓸거야
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50) NOT NULL
); 

select * from student;
desc student;-- 테이블 구조를 알려줘

-- 과목 테이블 생성하기
create table subject(
	subject_id int,
    subject_name varchar(50) not null,
    credit int not null,
    department varchar(50),
    professor char(50) not null
);

select * from subject;
desc subject;

desc student;
-- 이미 생성 된 테이블에 기본키 추가 하는 쿼리 사용방법
alter table student add primary key(student_id); 
-- 사전 기반지식 : 특정 컬럼을 기본 키로 만들게 되면 중복된 데이터를 허용 못하고 
-- null 값이 있어서는 안됨

-- subject 테이블에 pk 추가 대상 subject_id
desc subject;
alter table subject add primary key(subject_id); 

-- 생성 될 시점에  테이블 생성 명령어를 보여줘
show create table student;

-- 테이블을 삭제하는 명령어 확인
drop table student;
drop table subject;

-- 학생 테이블 추가
create table student(
	student_id int primary key,
    name varchar(50) not null,
    grade int not null,
    major varchar(50) not null
);
desc student;
create table subject(
	subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    credit INT NOT NULL,
    department varchar(10) NOT NULL,
    professor varchar(20) NOT NULL
);
desc subject;

create table employee(
	employee_id int primary key,
    employee_name varchar(20) not null,
    employee_age int,
    department varchar(20) not null
);
desc employee;

create table customer(
	customer_id int primary key,
    customer_name varchar(20) not null,
    customer_email varchar(30),
    address varchar(50) not null
);
desc customer;

create table product(
	id INT primary key,
    name VARCHAR(50) NOT NULL,
    pirce decimal(10, 2) NOT NULL,
    description TEXT
);
desc product;

-- `order` 예약어 테이블 이름을 선점 할수 없다 기본적으로
-- 하지만 강제적으로 '' 작은 따옴표를 사용해서 테이블 이름이라고 
-- 명시 할수 있다.
create table `order`(
	id INT PRIMARY KEY,
    cusotmer_order VARCHAR(50),
    product_name VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL
);
desc `order`;

create table gym(
    member_number int NOT NULL PRIMARY KEY,
	member_name varchar(20) NOT NULL,
    member_age int NOT NULL,
    phone int
);
desc gym;