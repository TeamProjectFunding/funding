-- DROP TABLE

DROP TABLE Notice;

DROP TABLE UserPick;

DROP TABLE EventPrize;

DROP TABLE EventReply;

DROP TABLE FundingGoodsCommentsReply;

DROP TABLE FundingGoodsComments;

DROP TABLE FundingQuestionReply;

DROP TABLE FundingQuestion;

DROP TABLE FundingGoodsDetail;

DROP TABLE Notification;

DROP TABLE Reward;

DROP TABLE Event;

DROP TABLE FundingNews;

DROP TABLE FundingGoods;

DROP TABLE Users;

DROP TABLE Admin;

DROP TABLE UserGrade;

DROP TABLE Company;

-- SEQUENCE DROP



DROP SEQUENCE NoticeNumber;

DROP SEQUENCE UserPickNumber;

DROP SEQUENCE EventPrizeNumber;

DROP SEQUENCE EventReplyNumber;

DROP SEQUENCE FGCommentsReplyNumber;

DROP SEQUENCE FGCommentsNumber;

DROP SEQUENCE FundingQuestionReplyNumber;

DROP SEQUENCE FundingQuestionNumber;

DROP SEQUENCE FundingGoodsDetailNumber;

DROP SEQUENCE NotificationNumber;

DROP SEQUENCE RewardCode;

DROP SEQUENCE EventNumber;

DROP SEQUENCE FundingNewsNumber;

DROP SEQUENCE FundingCode;


-- CREATE SEQUENCE
CREATE SEQUENCE NoticeNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE UserPickNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE EventPrizeNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE EventReplyNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;
    
CREATE SEQUENCE FGCommentsReplyNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE FGCommentsNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE FundingQuestionReplyNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE FundingQuestionNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE FundingGoodsDetailNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE NotificationNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE RewardCode
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE EventNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE FundingNewsNumber
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;

CREATE SEQUENCE FundingCode
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;


CREATE TABLE Company (
	CompanyId             VARCHAR2(100)  PRIMARY KEY, -- 회사Id
	CompanyPassword       VARCHAR2(100)  NOT NULL,     -- 회사비번
	CompanyProfileImage   VARCHAR2(100)  NULL,     -- 회사프로필
	CompanyIntroduction   VARCHAR2(1000) NULL,     -- 회사소개
	CompanyEmail          VARCHAR2(100)  NULL,     -- 회사이메일
	CompanyName           VARCHAR2(100)  NULL,     -- 회사이름
	CompanyPhone          VARCHAR2(100)  NULL,     -- 회사전화번호
	CompanyAddressBasic   VARCHAR2(1000) NULL,     -- 회사주소
	CompanyAddressDetail  VARCHAR2(1000) NULL,     -- 회사주소상세
	CompanyBankName       VARCHAR2(100)  NULL,     -- 회사은행명
	CompanyBankDepositor  VARCHAR2(100)  NULL,     -- 회사은행예금주
	CompanyAccountNumber  VARCHAR2(100)  NULL,     -- 회사계좌번호
	CompanyAccountBalance NUMBER(12)     NULL,     -- 회사계좌잔액
	CompanyInFunding      NUMBER(1)      NULL,     -- 회사에서투자중인지
	CompanyOutSite        NUMBER(1)      NULL      -- 탈퇴여부
);

CREATE TABLE UserGrade (
	UserGradeNo                NUMBER(1)  PRIMARY KEY, -- 등급번호
	UserGradeName              VARCHAR2(30) NOT NULL,     -- 등급명
	UserGradeLowFundingAmount  NUMBER(12) NOT NULL,     -- 하한누적투자금액
	UserGradeHighFundingAmount NUMBER(12) NOT NULL      -- 상한누적투자금액
);

CREATE TABLE Admin (
	AdminId       VARCHAR2(100) PRIMARY KEY, -- 관리자ID
	AdminPassword VARCHAR2(100) NOT NULL,     -- 관리자비번
	AdminName     VARCHAR2(100) NOT NULL      -- 관리자이름
);



