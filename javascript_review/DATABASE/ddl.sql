

create table board (
	no			number primary key,
	poster		varchar2(20),	--작성자
	subject 	varchar2(100),	--제목
	contents 	varchar2(2000),	--내용
	lastpost	date,			--작성일자
	views		number(5),		--조회수
	filename	varchar2(50)	--파일명
);