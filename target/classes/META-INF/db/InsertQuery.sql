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


INSERT INTO Company VALUES ('com','11','pro','intro','mail','name','010','addr','de','은행','예금','번호',0,0,0);
INSERT INTO UserGrade VALUES (1,'NORMAL',0,1000000);
INSERT INTO UserGrade VALUES (2,'GOLD',1000001,100000000);
INSERT INTO UserGrade VALUES (3,'VIP',100000000,10000000000);
INSERT INTO Admin VALUES ('admin','11','adn');
INSERT INTO Users VALUES ('user','11','PRO','이','12','서울','ㅈ','ㅇ','기',0,NULL,SYSDATE,0,0,0,0,0,1);
--INSERT INTO FundingGoods VALUES (FUNDINGCODE.nextval,1,'1',null.null,null)

rollback;
INSERT INTO Notice VALUES (noticenumber.nextval, '공지','내용',SYSDATE,0,'ADMIN');