CREATE TABLE Users (
	UserId              VARCHAR2(100)  PRIMARY KEY, -- 유저ID
	UserPassword        VARCHAR2(100)  NOT NULL,     -- 유저비밀번호
	UserProfileImage    VARCHAR2(100)  NULL,     -- 유저프로필
	UserName            VARCHAR2(100)  NOT NULL,     -- 유저이름
	UserPhone           VARCHAR2(100)  NULL,     -- 유저전화번호
	UserAddressBasic    VARCHAR2(1000) NULL,     -- 유저주소
	UserAddressDetail   VARCHAR2(1000) NULL,     -- 유저주소상세
	UserBankName        VARCHAR2(100)  NULL,     -- 유저은행명
	UserAccountNumber   VARCHAR2(100)  NULL,     -- 유저계좌번호
	UserAccountBalance  NUMBER(12)   NULL,     -- 유저계좌잔액
	UserBirthday        DATE          NULL,     -- 유저생일
	UserJoinDate        DATE          DEFAULT SYSDATE,     -- 유저가입일
	UserAdPhone         NUMBER(1)    NULL,     -- 유저핸드폰광고
	UserAdEmail         NUMBER(1)    NULL,     -- 유저이메일광고
	UserInvermentAmount NUMBER(12)   NULL,     -- 유저누적투자금액
	UserInterestAmount  NUMBER(12)   NULL,     -- 유저누적이자금액
	UserOutSite         NUMBER(1)    NULL,     -- 탈퇴여부
	UserGradeNo         NUMBER(1)    REFERENCES UserGrade(UserGradeNo)      -- 등급번호
);

CREATE TABLE FundingGoods (
	FundingCode                 NUMBER(12)    PRIMARY KEY, -- 펀딩상품코드
	FundingCategory             NUMBER(1)    NOT NULL,     -- 펀딩상품카테고리
	FundingName                 VARCHAR2(1000) NOT NULL,     -- 펀딩상품명
	FundingDescription          VARCHAR2(4000) NOT NULL,     -- 펀딩상품설명
	FundingThumbnailImage       VARCHAR2(100)  NOT NULL,     -- 펀딩상품썸네일이미지
	FundingDetailImage          VARCHAR2(100)  NOT NULL,     -- 펀딩상품디테일이미지
	FundingExplanationFile      VARCHAR2(100)  NOT NULL,     -- 펀딩설명파일
	FundingBankName             VARCHAR2(100)  NULL,     -- 펀딩은행명
	FundingBankDepositor        VARCHAR2(100)  NULL,     -- 펀딩은행예금주
	FundingAccountNumber        VARCHAR2(100)  NULL,     -- 펀딩계좌번호
	FundingAccountBalance       NUMBER(12)   NULL,     -- 펀딩계좌잔액
	FundingTargetAmount         NUMBER(12)   NULL,     -- 펀딩목표금액
	FundingTargetRate           NUMBER(12)   NULL,     -- 펀딩목표달성율
	FundingTargetDate           DATE          NULL,     -- 펀딩목표달성일(결제일)
	FundingRewardDeliveryDate   DATE          NULL,     -- 펀딩리워드배송일
	FundingRewardAddDonation    NUMBER(12)   NULL,     -- 펀딩리워드추가후원금
	FundingInvestmentProfitRate NUMBER(3)    NULL,     -- 투자이익비율
	FundingInvestmentPeriod     NUMBER(2)    NULL,     -- 투자기간(월)
	FundingSuccessOrFailure     NUMBER(1)    NULL,     -- 펀딩성공여부
	FundingPeopleCount          NUMBER(12)   NULL,     -- 펀딩한 사람 수
	FundingAdminPermit          NUMBER(1)    NULL,     -- 관리자승인여부
	AdminId                     VARCHAR2(100)  REFERENCES Admin(AdminId),     -- 관리자ID
	CompanyId                   VARCHAR2(100) REFERENCES Company(CompanyId)      -- 회사Id
);

