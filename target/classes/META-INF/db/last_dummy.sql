--user 등급 더미
INSERT INTO UserGrade VALUES (1,'NORMAL',0,1000000);
INSERT INTO UserGrade VALUES (2,'GOLD',1000001,100000000);
INSERT INTO UserGrade VALUES (3,'VIP',100000000,10000000000);
--User 더미
INSERT INTO Users VALUES ('wogur698@naver.com','123','lim.jpg','임재혁','010-4898-8848','서울시','새박사빌딩 302호', 
    '국민은행', '110-877-55624', 100000000, NULL, SYSDATE, 1, 1, 0, 0, 1, 3);
INSERT INTO Users VALUES ('kha0213@naver.com','123','park.jpg','김영롱','010-2344-8628','서울시 송파구','영롱빌딩 302호', 
    '기업은행', '010-8787-2525', 100000000, NULL, SYSDATE, 1, 1, 0, 0, 0, 3);
INSERT INTO Users VALUES ('topwings7@gmail.com','123','park.jpg','임상훈','010-2344-8628','서울시 송파구','TOP빌딩 302호', 
    '신한은행', '110-194-562340', 500000000, NULL, SYSDATE, 1, 1, 0, 0, 0, 3);

--Company 더미
INSERT INTO COMPANY VALUES ('com@naver.com', '123', 'company.png', '영롱한 스타트업입니다.', SYSDATE, '영롱회사', '02-2066-5849', 
    '서울시 용산구', '동방빌딩 701호', '기업은행', '584-327-26510', 5000000, 0, 0, 0,'151-24-69870');
INSERT INTO COMPANY VALUES ('com1@naver.com', '123', 'company.png', '몽롱한 스타트업입니다.', SYSDATE, '몽롱회사', '02-2066-5849', 
    '서울시 종로구', '금호빌딩 501호', '기업은행', '269-543-21875', 1000000, 0, 0, 0,'191-38-34267');
INSERT INTO COMPANY VALUES ('com2@naver.com', '123', 'company.png', '새콤한 스타트업입니다.', SYSDATE, '새콤회사', '02-2066-5849', 
    '서울시 송파구', '태성빌딩 801호', '기업은행', '584-65296-02-18777', 3000000, 0, 0, 0,'145-20-68824');

--Admin 더미
INSERT INTO Admin VALUES ('admin', '123', 'ADMIN', null);

-- 승인투자상품  1번  계좌있고 목표금액 달성했고 달성률100% 관리자 마감처리와 연동
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '승인투자상품1', '투자상품입니다.', 'fundingProduct_01.jpeg', 'fundingProduct_01.jpeg', 'fundingDescription.png', '카카오뱅크',
        '관리계좌', '512-06-66324', 12000000, 12000000, 100, '2020-04-01', '2020-05-03', null, 7, 15, 0, 3, 1, 'admin', 'com@naver.com');
--1번 승인투자상품에 투자한 사람 관리자 마감처리 알림 테스트하려고 성공시 회사에 알림 >> 마감치고 회사아이디로그인
INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 100000, 0, SYSDATE, '2020-05-03', 1, 'wogur698@naver.com');
INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 500000, 0, SYSDATE, '2020-05-03', 1, 'kha0213@naver.com');
INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 1000000, 0, SYSDATE, '2020-05-03', 1, 'topwings7@gmail.com');

-- 승인투자상품 2번 계좌 있고 목표금액 실패했고 달성률80& 관리자 마감처리와 연동
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '승인투자상품2', '투자상품입니다.', 'fundingProduct_03.jpeg', 'fundingProduct_03.jpeg', 'fundingDescription.png', '카카오뱅크',
        '관리계좌', '512-06-52634', 800000, 1000000, 80, '2020-04-15', '2020-05-15', null, 7, 15, 0, 3, 1, 'admin', 'com@naver.com');
--2번 승인투자상품에 투자한 사람  달성률80%상품이라 >> 관리자 마감치고 유저아이디로 로그인
INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 100000, 0, SYSDATE, '2020-05-15', 2, 'wogur698@naver.com');
INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 500000, 0, SYSDATE, '2020-05-15', 2, 'kha0213@naver.com');
INSERT INTO FundingGoodsDetail VALUES 
	(FUNDINGGOODSDETAILNUMBER.nextval, 1000000, 0, SYSDATE, '2020-05-15', 2, 'topwings7@gmail.com');
--3번 투자대기 중인상품
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '대기투자상품1', '투자상품입니다.', 'fundingProduct_01.jpeg', 'fundingProduct_01.jpeg', 'fundingDescription.png', null,
        null, null, 0, 12000000, 0, SYSDATE, '2020-04-20', null, 7, 2, 0, 0, 0, 'admin', 'com@naver.com');
--1, 2번에 대한 리워드
INSERT INTO Reward VALUES (REWARDCODE.nextval,'투자리워드',null,0,null,null,0,0,0,null,1);
INSERT INTO Reward VALUES (REWARDCODE.nextval,'투자리워드',null,0,null,null,0,0,0,null,2);
--1번에 대한 상품문의 fundingQuestion  페이징 처리 답변처리 보여주려고  fundingQuestionReply 7번에대한답변은 관리자 단에서 답변버튼으로 해줌
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '투자 회사가 궁금해요', '1', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '회사 지속 년수가 궁금해요', '2', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '원금 회수가능한가요', '3', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '재무재표가 보고싶어요', '4', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '안정성이 있는회사인지 궁금해요', '5', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '원금 회수가능한가요', '6', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '투자 회사가 궁금해요', '재무재표가 보고싶어요', SYSDATE, 0, 1 ,'topwings7@gmail.com');

--QnA 더미



commit;
