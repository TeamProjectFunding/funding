
-- 회사등록
INSERT INTO COMPANY VALUES ('com@naver.com', '123', 'company.png', '영롱한 스타트업입니다.', SYSDATE, '영롱회사', '02-2066-5849', 
    '서울시 용산구', '대장빌딩 301호', null, null, null, 0, 0, 0,'191-38-6534-2');
INSERT INTO COMPANY VALUES ('com1@naver.com', '123', 'company2.png', '몽롱한 스타트업입니다.', SYSDATE, '몽롱회사', '02-2066-5849', 
    '서울시 강남구', '강남빌딩 301호', null, null, null, 0, 0, 0,'172-28-7831-2');
INSERT INTO COMPANY VALUES ('com2@google.com', '123', 'company3.png', '상큼한 스타트업입니다.', SYSDATE, '상큼회사', '02-2066-5849', 
    '서울시 성북구', '성북빌딩 301호', null, null, null, 0, 0, 0,'168-18-5712-2');
INSERT INTO COMPANY VALUES ('com3@naver.com', '123', 'company.png', '달콤한 스타트업입니다.', SYSDATE, '달콤회사', '02-2066-5849', 
    '서울시 강북구', '강북빌딩 301호', null, null, null, 0, 0, 0,'158-18-4464-2');
INSERT INTO COMPANY VALUES ('com4@naver.com', '123', 'company2.png', '매콤한 스타트업입니다.', SYSDATE, '매콤회사', '02-2066-5849', 
    '서울시 강서구', '강서빌딩 301호', null, null, null, 0, 0, 0,'109-18-7734-2');
INSERT INTO COMPANY VALUES ('com5@google.com', '123', 'company3.png', '시큼한 스타트업입니다.', SYSDATE, '시큼회사', '02-2066-5849', 
    '서울시 중구', '중구빌딩 301호', null, null, null, 0, 0, 0,'184-18-8834-2');
INSERT INTO COMPANY VALUES ('com6@google.com', '123', 'company.png', '까리한 스타트업입니다.', SYSDATE, '까리회사', '02-2066-5849', 
    '서울시 중구', '중구빌딩 301호', null, null, null, 0, 0, 0,'184-18-8834-2');    
INSERT INTO COMPANY VALUES ('kyl123hanmir@hanmir.com', '123', 'company2.png', '롱롱이 회사입니다.', SYSDATE, '까리회사', '02-1234-5849', 
    '서울시 중구', '중구빌딩 301호', null, null, null, 0, 0, 0,'184-18-8834-2');    

-- 유저 등급 설정
INSERT INTO UserGrade VALUES (1,'NORMAL',0,1000000);
INSERT INTO UserGrade VALUES (2,'GOLD',1000001,100000000);
INSERT INTO UserGrade VALUES (3,'VIP',100000000,10000000000);


--관리자 등록
INSERT INTO Admin VALUES ('admin', '123', 'ADMIN', 'ADMINIMAGE');


