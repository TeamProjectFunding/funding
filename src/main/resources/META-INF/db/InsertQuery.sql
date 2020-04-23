
INSERT INTO Company VALUES ('com','11','pro','intro',SYSDATE,'name','010','addr','de','은행','예금','번호',0,0,0,NULL);
INSERT INTO Company VALUES ('A','11','pro','intro',SYSDATE,'name','010','addr','de','은행','예금','번호',0,0,0,NULL);
INSERT INTO Company VALUES ('com2','11','pro','intro',SYSDATE,'Aname','010','addr','de','은행','예금','번호',0,0,0,NULL);
INSERT INTO Company VALUES ('com3','11','pro','intro',SYSDATE,'Aname','010','addr','de','은행','예금','번호',0,0,0,NULL);
INSERT INTO Company VALUES ('com4','11','pro4','intro4',SYSDATE,'Aname4','010','addr','de','은행','예금','번호',0,0,0,NULL);
INSERT INTO UserGrade VALUES (1,'NORMAL',0,1000000);
INSERT INTO UserGrade VALUES (2,'GOLD',1000001,100000000);
INSERT INTO UserGrade VALUES (3,'VIP',100000001,2000000000);
INSERT INTO Admin VALUES ('admin','11','adn','ADMINIMAGE');
INSERT INTO Users VALUES ('user','11','PRO','이','12','서울','ㅈ','ㅇ','기',0,NULL,SYSDATE,0,0,0,0,0,1);
INSERT INTO Users VALUES ('user2','11','PRO2','이2','12','서울','ㅈ','ㅇ','기',0,NULL,SYSDATE,0,0,0,0,1,1);
INSERT INTO Users VALUES ('user3','11','PRO3','이3','12','서울','ㅈ','ㅇ','기',0,NULL,SYSDATE,0,0,0,0,0,1);
INSERT INTO Users VALUES ('user4','123','profile.jpg','박지영','010-4898-8848','서울시 목동','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
    
INSERT INTO Users VALUES ('user5','123','profile.jpg','지단','010-4898-8848','서울시 동대문','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
    
INSERT INTO Users VALUES ('user6','123','profile.jpg','오유석','010-4898-8848','일산시','유석빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 1);    

INSERT INTO Users VALUES ('user7','123','profile.jpg','제라드','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 1);

INSERT INTO Users VALUES ('user8','123','profile.jpg','손흥민','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);

INSERT INTO Users VALUES ('user9','123','profile.jpg','차범근','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
    
INSERT INTO Users VALUES ('user10','123','profile.jpg','김병지','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 1);    
    
INSERT INTO Users VALUES ('user11','123','profile.jpg','전일환','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
INSERT INTO Users VALUES ('user12','123','profile.jpg','아이유','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);    
INSERT INTO Users VALUES ('kha0213@naver.com','123','profile.jpg','아이유','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
INSERT INTO Users VALUES ('kyl123hanmir@hanmir.com','123','profile.jpg','아이유','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
INSERT INTO Company VALUES ('kyl123hanmir@hanmir.com','11','pro','intro',SYSDATE,'name','010','addr','de','은행','예금','번호',0,0,0,NULL);
INSERT INTO FundingGoods VALUES (FundingCode.nextval,1,'펀딩상품','펀딩상품설명','fundingProduct_01.jpeg','fundingProduct_01.jpeg','fundingExplanationFile.png','펀딩은행명','예금주','계좌',1000,5000,99,SYSDATE,'2020-05-09','2020-10-10',30,12,1,200,1,'admin','com');
INSERT INTO FundingGoods VALUES (FundingCode.nextval,0,'펀딩상품','펀딩상품설명','fundingProduct_02.jpeg','fundingProduct_02.jpeg','fundingExplanationFile.png','펀딩은행명','예금주','계좌',1000,5000,99,SYSDATE,'2020-05-09','2020-10-10',30,12,1,200,1,'admin','com2');
INSERT INTO FundingGoods VALUES (FundingCode.nextval,0,'펀딩상품','펀딩상품설명','fundingProduct_03.jpeg','fundingProduct_03.jpeg','fundingExplanationFile.png','펀딩은행명','예금주','계좌',1000,5000,99,SYSDATE,'2020-05-09','2020-10-10',30,12,1,200,1,'admin','com3');
INSERT INTO FundingGoods VALUES (FundingCode.nextval,0,'펀딩상품','펀딩상품설명','fundingProduct_04.jpeg','fundingProduct_04.jpeg','fundingExplanationFile.png','펀딩은행명','예금주','계좌',1000,5000,99,SYSDATE,'2020-05-10','2020-10-20',30,12,1,200,1,'admin','com4');
INSERT INTO FundingGoods VALUES (FundingCode.nextval,0,'펀딩상품','펀딩상품설명','fundingProduct_04.jpeg','fundingProduct_01.jpeg','fundingExplanationFile.png','펀딩은행명','예금주','계좌',1000,5000,99,SYSDATE,'2020-04-17','2020-10-20',30,12,1,200,1,'admin','com4');
INSERT INTO FundingNews VALUES (FundingNewsNumber.nextval,'새소식제목','새소식내용','2020-05-05','이미지',1,'com');
INSERT INTO Event VALUES (EVENTNUMBER.nextval,'제목','내용','이벤트이미지썸','이벤트이미지상세','이벤트상품이름','이벤트상품이미지',2,500,300,'2020-03-05','2020-04-05','2020-05-05','admin');
INSERT INTO Reward VALUES (REWARDCODE.nextval,'리워드이름',3,1,'리워드이미지','2020-03-02',5,12,2,null,1);
INSERT INTO Reward VALUES (REWARDCODE.nextval,'리워드(투자)',0,1,'리워드이미지',null,5,12,0,null,2);
INSERT INTO Notification VALUES (NOTIFICATIONNUMBER.nextval,'알림내용','2020-06-07',0,'admin',null,'user');
INSERT INTO FundingGoodsDetail VALUES (FUNDINGGOODSDETAILNUMBER.nextval,2000000,10000,'2020-05-06','2020-09-09',1,'user');
INSERT INTO FundingGoodsDetail VALUES (FUNDINGGOODSDETAILNUMBER.nextval,200000,1000,SYSDATE,'2020-09-09',1,'user2');
INSERT INTO FundingGoodsDetail VALUES (FUNDINGGOODSDETAILNUMBER.nextval,100000,0,SYSDATE,'2020-09-09',1,'user3');
INSERT INTO FundingQuestion VALUES (FUNDINGQUESTIONNUMBER.nextval,'문의타이틀','문의내용','2020-04-09',0,'1','user');
INSERT INTO FundingQuestionReply VALUES (FUNDINGQUESTIONREPLYNUMBER.nextval,'답글내용','2020-04-09','1','admin');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용','2020-04-09',0,1,'user');
INSERT INTO FundingGoodsCommentsReply VALUES (FGCOMMENTSREPLYNUMBER.nextval,'답글내용','2020-04-09',1,'user');
INSERT INTO EventReply VALUES (EVENTREPLYNUMBER.nextval,'답글내용','2020-04-09',1,'user');
INSERT INTO EventPrize VALUES (EVENTPRIZENUMBER.nextval,'user',1);
INSERT INTO UserPick VALUES (USERPICKNUMBER.nextval,'user',1);
INSERT INTO Notice VALUES (NOTICENUMBER.nextval,'공지제목','공지내용','2020-04-09',200,'admin');
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA제목','QnA내용',0,1,QnANumber.currval,0,0,0,0,sysdate,'user',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA답제목','QnA답내용',0,3,1,1,1,0,0,sysdate,null,null,'admin');

commit;