create database Phim;
use Phim;


create table BANG_NGUOI_DUNG (
ID_NGUOI_DUNG int  not null primary key,
HO_TEN varchar (255) not null,
SO_DIEN_THOAI varchar (255) not null,
GIOI_TINH varchar (255) not null
);

insert into BANG_NGUOI_DUNG (ID_NGUOI_DUNG, HO_TEN, SO_DIEN_THOAI, GIOI_TINH) values
('1','Vũ Đình Duẩn', '988539548', 'Nam'),
('2', 'Nguyễn Khắc Hùng', '34362368', 'Nam' ),
('3', 'Nguyễn Thị Phượng', '25353636', 'Nữ'),
('4', 'Trần Thị Thu Phương', '38373737', 'Nữ');

select * from `BANG_NGUOI_DUNG`;

create table BANG_PHIM (
ID_PHIM varchar(255) not null primary key,
TEN_PHIM varchar(255) not null,
THE_LOAI varchar(255) not null,
DANH_MUC varchar(255) not null,
NGAY_SAN_XUAT datetime  not null,
GIA_PHIM varchar(255) not null
);


insert into BANG_PHIM (ID_PHIM, TEN_PHIM, THE_LOAI, DANH_MUC, NGAY_SAN_XUAT, GIA_PHIM) values
('M1', 'Nhà Bà Nữ', 'Tình cảm', '18+', '2023-1-22', '60.000VND'),
('M2', 'Avartar', 'Phiêu lưu', '16+', '2009-12-17', '50.000VND'),
('M3', 'Chị chị em em', 'Tình cảm',	'18+', '2019-12-20', '40.000VND');

select * from `BANG_PHIM`;

create table BANG_DANH_MUC (
ID_DANH_MUC varchar(255) not null primary key,
TEN_DANH_MUC varchar(255) not null
);

insert into BANG_DANH_MUC (ID_DANH_MUC, TEN_DANH_MUC) VALUES
('T1',	'13+'),
('T2',	'14+'),
('T3',	'16+'),
('T4',	'18+'),
('T5',	'12-');

select * from `BANG_DANH_MUC`;


create table BANG_THUE_PHIM (
ID_VE_THUE varchar(255) not null primary key,
ID_NGUOI_DUNG INT,
THOI_GIAN_THUE date,
NGUOI_THUE varchar(255),
ID_PHIM varchar(255),
SO_TIEN varchar(255) not null,
THOI_GIAN_TRA datetime not null
 );

insert into BANG_THUE_PHIM (ID_VE_THUE,ID_NGUOI_DUNG,THOI_GIAN_THUE, NGUOI_THUE, ID_PHIM, SO_TIEN, THOI_GIAN_TRA ) values 
('L1', 1, '2023-1-20', 'Phuong', 'Nhà Bà Nữ', '100000', '2023-8-20 15:50'),
('L2', 2, '2023-1-20', 'Duan', 'Nhà Bà Nữ', '250000', '2023-8-20 13:33'),
('L3', 3, '2023-1-20', 'Chuong', 'Avatar', '3000000', '2023-8-20 14:20');

select * from `BANG_THUE_PHIM`;

select  HO_TEN, TEN_PHIM, THE_LOAI,  SO_TIEN, THOI_GIAN_THUE, THOI_GIAN_TRA
from BANG_NGUOI_DUNG
inner join BANG_THUE_PHIM on BANG_NGUOI_DUNG.ID_NGUOI_DUNG = BANG_THUE_PHIM.ID_NGUOI_DUNG
inner join BANG_PHIM on BANG_THUE_PHIM.ID_PHIM = BANG_PHIM.ID_PHIM
WHERE SO_TIEN <= 300000
AND THE_LOAI != 'Hành động';