CREATE TABLE FundingNews (
	FundingNewsNumber     NUMBER(12)     PRIMARY KEY, -- 새소식번호
	FundingNewsTitle   VARCHAR2(1000) NULL,     -- 새소식제목
	FundingNewsContent VARCHAR2(4000) NULL,     -- 새소식내용
	FundingNewsDate    DATE           DEFAULT SYSDATE,     -- 새소식작성일
	FundingNewsImage   VARCHAR2(100)  NULL,     -- 새소식이미지
	FundingCode        NUMBER(12)     REFERENCES FundingGoods(FundingCode),     -- 펀딩상품코드
	CompanyId          VARCHAR2(100)  REFERENCES Company(CompanyId)      -- 회사Id
);


CREATE TABLE Event (
	EventNumber              NUMBER(12)   PRIMARY KEY, -- 이벤트번호
	EventTilte               VARCHAR2(1000) NULL,     -- 이벤트제목
	EventContent             VARCHAR2(4000) NULL,     -- 이벤트내용
	EventThumbnailImage      VARCHAR2(100)  NULL,     -- 이벤트썸네일이미지
	EventDetailImage         VARCHAR2(100)  NULL,     -- 이벤트상세이미지
	EventProductName         VARCHAR2(100)  NULL,     -- 이벤트상품이름
	EventProductImage        VARCHAR2(100)  NULL,     -- 이벤트상품이미지
	EventPrizeCount          NUMBER(12)   NULL,     -- 이벤트당첨사람수
	EventParticipateCount    NUMBER(12)   NULL,     -- 이벤트참여사람수
	EventHit                 NUMBER(12)   NULL,     -- 이벤트조회수
	EventStartDate           DATE          DEFAULT SYSDATE,     -- 이벤트시작일
	EventEndDate             DATE          NULL,     -- 이벤트종료일(추첨일)
	EventProductDeliveryDate DATE          NULL,     -- 이벤트상품배송일
	AdminId                  VARCHAR2(100)  REFERENCES Admin(AdminId)      -- 관리자ID
);


CREATE TABLE Reward (
	RewardCode                NUMBER(12)  PRIMARY KEY, -- 리워드 코드
	RewardName                VARCHAR2(100) NULL,     -- 리워드 이름
	RewardCondition           NUMBER(12)  NULL,     -- 리워드 조건
	RewardGrade               NUMBER(1)   NULL,     -- 리워드 등급
	RewardImage               VARCHAR2(100) NULL,     -- 리워드 이미지
	FundingRewardDeliveryDate DATE         NULL,     -- 펀딩리워드배송일
	RewardInterst             NUMBER(12)  NULL,     -- 리워드 이자
	FundingInvestmentPeriod   NUMBER(2)   NULL,     -- 투자기간(월)
	InvestmentReceiveCount    NUMBER(2)   NULL,     -- 이자 받은 횟수
	FundingCode               NUMBER(12)   REFERENCES FundingGoods(FundingCode)      -- 펀딩상품코드
);


CREATE TABLE Notification (
	NotificationNumber    NUMBER(12)   PRIMARY KEY, -- 알림번호
	NotificationContent VARCHAR2(100)  NULL,     -- 알림내용
	NotificationDate    DATE          NULL,     -- 유지기간
	NotificationRead    NUMBER(1)    NULL,     -- 알림 읽은지 여부
	UserId              VARCHAR2(100)  REFERENCES Users(UserId),     -- 유저ID
	AdminId             VARCHAR2(100)  REFERENCES Admin(AdminId),     -- 관리자ID
	CompanyId           VARCHAR2(100) REFERENCES Company(CompanyId)      -- 회사Id
);

CREATE TABLE FundingGoodsDetail (
	FundingGoodsDetailNumber      NUMBER(12)  PRIMARY KEY, -- 순차번호
	FundingAmount     NUMBER(12)  NULL,     -- 투자금액
	FundingDate       DATE         DEFAULT SYSDATE,     -- 투자날짜
	FundingTargetDate DATE         NULL,     -- 펀딩목표달성일(결제일)
	FundingCode       NUMBER(12)   REFERENCES FundingGoods(FundingCode),     -- 펀딩상품코드
	UserId            VARCHAR2(100) REFERENCES Users(UserId)      -- 유저ID
);


