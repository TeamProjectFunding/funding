
-- 회사등록
INSERT INTO COMPANY VALUES ('com', '123', null, '영롱한 스타트업입니다.', 'com@naver.com', '영롱회사', '02-2066-5849', 
    '서울시 용산구', '대장빌딩 301호', null, null, null, 0, 0, 0);
    
INSERT INTO COMPANY VALUES ('aaa', '123', null, '유석한 스타트업입니다.', 'com@naver.com', '유석회사', '02-2066-5849', 
    '서울시 종로구', '아기빌딩 301호', null, null, null, 0, 0, 0);
    
INSERT INTO COMPANY VALUES ('bbb', '123', null, '재혁한 스타트업입니다.', 'com@naver.com', '앵무새회사', '02-2066-5849', 
    '서울시 용산구', '짱구빌딩 301호', null, null, null, 0, 0, 0);

INSERT INTO COMPANY VALUES ('ccc', '123', null, '상훈한 스타트업입니다.', 'com@naver.com', '가구회사', '02-2066-5849', 
    '서울시 양천구', '배스빌딩 301호', null, null, null, 0, 0, 0);

INSERT INTO COMPANY VALUES ('ddd', '123', null, '영롱한 스타트업입니다.', 'com@naver.com', '장난감회사', '02-2066-5849', 
    '서울시 구로구', '우럭빌딩 301호', null, null, null, 0, 0, 0);

INSERT INTO COMPANY VALUES ('eee', '123', null, '영롱한 스타트업입니다.', 'com@naver.com', '상훈회사', '02-2066-5849', 
    '서울시 노원구', '앵무빌딩 301호', null, null, null, 0, 0, 0);

INSERT INTO COMPANY VALUES ('fff', '123', null, '영롱한 스타트업입니다.', 'com@naver.com', '바보회사', '02-2066-5849', 
    '서울시 영등포구', '영롱빌딩 301호', null, null, null, 0, 0, 0);



-- 유저 등급 설정
INSERT INTO UserGrade VALUES (1,'NORMAL',0,1000000);
INSERT INTO UserGrade VALUES (2,'GOLD',1000001,100000000);
INSERT INTO UserGrade VALUES (3,'VIP',100000000,10000000000);


--관리자 등록
INSERT INTO Admin VALUES ('admin', '123', '임재혁', 'ADMINIMAGE');


-- 유저 등록
INSERT INTO Users VALUES ('user1','123','profile.jpg','박지영','010-4898-8848','서울시 목동','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
    
INSERT INTO Users VALUES ('user2','123','profile.jpg','지단','010-4898-8848','서울시 동대문','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
    
INSERT INTO Users VALUES ('user3','123','profile.jpg','오유석','010-4898-8848','일산시','유석빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 1);    

INSERT INTO Users VALUES ('user4','123','profile.jpg','제라드','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 1);

INSERT INTO Users VALUES ('user5','123','profile.jpg','손흥민','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);

INSERT INTO Users VALUES ('user6','123','profile.jpg','차범근','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
    
INSERT INTO Users VALUES ('user7','123','profile.jpg','김병지','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 1, 1);    
    
INSERT INTO Users VALUES ('user8','123','profile.jpg','전일환','010-4898-8848','서울시','영롱빌딩 302호', 
    null, null, 0, NULL, SYSDATE, 1, 1, 0, 0, 0, 1);
  
  
--펀딩상품    
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품1', '투자상품1입니다.', '썸네일1', '이미지상세1', '펀딩설명이지롱', null,
        null, null, 0, 2000000, 0, SYSDATE, '2020-05-25', null, 7, 15, 0, 0, 0, 'admin', 'fff');    
    
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품2', '투자상품2입니다.', '썸네일2', '이미지상세2', '펀딩설명이지롱', '신한은행',
        'masters계좌1', '110-278-849991', 500000, 1000000, 50, '2020-03-20', '2020-05-25', null, 10, 12, 1, 23, 1, 'admin', 'com'); 
        
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '리워드상품1', '리워드상품1입니다.', '썸네일3', '이미지상세3', '펀딩설명이지롱', '신한은행',
        'masters계좌2', '110-278-844190', 600000, 2000000, 30, '2020-04-05', '2020-05-25', '2020-05-28', 0, 0, 1, 50, 1, 'admin', 'aaa');         

INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '리워드상품2', '리워드상품2입니다.', '썸네일4', '이미지상세4', '펀딩설명이지롱', '신한은행',
        'masters계좌3', '110-278-159848', 1800000, 3000000, 60, '2020-03-21', '2020-05-25', '2020-05-29', 0, 0, 1, 21, 1, 'admin', 'bbb'); 

INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '투자상품3', '투자상품3입니다.', '썸네일5', '이미지상세5', '펀딩설명이지롱', '신한은행',
        'masters계좌4', '110-278-448585', 200000, 2000000, 10, '2020-04-04', '2020-05-25', null, 7, 12, 1, 9, 1, 'admin', 'ccc'); 



