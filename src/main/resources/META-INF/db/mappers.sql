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






SELECT U.*, (SELECT COUNT(*) FROM USERS U, NOTIFICATION N where U.USERID=N.USERID) NOTIFICATIONCOUNT, 
    (SELECT COUNT(*) FROM USERS U, USERPICK UP WHERE U.USERID = UP.USERID) USERPICKCOUNT, USERGRADENAME 
        FROM USERS U, USERGRADE UG 
            WHERE U.USERGRADENO = UG.USERGRADENO; 


--company.xml(신규순list, 도서등록, 도서보기(페이징), 책 갯수, 상세보기, 도서등록, 도서정보 수정)

--company.xml id=
SELECT * FROM (SELECT ROWNUM RN, A.* FROM 
    (SELECT * FROM COMPANY ORDER BY COMPANYNAME) A) 
        WHERE RN BETWEEN 2 AND 4;


