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

SELECT R.*,F.FUNDINGNAME,f.fundingtargetdate,f.fundingthumbnailimage FROM Reward R, FundingGoods F WHERE r.fundingcode = f.fundingcode and rewardCode=1;

UPDATE REWARD SET investmentReceiveCount = investmentReceiveCount+1 WHERE REWARDCODE=1;

select * from qna;
COMMIT;
SELECT * FROM (SELECT ROWNUM RN, A.* FROM
(SELECT FQ.*, U.USERNAME, U.USERPROFILEIMAGE FROM FUNDINGQUESTION FQ, USERS U WHERE U.USERID=FQ.USERID ORDER BY FUNDINGQUESTIONDATE DESC) A)
 WHERE RN BETWEEN 1 AND 5;
 SELECT Q.*,U.USERNAME,U.userProfileImage FROM QNA Q, USERS U WHERE Q.USERID=U.USERID AND q.qnanumber=1 ORDER BY Q.QNADATE DESC;
 SELECT Q.*,C.COMPANYNAME,C.COMPANYProfileImage FROM QNA Q, COMPANY C WHERE Q.COMPANYID=C.COMPANYID AND q.qnanumber=1 ORDER BY Q.QNADATE DESC; 
SELECT Q.*,A.ADMINNAME,A.ADMINProfileImage FROM QNA Q, ADMIN A WHERE Q.ADMINID=A.ADMINID AND q.qnanumber=1 ORDER BY Q.QNADATE DESC; 


SELECT U.*, (SELECT COUNT(*) FROM USERS U, NOTIFICATION N where U.USERID=N.USERID and n.notificationread=0) NOTIFICATIONCOUNT, 
    (SELECT COUNT(*) FROM USERS U, USERPICK UP WHERE U.USERID = UP.USERID) USERPICKCOUNT, USERGRADENAME 
        FROM USERS U, USERGRADE UG 
            WHERE U.USERGRADENO = UG.USERGRADENO;
            
            SELECT U.*, (SELECT COUNT(*) FROM USERS U, NOTIFICATION N where U.USERID=N.USERID and n.notificationread=0) NOTIFICATIONCOUNT, 
    (SELECT COUNT(*) FROM USERS U, USERPICK UP WHERE U.USERID = UP.USERID) USERPICKCOUNT, USERGRADENAME 
        FROM USERS U, USERGRADE UG 
            WHERE U.USERGRADENO = UG.USERGRADENO AND u.USERNAME LIKE '%'||'이'||'%';
SELECT U.*, (SELECT COUNT(*) FROM USERS U, NOTIFICATION N where U.USERID=N.USERID and n.notificationread=0) NOTIFICATIONCOUNT, 
    (SELECT COUNT(*) FROM USERS U, USERPICK UP WHERE U.USERID = UP.USERID) USERPICKCOUNT, USERGRADENAME   FROM USERS U, USERGRADE UG 
            WHERE U.USERGRADENO = UG.USERGRADENO AND USERID = 'bbb';

UPDATE USERS SET userBankName='신한은행', userAccountNumber='110-278-848987'
WHERE USERID = 'bbb'; 
COMMIT;
SELECT Q.*,WRITER FROM QNA Q, (SELECT WRITER WHERE Q.USERID=U.USERID AND q.qnanumber=1 ORDER BY Q.QNADATE DESC;

