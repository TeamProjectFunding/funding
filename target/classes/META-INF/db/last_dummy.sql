--user 등급 더미
INSERT INTO UserGrade VALUES (1,'NORMAL',0,1000000);
INSERT INTO UserGrade VALUES (2,'GOLD',1000001,100000000);
INSERT INTO UserGrade VALUES (3,'VIP',100000000,10000000000);

--User 더미
INSERT INTO Users VALUES ('wogur698@naver.com','123','lim.jpg','임재혁','010-4898-8848','서울시','새박사빌딩 302호', 
    '국민은행', '110-877-55624', 100000000, NULL, SYSDATE, 1, 1, 0, 0, 0, 3);
INSERT INTO Users VALUES ('kha0213@naver.com','123','park.jpg','김영롱','010-2344-8628','서울시 송파구','영롱빌딩 302호', 
    '기업은행', '010-8787-2525', 100000000, NULL, SYSDATE, 1, 1, 0, 0, 0, 3);
INSERT INTO Users VALUES ('topwings7@gmail.com','123','park.jpg','임상훈','010-2344-8628','서울시 송파구','TOP빌딩 302호', 
    '신한은행', '110-194-562340', 500000000, NULL, SYSDATE, 1, 1, 0, 0, 1, 3);
    
--Company 더미
INSERT INTO COMPANY VALUES ('com@naver.com', '123', 'company.png', '영롱한 스타트업입니다.', SYSDATE, '영롱회사', '02-2066-5849', 
    '서울시 용산구', '동방빌딩 701호', '기업은행', '(주)영롱', '584-327-26510', 0, 0, 0,'151-24-69870');
INSERT INTO COMPANY VALUES ('com1@naver.com', '123', 'company.png', '몽롱한 스타트업입니다.', SYSDATE, '몽롱회사', '02-2066-5849', 
    '서울시 종로구', '금호빌딩 501호', '기업은행', '(주)몽롱', '269-543-21875', 0, 0, 0,'191-38-34267');
INSERT INTO COMPANY VALUES ('com2@naver.com', '123', 'company.png', '새콤한 스타트업입니다.', SYSDATE, '새콤회사', '02-2066-5849', 
    '서울시 송파구', '태성빌딩 801호', '기업은행', '(주)새콤', '584-65296-02-18777', 0, 0, 0,'145-20-68824');
    
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
--1, 2, 3번에 대한 리워드
INSERT INTO Reward VALUES (REWARDCODE.nextval,'투자리워드',null,0,null,null,0,0,0,null,1);
INSERT INTO Reward VALUES (REWARDCODE.nextval,'투자리워드',null,0,null,null,0,0,0,null,2);
INSERT INTO Reward VALUES (REWARDCODE.nextval,'투자리워드',null,0,null,null,0,0,0,null,3);

--4번 리워드 투자상품 (투자상품테이블 만들고 리워드 테이블 만들어야한다
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 1, '승인리워드상품1', '리워드입니다.', 'fundingProduct_01.jpeg', 'fundingProduct_01.jpeg', 'fundingDescription.png', '카카오뱅크',
        '관리계좌', '511-06-12324', 700000, 1000000, 70, '2020-05-18', '2020-07-20', null, 7, 2, 0, 0, 1, 'admin', 'com@naver.com');
INSERT INTO REWARD VALUES(REWARDCODE.nextval, '상품리워드', 30000, 1 , NULL, '2020-07-20',0,0,0,NULL,4);


--1번에 대한 상품문의 fundingQuestion  페이징 처리 답변처리 보여주려고  fundingQuestionReply 7번에대한답변은 관리자 단에서 답변버튼으로 해줌
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '투자 회사가 궁금해요', '1', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '회사 지속 년수가 궁금해요', '2', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '원금 회수가능한가요', '3', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '재무재표가 보고싶어요', '4', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '안정성이 있는회사인지 궁금해요', '5', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '원금 회수가능한가요', '6', SYSDATE, 0, 1 ,'topwings7@gmail.com');
INSERT INTO fundingquestion VALUES (fundingquestionnumber.NEXTVAL, '투자 회사가 궁금해요', '재무재표가 보고싶어요', SYSDATE, 0, 1 ,'topwings7@gmail.com');