-- 유저 등록
INSERT INTO Users VALUES ('user1@naver.com','123',null,'박지영','010-4898-8848','서울시 목동','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
    
INSERT INTO Users VALUES ('user2@naver.com','123','park.jpg','지단','010-4898-8848','서울시 동대문','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
    
INSERT INTO Users VALUES ('user3@google.com','123','kim.jpg','오유석','010-4898-8848','일산시','유석빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 2);    

INSERT INTO Users VALUES ('user4@google.com','123','lim.jpg','제라드','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 2);

INSERT INTO Users VALUES ('user5@naver.com','123','park.jpg','손흥민','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 3);

INSERT INTO Users VALUES ('user6@google.com','123','son.jpg','차범근','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 3);
    
INSERT INTO Users VALUES ('user7@naver.com','123','song.jpg','김병지','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 1);   
    
INSERT INTO Users VALUES ('wogur698@naver.com','123','lim.jpg','임재혁','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 3);
INSERT INTO Users VALUES ('kha0213@naver.com','123','park.jpg','김영롱','010-2344-8628','서울시 송파구','영롱빌딩 302호', 
    null, null, 1100000, NULL, SYSDATE, 1, 1, 0, 0, 0, 3);

--펀딩상품    
    -- 승인 대기중인 (투자 / 리워드)
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '대기투자상품1', '투자상품입니다.', 'fundingProduct_01.jpeg', 'fundingProduct_01.jpeg', 'fundingDescription.png', null,
        null, null, 0, 12000000, 0, SYSDATE, '2020-04-20', null, 7, 2, 0, 0, 0, 'admin', 'com@naver.com');
        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '대기투자상품2', '투자상품입니다.', 'fundingProduct_02.jpeg', 'fundingProduct_02.jpeg', 'fundingDescription.png', null,
        null, null, 0, 15000000, 0, SYSDATE, '2020-04-22', null, 7, 2, 0, 0, 0, 'admin', 'com6@google.com');



INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '대기투자상품3', '투자상품입니다.', 'fundingProduct_03.jpeg', 'fundingProduct_03.jpeg', 'fundingDescription.png', null,
        null, null, 0, 3000000, 0, SYSDATE, '2021-06-10', null, 7, 2, 0, 0, 0, 'admin', 'com5@google.com');        
        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '대기리워드상품1', '리워드상품입니다.', 'rock.jpg', 'rock.jpg', 'fundingDescription.png', null,

        null, null, 0, 4000000, 0, SYSDATE, '2020-05-05', '2020-06-05', 0, 0, 0, 0, 0, 'admin', 'kyl123hanmir@hanmir.com');
        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '대기리워드상품2', '리워드상품입니다.', 'support.jpg', 'support.jpg', 'fundingDescription.png', null,
        null, null, 0, 5000000, 0, SYSDATE, '2020-06-25', '2020-06-28', 0, 0, 0, 0, 0, 'admin', 'com1@naver.com');        
    
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품2', '투자상품2입니다.', 'fundingProduct_03.jpeg', 'fundingProduct_03.jpeg', 'fundingDescription.png', '신한은행',
        'masters계좌1', '110-278-849991', 500000, 1000000, 50, '2020-03-20', '2020-05-25', null, 10, 2, 0, 23, 1, 'admin', 'com1@naver.com'); 
        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '리워드상품1', '리워드상품1입니다.', 'support.jpg', 'support.jpg', 'fundingDescription.png', '신한은행',
        'masters계좌2', '110-278-844190', 600000, 2000000, 30, '2020-04-05', '2020-05-25', '2020-05-28', 0, 0, 0, 50, 1, 'admin', 'com2@google.com');         

INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '리워드상품2', '리워드상품2입니다.', 'fresh_juice.jpg', 'fresh_juice.jpg', 'fundingDescription.png', '신한은행',
        'masters계좌3', '110-278-159848', 1800000, 3000000, 60, '2020-03-21', '2020-05-25', '2020-05-29', 0, 0, 0, 21, 1, 'admin', 'com4@naver.com'); 

INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품3', '투자상품3입니다.', 'fundingProduct_03.jpeg', 'fundingProduct_03.jpeg', 'fundingDescription.png', '신한은행',
        'masters계좌4', '110-278-448585', 200000, 2000000, 10, '2020-04-04', '2020-05-25', null, 7, 12, 0, 9, 1, 'admin', 'com5@google.com');


        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '대기리워드상품2', '리워드상품입니다.', 'support.jpg', 'support.jpg', 'fundingDescription.png', null,
        null, null, 0, 5000000, 0, SYSDATE, '2020-06-25', '2020-06-28', 0, 2, 0, 0, 0, 'admin', 'com1@naver.com');        
    
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품2', '투자상품2입니다.', 'fundingProduct_03.jpeg', 'fundingProduct_03.jpeg', 'fundingDescription.png', '신한은행',
        'masters계좌1', '110-278-849991', 500000, 1000000, 50, '2020-03-20', '2020-05-25', null, 10, 12, 1, 23, 1, 'admin', 'com1@naver.com'); 
        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '리워드상품1', '리워드상품1입니다.', 'support.jpg', 'support.jpg', 'fundingDescription.png', '신한은행',
        'masters계좌2', '110-278-844190', 600000, 2000000, 30, '2020-04-05', '2020-05-25', '2020-05-28', 0, 0, 1, 50, 1, 'admin', 'com2@google.com');         

INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '리워드상품2', '리워드상품2입니다.', 'fresh_juice.jpg', 'fresh_juice.jpg', 'fundingDescription.png', '신한은행',
        'masters계좌3', '110-278-159848', 1800000, 3000000, 60, '2020-03-21', '2020-05-25', '2020-05-29', 0, 0, 1, 21, 1, 'admin', 'com6@google.com'); 

INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품3', '투자상품3입니다.', 'fundingProduct_03.jpeg', 'fundingProduct_03.jpeg', 'fundingDescription.png', '신한은행',
        'masters계좌4', '110-278-448585', 200000, 2000000, 10, '2020-04-04', '2020-05-25', null, 7, 12, 1, 9, 1, 'admin', 'com5@google.com');
        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품4', '투자상품4입니다.', 'fundingProduct_03.jpeg', 'fundingProduct_03.jpeg', 'fundingDescription.png', '신한은행',
        'masters계좌1', '110-278-849991', 100000, 1000000, 10, '2020-03-20', '2021-03-20', null, 4, 12, 0, 23, 1, 'admin', 'com3@naver.com');
        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품5', '투자상품5입니다.', 'fundingProduct_03.jpeg', 'fundingProduct_03.jpeg', 'fundingDescription.png', '신한은행',
        'masters계좌1', '110-278-849991', 500000, 1000000, 50, '2020-04-01', '2021-04-01', null, 3, 12, 0, 23, 1, 'admin', 'com2@google.com');        

-- Q&A 더미
INSERT INTO QnA VALUES (QnANumber.nextval,'QNA질문이오','QnA내용',0,0,QnANumber.currval,0,0,0,1,sysdate,'user1@naver.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QNA질문이오','QnA내용',0,0,QnANumber.currval,0,0,0,0,sysdate,'user2@naver.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QNA질문이오','QnA내용',0,0,QnANumber.currval,0,0,0,0,sysdate,'user3@google.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QNA질문이오','QnA내용',0,0,QnANumber.currval,0,0,0,0,sysdate,'user4@google.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QNA질문이오','QnA내용',0,0,QnANumber.currval,0,0,0,0,sysdate,'user5@naver.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QNA질문이오','QnA내용',0,0,QnANumber.currval,0,0,0,0,sysdate,'user6@google.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QNA질문이오','QnA내용',0,0,QnANumber.currval,0,0,0,0,sysdate,'user7@naver.com',null,null);

