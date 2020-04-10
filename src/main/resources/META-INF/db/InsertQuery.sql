
INSERT INTO Company VALUES ('com','11','pro','intro','mail','name','010','addr','de','은행','예금','번호',0,0,0);
INSERT INTO UserGrade VALUES (1,'NORMAL',0,1000000);
INSERT INTO UserGrade VALUES (2,'GOLD',1000001,100000000);
INSERT INTO UserGrade VALUES (3,'VIP',100000000,10000000000);
INSERT INTO Admin VALUES ('admin','11','adn');
INSERT INTO Users VALUES ('user','11','PRO','이','12','서울','ㅈ','ㅇ','기',0,NULL,SYSDATE,0,0,0,0,0,1);
INSERT INTO FundingGoods VALUES (FundingCode.nextval,1,'펀딩상품','펀딩상품설명','상품이미지썸','상품이미지상세','펀딩설명','펀딩은행명','예금주','계좌',1000,5000,99,'2020-05-09','2020-10-10',30,12,1,200,1,'admin','com');
INSERT INTO FundingNews VALUES (FundingNewsNumber.nextval,'새소식제목','새소식내용','2020-05-05','이미지',1,'com');
INSERT INTO Event VALUES (EVENTNUMBER.nextval,'제목','내용','이벤트이미지썸','이벤트이미지상세','이벤트상품이름','이벤트상품이미지',2,500,300,'2020-03-05','2020-04-05','2020-05-05','admin');
INSERT INTO Reward VALUES (REWARDCODE.nextval,'리워드이름',3,1,'리워드이미지','2020-03-02',5,12,2,1);
INSERT INTO Notification VALUES (NOTIFICATIONNUMBER.nextval,'알림내용','2020-06-07',0,'user','admin',1,'com');
INSERT INTO FundingGoodsDetail VALUES (FUNDINGGOODSDETAILNUMBER.nextval,2000000,10000,'2020-05-06','2020-09-09',1,'user');
INSERT INTO FundingQuestion VALUES (FUNDINGQUESTIONNUMBER.nextval,'문의내용','2020-04-09',0,'1','user');
INSERT INTO FundingQuestionReply VALUES (FUNDINGQUESTIONREPLYNUMBER.nextval,'답글내용','2020-04-09','1','admin');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용','2020-04-09',0,1,'user');
INSERT INTO FundingGoodsCommentsReply VALUES (FGCOMMENTSREPLYNUMBER.nextval,'답글내용','2020-04-09',1,'user');
INSERT INTO EventReply VALUES (EVENTREPLYNUMBER.nextval,'답글내용','2020-04-09',1,'user');
INSERT INTO EventPrize VALUES (EVENTPRIZENUMBER.nextval,'user',1);
INSERT INTO UserPick VALUES (USERPICKNUMBER.nextval,'user',1);
INSERT INTO Notice VALUES (NOTICENUMBER.nextval,'공지제목','공지내용','2020-04-09',200,'admin');

SELECT * FROM Notice;
SELECT * FROM UserPick;
SELECT * FROM EventPrize;
SELECT * FROM EventReply;
SELECT * FROM FundingGoodsCommentsReply;
SELECT * FROM FundingGoodsComments;
SELECT * FROM FundingQuestionReply;
SELECT * FROM FundingQuestion;
SELECT * FROM FundingGoodsDetail;
SELECT * FROM Notification;
SELECT * FROM Reward;
SELECT * FROM Event;
SELECT * FROM FundingNews;
SELECT * FROM FundingGoods;
SELECT * FROM Users;
SELECT * FROM Admin;
SELECT * FROM UserGrade;
SELECT * FROM Company;