--공지사항 더미--
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'금주 펀딩 이벤트', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'수익률 상승 비법', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'선별 투자 비법', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'좋은 회사 고르는 방법', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'마음을 다스리는 방법', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');
INSERT INTO NOTICE VALUES (NoticeNumber.NEXTVAL,'기대수익 평가 방법', '긍정적인 마음을 가집시다', SYSDATE, 0 ,'admin');

--QnA 더미 관리자, 유저, 회사
INSERT INTO QnA VALUES (QnANumber.nextval,'테스트 회사1','테스트',0,1,1,0,0,0,0,sysdate,null,'com@naver.com',null);
INSERT INTO QnA VALUES (QnANumber.nextval,'테스트 회사2','테스트',0,1,2,0,0,0,0,sysdate,null,'com2@naver.com',null);
INSERT INTO QnA VALUES (QnANumber.nextval,'테스트 유저1','테스트',0,0,3,0,0,0,0,sysdate,'topwings7@gmail.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'테스트 유저2','테스트',0,0,4,0,0,0,0,sysdate,'kha0213@naver.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'모금 금액 확인은 어떻게 하나요?','알려주세요',0,1,5,0,0,0,1,sysdate,null,'com@naver.com',null);
INSERT INTO QnA VALUES (QnANumber.nextval,'모금 금액 확인 방법입니다','마이 페이지를 참조하세요',0,2,5,1,1,0,1,sysdate,null,null,'admin');
INSERT INTO QnA VALUES (QnANumber.nextval,'감사합니다','감사합니다',0,1,5,2,2,0,0,sysdate,null,'com@naver.com',null);
INSERT INTO QnA VALUES (QnANumber.nextval,'계좌등록은 어디서 하나요?','버튼이 안보입니다',0,0,8,0,0,0,1,sysdate,'topwings7@gmail.com',null,null);
INSERT INTO QnA VALUES (QnANumber.nextval,'계좌등록방법','마이페이지의 이름을 클릭하시면 버튼이 생성됩니다',0,2,8,1,1,0,0,sysdate,null,null,'admin');

--승인된 펀딩2 번에 대한토론
INSERT INTO fundinggoodscomments VALUES (fgcommentsnumber.nextval, '튼실한 기업같아요 마니마니 투자합시다', sysdate, 1,2 ,'topwings7@gmail.com');
INSERT INTO fundinggoodscommentsreply values (2, '저도 투자했습니다 목표 달성까지 달립시다', sysdate ,1 ,'wogur698@naver.com');
INSERT INTO fundinggoodscomments VALUES (fgcommentsnumber.nextval, '저도 투자 했습니다', sysdate, 0,2 ,'wogur698@naver.com');

--이벤트 
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '이자 추가 지급1%', '이자 마니줘여', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, '2020-04-27', DATE '2020-05-02' ,NULL,0,'admin');
INSERT INTO EVENT VALUES (EVENTNUMBER.nextval, '리워드 상품 배송비 무료', '배송비 무료', NULL, NULL, 'MSN-04 JARD DOGA', NULL, 5, 6,0, '2020-05-01', DATE '2020-05-06' ,NULL,0,'admin');

--새소식 기능 승인된상품2번에서 보여짐 구현x insert하는 곳없음 더미만 작성
insert into fundingnews values (FUNDINGNEWSNUMBER.nextval, '해외납품 수주','6억원 계약성공',date '2020-04-27',null,2,'com@naver.com');
insert into fundingnews values (FUNDINGNEWSNUMBER.nextval, '매출 10억원 달성','돈마니 벌어요',date '2020-04-29',null,2,'com@naver.com');


--찜기능 마감 보여주려고 만든 승인된 펀딩상품3
INSERT INTO FundingGoods VALUES 
    (FundingCode.nextval, 0, '승인투자상품3', '투자상품입니다.', 'fundingProduct_01.jpeg', 'fundingProduct_01.jpeg', 'fundingDescription.png', '신한은행',
        '(주)masters펀딩계좌', '110-459-549878', 24000000, 12000000, 200, '2020-01-29', sysdate, null, 7, 3, 0, 20, 1, 'admin', 'com2@naver.com');

commit;

