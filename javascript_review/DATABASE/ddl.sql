create table member (
	id			number primary key,
	pw			varchar2(25),
	gender		varchar2(5),
	reason		varchar2(200),
	mailyn		varchar2(5)
);

create table board (
	no			number primary key,
	poster		varchar2(20),	--작성자 (입력받는항목)
	subject 	varchar2(100),	--제목 (입력받는항목)
	contents 	varchar2(2000),	--내용 (입력받는항목)
	lastpost	date,			--작성일자
	views		number(5),		--조회수
	filename	varchar2(50)	--파일명 (입력받는항목)
);