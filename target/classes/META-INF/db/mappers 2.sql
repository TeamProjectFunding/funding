--    CompanyId             VARCHAR2(100)  PRIMARY KEY,   -- 회사Id
--	CompanyPassword       VARCHAR2(100)  NOT NULL,  -- 회사비번
--	CompanyProfileImage   VARCHAR2(100)  NULL,     -- 회사프로필
--	CompanyIntroduction   VARCHAR2(1000) NULL,     -- 회사소개
--	CompanyEmail          VARCHAR2(100)  NULL,     -- 회사이메일
--	CompanyName           VARCHAR2(100)  NULL,     -- 회사이름
--	CompanyPhone          VARCHAR2(100)  NULL,     -- 회사전화번호
--	CompanyAddressBasic   VARCHAR2(1000) NULL,     -- 회사주소
--	CompanyAddressDetail  VARCHAR2(1000) NULL,     -- 회사주소상세
--	CompanyBankName       VARCHAR2(100)  NULL,     -- 회사은행명
--	CompanyBankDepositor  VARCHAR2(100)  NULL,     -- 회사은행예금주
--	CompanyAccountNumber  VARCHAR2(100)  NULL,     -- 회사계좌번호
--	CompanyAccountBalance NUMBER(12)     NULL,     -- 회사계좌잔액
--	CompanyInFunding      NUMBER(1)      NULL,     -- 회사에서투자중인지
--	CompanyOutSite        NUMBER(1)      NULL      -- 탈퇴여부


INSERT INTO COMPANY VALUES ('fff', '123', null, '앵무새 회사입니다.', 'wogur698@naver.com', 
    '크라운산도', '02-2254-5498', '서울시 양천구', '3층', null, null, null, null, 0, 1);

INSERT INTO COMPANY VALUES ('bbb', '123', null, '자동차 회사입니다.', 'wogur698@naver.com', 
    '삼성전자', '02-2254-5498', '서울시 양천구', '3층', null, null, null, null, 0, 1);
    
INSERT INTO COMPANY VALUES ('ccc', '123', null, '애견 회사입니다.', 'wogur698@naver.com', 
    'sk이노베이션', '02-2254-5498', '서울시 양천구', '3층', null, null, null, null, 0, 1);
    
INSERT INTO COMPANY VALUES ('ddd', '123', null, '프론트는 나처럼', 'wogur698@naver.com', 
    'sk하이닉스', '02-2254-5498', '서울시 양천구', '3층', null, null, null, null, 0, 1);
    
INSERT INTO COMPANY VALUES ('eee', '123', null, '앵무새 회사입니다.', 'wogur698@naver.com', 
    '유령회사', '02-2254-5498', '서울시 양천구', '3층', null, null, null, null, 0, 1);








--company.xml(신규순list, 도서등록, 도서보기(페이징), 책 갯수, 상세보기, 도서등록, 도서정보 수정)

--company.xml id=
SELECT * FROM (SELECT ROWNUM RN, A.* FROM 
    (SELECT * FROM COMPANY ORDER BY COMPANYNAME) A) 
        WHERE RN BETWEEN 2 AND 4;



--Book.xml id=mainList(신규도서순으로 list 가져오기)
SELECT * FROM BOOK ORDER BY BRDATE DESC;
--Book.xml id=bookList(paging처리해서 도서이름 순으로 list가져오기)
SELECT * FROM (SELECT ROWNUM RN, A.* FROM 
                (SELECT * FROM BOOK ORDER BY BTITLE) A)
    WHERE RN BETWEEN 2 AND 4;
--Book.xml id=cntBook (등록된 책 갯수가져오기)
SELECT COUNT(*) FROM BOOK;
--Book.xml id=getBook(책번호로 bnum으로 dto가져오기)
SELECT * FROM BOOK WHERE BNUM = 3;
--Book.xml id=registerBook (책 등록하기)
INSERT INTO BOOK VALUES
    (BOOK_SEQ.NEXTVAL, 'CSS의전설', '김얄루', SYSDATE, 'noImg.png', 'noImg.png', 'CSS만세');
--Book.xml id = modifyBook (책 정보 수정하기)
UPDATE BOOK SET BIMG1 = '101.jpg', BIMG2 = '102.jpg', BINFO='좋은spring책' WHERE BNUM = 1;



--member.xml(ID중복체크, 가입, ID로 DTO가져오기, 정보수정)


-- Member.xml id=idConfirm (해당 id가 몇개인지)
SELECT COUNT(*) FROM MEMBER WHERE MID='bbb';

-- Member.xml id=joinMember(회원가입)
INSERT INTO MEMBER VALUES
    ('aaa', '123', '홍길동', 'wogur698@naver.com', '03245', '서울시 종로구');
    
-- Member.xml id = getMember(mid로 dto 가져오기)
SELECT * FROM MEMBER WHERE MID = 'aaa';

-- Member.xml id = modifyMember(회원정보 수정)
UPDATE MEMBER SET MID = 'aaa', MPW = '123', MNAME = '임재혁', MPOST='65848', MADDR='서울시 양천구' WHERE MID = 'bbb';

commit;