CREATE TABLE FundingQuestion (
	FundingQuestionNumber        NUMBER(12)   PRIMARY KEY, -- 문의번호
	FundingQuestionContent    VARCHAR2(4000) NULL,     -- 문의내용
	FundingQuestionDate       DATE          DEFAULT SYSDATE,     -- 문의날짜
	FundingQuestionExistReply NUMBER(1)    NULL,     -- 답급여부
	FundingCode               NUMBER(12)    REFERENCES FundingGoods(FundingCode),     -- 펀딩상품코드
	UserId                    VARCHAR2(100)  REFERENCES Users(UserId)      -- 유저ID
);


CREATE TABLE FundingQuestionReply (
	FundingQuestionReplyNumber  NUMBER(12)   PRIMARY KEY, -- 문의답글번호
	FundingQuestionReplyContent VARCHAR2(4000) NULL,     -- 문의답글내용
	FundingQuestionReplyDate    DATE          DEFAULT SYSDATE,     -- 문의답글날짜
	FundingQuestionNumber       NUMBER(12)   REFERENCES FundingQuestion(FundingQuestionNumber),     -- 문의번호
	AdminId                     VARCHAR2(100)  REFERENCES Admin(AdminId)      -- 관리자ID
);


CREATE TABLE FundingGoodsComments (
	FGCommentsNumber        NUMBER(12)   PRIMARY KEY, -- 코멘트번호
	FGCommentsContent    VARCHAR2(4000) NULL,     -- 코멘트내용
    FGCommentsDate		 DATE         DEFAULT SYSDATE,        --코멘트작성일
	FGcommentsExistReply NUMBER(1)    NULL,     -- 코멘트 댓글 존재여부
	FundingCode          NUMBER(12)    REFERENCES FundingGoods(FundingCode),     -- 펀딩상품코드
	UserId               VARCHAR2(100)  REFERENCES Users(UserId)      -- 유저ID
);


CREATE TABLE FundingGoodsCommentsReply (
	FGCommentsReplyNumber     NUMBER(12)   PRIMARY KEY, -- 코멘트답글번호
	FGCommentsReplyContent VARCHAR2(4000) NULL,     -- 코멘트답글내용
    FGCommentsReplyDate    DATE          DEFAULT SYSDATE, --코멘트답글작성일
	FGCommentsNumber          NUMBER(12)   REFERENCES FundingGoodsComments(FGCommentsNumber),     -- 코멘트번호
    UserId               VARCHAR2(100)  REFERENCES Users(UserId)      -- 유저ID
);


CREATE TABLE EventReply (
	EventReplyNumber     NUMBER(12)   PRIMARY KEY, -- 이벤트답글번호
	EventReplyContent VARCHAR2(4000) NULL,     -- 이벤트답글내용
	EventReplyDate    DATE          DEFAULT SYSDATE,     -- 이벤트작성일
	EventNumber          NUMBER(12)    REFERENCES Event(EventNumber),     -- 이벤트번호
	UserId            VARCHAR2(100)  REFERENCES Users(UserId)      -- 유저ID
);


CREATE TABLE EventPrize (
	EventPrizeNumber NUMBER(12)  PRIMARY KEY, -- 당첨순차번호
	UserId        VARCHAR2(100)  REFERENCES Users(UserId),     -- 유저ID
	EventNumber      NUMBER(12) REFERENCES Event(EventNumber)      -- 이벤트번호
);


CREATE TABLE UserPick (
	UserPickNumber     NUMBER(12)  PRIMARY KEY, -- 픽번호
	UserId      VARCHAR2(100) REFERENCES Users(UserId),     -- 유저ID
	FundingCode NUMBER(12)   REFERENCES FundingGoods(FundingCode)      -- 펀딩상품코드
);


CREATE TABLE Notice (
	NoticeNumber     NUMBER(12)   PRIMARY KEY, -- 공지번호
	NoticeTilte   VARCHAR2(1000) NULL,     -- 공지제목
	NoticeContent VARCHAR2(4000) NULL,     -- 공지내용
	NoticeDate    DATE          DEFAULT SYSDATE,     -- 공지날짜
	NoticeHit     NUMBER(12)   NULL,     -- 공지조회수
	AdminId       VARCHAR2(100)  REFERENCES Admin(AdminId)      -- 관리자ID
);

select * from tab;