INSERT INTO QnA VALUES (QnANumber.nextval,'QnA질문이다','QnA질문내용',0,1,QnANumber.currval,0,0,0,1,sysdate,null,'com@naver.com',null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA질문이다','QnA질문내용',0,1,QnANumber.currval,0,0,0,1,sysdate,null,'com1@naver.com',null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA질문이다','QnA질문내용',0,1,QnANumber.currval,0,0,0,1,sysdate,null,'com2@google.com',null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA질문이다','QnA질문내용',0,1,QnANumber.currval,0,0,0,0,sysdate,null,'com3@naver.com',null);
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA질문이다','QnA질문내용',0,1,QnANumber.currval,0,0,0,0,sysdate,null,'com4@naver.com',null);

INSERT INTO QnA VALUES (QnANumber.nextval,'QnA답이오','QnA답내용',0,2,8,1,1,0,0,sysdate,null, null,'admin');
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA답이오','QnA답내용',0,2,9,1,1,0,0,sysdate,null, null,'admin');
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA답이오','QnA답내용',0,2,10,1,1,0,0,sysdate,null, null,'admin');
INSERT INTO QnA VALUES (QnANumber.nextval,'QnA답이오','QnA답내용',0,2,11,1,1,0,0,sysdate,null, null,'admin');

        
--알림내용 내용 더미 데이터--
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용', SYSDATE, 0 , 'admin', null, 'user1@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용2', SYSDATE, 0 , 'admin', null, 'user1@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용3', SYSDATE, 0 , 'admin', null, 'user2@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용4', SYSDATE, 0 , 'admin', null, 'user1@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용5', SYSDATE, 0 , 'admin', null, 'user1@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용6', SYSDATE, 0 , 'admin', 'com@naver.com', null);
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용7', SYSDATE, 0 , 'admin', 'com1@naver.com', null);
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용8', SYSDATE, 0 , 'admin', 'com@naver.com', null);
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용9', SYSDATE, 0 , 'admin', 'com@naver.com', null);
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용10', SYSDATE, 0 , 'admin', null, 'user1@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용11', SYSDATE, 0 , 'admin', null, 'user2@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용12', SYSDATE, 0 , 'admin', null, 'user2@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용13', SYSDATE, 0 , 'admin', null, 'user1@naver.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용14', SYSDATE, 0 , 'admin', null, 'user3@google.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용15', SYSDATE, 0 , 'admin', null, 'user3@google.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용16', SYSDATE, 0 , 'admin', null, 'user3@google.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용17', SYSDATE, 0 , 'admin', null, 'user3@google.com');
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용18', SYSDATE, 0 , 'admin', 'com2@google.com', null);
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용19', SYSDATE, 0 , 'admin', 'com2@google.com', null);
INSERT INTO NOTIFICATION VALUES(notificationnumber.nextval, '내용20', SYSDATE, 0 , 'admin', 'com2@google.com', null);

--공지사항 관리자단에 뿌릴 공지사항더미데이터
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'긍정의 힘1', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'부정의 힘1', '부정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'할수있다1', '불꽃가능', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'포기는 없다1', '포기는 습니다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'긍정의 힘2', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'부정의 힘2', '부정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'할수있다2', '불꽃가능', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'포기는 없다2', '포기는 습니다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'긍정의 힘3', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'부정의 힘3', '부정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'할수있다3', '불꽃가능', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'포기는 없다3', '포기는 습니다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'긍정의 힘4', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'부정의 힘4', '부정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'할수있다4', '불꽃가능', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'포기는 없다4', '포기는 습니다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'긍정의 힘5', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'부정의 힘5', '부정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'할수있다5', '불꽃가능', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'포기는 없다5', '포기는 습니다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'긍정의 힘6', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'부정의 힘6', '부정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'할수있다6', '불꽃가능', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'포기는 없다6', '포기는 습니다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'긍정의 힘7', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'부정의 힘7', '부정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'할수있다7', '불꽃가능', SYSDATE, 0 ,'admin');

--이벤트 관리자단에 뿌릴 이벤트더미데이터
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '엔가9배SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, DATE '2020-08-20' ,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '엔가10배SALE', '금주이벤트는 엔화의10배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '폭탄SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '왕창SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, '2019-04-04', '2019-05-05',NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, '2019-03-03', '2019-03-03',NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '엔가9배SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '엔가10배SALE', '금주이벤트는 엔화의10배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '폭탄SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '왕창SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, '2019-04-04', '2019-05-05',NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, '2019-03-03', '2019-03-03',NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '엔가9배SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '엔가10배SALE', '금주이벤트는 엔화의10배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '폭탄SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '왕창SALE', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, SYSDATE, SYSDATE+30,NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, '2019-04-04', '2019-05-05',NULL,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '거져가져가', '금주이벤트는 엔화의9배세일입니다', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, '2019-03-03', '2019-03-03',NULL,'admin');



--상품문의--

INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'상품에 하자있음', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'벌레가 나왔어요', '내용물에 이상이있어요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'그냥 후져요', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user2@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'쓰레기 같아요', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user3@google.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'페이징테스트1', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'페이징 테스트2', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'상품문의입니다', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user3@google.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'상품에 하자있음', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'벌레가 나왔어요', '내용물에 이상이있어요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'그냥 후져요', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user2@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'쓰레기 같아요', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user3@google.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'페이징테스트1', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'페이징 테스트2', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'상품문의입니다', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user3@google.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'상품에 하자있음', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'벌레가 나왔어요', '내용물에 이상이있어요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'그냥 후져요', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user2@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'쓰레기 같아요', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user3@google.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'페이징테스트1', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'페이징 테스트2', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user1@naver.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL,'상품문의입니다', '보푸라기가 일어나요' , SYSDATE , 0 , 6, 'user3@google.com');


-- fundingComment
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용1','2020-04-09',1,1,'user1@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용2','2020-04-19',0,1,'user2@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용3','2020-04-10',0,1,'user3@google.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용4','2020-04-11',0,1,'user4@google.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용5','2020-04-15',0,1,'user5@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용6','2020-04-18',0,1,'user6@google.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용7','2020-04-22',0,1,'user7@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용8','2020-04-29',3,1,'user1@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용1','2020-04-09',0,2,'user2@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용2','2020-04-19',0,2,'user3@google.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용3','2020-04-10',0,2,'user4@google.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용4','2020-04-11',0,2,'user5@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용5','2020-04-15',0,2,'user6@google.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용6','2020-04-18',0,2,'user7@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용7','2020-04-22',0,2,'user1@naver.com');
INSERT INTO FundingGoodsComments VALUES (FGCOMMENTSNUMBER.nextval,'내용8','2020-04-29',0,2,'user2@naver.com');

-- fundingCommentReply
INSERT INTO FundingGoodsCommentsReply VALUES (FGCOMMENTSREPLYNUMBER.nextval,'답글이드아아내용','2020-04-09',8,'user1@naver.com');
INSERT INTO FundingGoodsCommentsReply VALUES (FGCOMMENTSREPLYNUMBER.nextval,'답글이드아아내용','2020-04-09',8,'user2@naver.com');
INSERT INTO FundingGoodsCommentsReply VALUES (FGCOMMENTSREPLYNUMBER.nextval,'답글이드아아내용','2020-04-09',8,'user2@naver.com');
INSERT INTO FundingGoodsCommentsReply VALUES (FGCOMMENTSREPLYNUMBER.nextval,'답글이드아아내용','2020-04-09',1,'user2@naver.com');

-- fundingGoodsDetail 더미들~

INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 50000, 20000, SYSDATE, '20-05-25', 7, 'user2@naver.com');

INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 20000, 10000, SYSDATE, '20-05-25', 7, 'user@naver.com');
    
INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 50000, 0, SYSDATE, '20-05-25', 8, 'user2@naver.com');
    
INSERT INTO FundingGoodsDetail VALUES 
    (FUNDINGGOODSDETAILNUMBER.nextval, 20000, 0, SYSDATE, '20-05-25', 9, 'user2@naver.com');
    
INSERT INTO FundingGoodsDetail VALUES 
    (FUNDINGGOODSDETAILNUMBER.nextval, 50000, 0, SYSDATE, '21-03-20', 10, 'user2@naver.com');

INSERT INTO FundingGoodsDetail VALUES 
    (FUNDINGGOODSDETAILNUMBER.nextval, 50000, 0, SYSDATE, '21-04-01', 11, 'user2@naver.com');

INSERT INTO FundingGoodsDetail VALUES 
    (FUNDINGGOODSDETAILNUMBER.nextval, 50000, 0, SYSDATE, '20-05-25', 6, 'user2@naver.com');


-- user 찜 더미
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user2@naver.com', 6);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user2@naver.com', 7);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user2@naver.com', 8);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user2@naver.com', 9);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user2@naver.com', 10);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user2@naver.com', 11);   

INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user1@naver.com', 9);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user1@naver.com', 10);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user1@naver.com', 11); 


INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user3@google.com', 7);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user3@google.com', 8);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user3@google.com', 9);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user3@google.com', 10);
INSERT INTO USERPICK VALUES (UserPickNumber.NEXTVAL, 'user3@google.com', 11);
