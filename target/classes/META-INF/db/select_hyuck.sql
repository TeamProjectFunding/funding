--Notice xml id = noticeList

SELECT * FROM NOTICE;

-- Reward xml id = rewardList
SELECT R.*, F.FUNDINGNAME, F.FUNDINGTARGETDATE, F.FUNDINGTHUMBNAILIMAGE 
    FROM REWARD R, FUNDINGGOODS F 
        WHERE R.FUNDINGCODE = F.FUNDINGCODE;

-- UserPick xml id = userPickList
SELECT UP.*, F.FUNDINGNAME, F.FUNDINGCATEGORY, F.FUNDINGTARGETDATE, F.FUNDINGTHUMBNAILIMAGE 
    FROM USERPICK UP, FUNDINGGOODS F 
        WHERE UP.FUNDINGCODE = F.FUNDINGCODE; 

-- USERS XML ID = usersList
SELECT U.*, (SELECT COUNT(*) FROM USERS U, NOTIFICATION N where U.USERID=N.USERID) NOTIFICATIONCOUNT, 
    (SELECT COUNT(*) FROM USERS U, USERPICK UP WHERE U.USERID = UP.USERID) USERPICKCOUNT, USERGRADENAME 
        FROM USERS U, USERGRADE UG 
            WHERE U.USERGRADENO = UG.USERGRADENO; 
            
-- fundingGoods xml id = fundingGoodsList
SELECT FG.*, C.companyProfileImage, C.companyIntroduction, C.companyName
    FROM FundingGoods FG, COMPANY C 
        WHERE FG.COMPANYID = C.COMPANYID;
    
-- FundingGoodsComments xml id = fundingGoodsCommentsList
SELECT FG.*, U.userProfileImage, U.userName
    FROM FundingGoodsComments FG, USERS U 
        WHERE FG.USERID = U.USERID;
        
-- FundingGoodsCommentsReply xml id = fundingGoodsCommentsReplyList
SELECT FG.*, U.userProfileImage, U.userName
    FROM FundingGoodsCommentsReply FG, USERS U
        WHERE FG.USERID = U.USERID;
        
-- FundingGoodsDetail xml id = fundingGoodsDetailList
SELECT FG.*, U.userProfileImage, U.userName
    FROM FundingGoodsDetail FG, USERS U
        WHERE FG.USERID = U.USERID;
