select *
from board_category_tb;

select * from board_tb b, board_category_tb c where b.category_no = 2;
select * from board_tb b, board_category_tb c where b.category_no = 4;

select * from board_tb



show tables;

select * from board_image_tb;


SELECT *
FROM BOARD_BOOKMARK_TB;

select * from record_tb;
select * from board_bookmark_tb;
select * from record_tb;
select * from board_category_tb;

select count(*) from board_bookmark_tb
where target_type = 1 and user_uid = '1YboVQ9qoUf3IxMoPrxI6Wltwut2'; 


show columns from board_category_tb;
show columns from board_bookmark_tb;
insert into board_category_tb
values (7, '일정');

SELECT *
FROM BOARD_BOOKMARK_TB BB
WHERE BB.USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2';
	
SELECT *
FROM BOARD_BOOKMARK_TB BB, BOARD_TB B
WHERE BB.TARGET_NO = B.BOARD_NO
	AND BB.USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2';
	
SELECT *
FROM BOARD_BOOKMARK_TB BB, BOARD_TB B, RECORD_TB R
WHERE BB.USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2'
	조건1 BB.TARGET_TYPE = '1'면, BB.TARGET_NO = B.BOARD_NO;
	조건2 BB.TARGET_TYPE = '3'면, BB.TARGET_NO = R.RECORD_NO;

	
(SELECT BB.TARGET_TYPE, BB.REG_DATE, B.USER_UID, TITLE, TITLE AS STRAPLINE, TITLE AS INTRODUCE, B.BOARD_NO AS PICTURE, U.PHOTO_URL, U.DISPLAY_NAME
FROM BOARD_BOOKMARK_TB BB, BOARD_TB B, USER_TB U
WHERE BB.USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2' AND BB.TARGET_TYPE = '1' AND BB.TARGET_NO = B.BOARD_NO AND B.USER_UID = U.USER_UID)
UNION
(SELECT BB.TARGET_TYPE, BB.REG_DATE, R.USER_UID, TITLE, R.STRAPLINE, R.INTRODUCE, R.PICTURE, U.PHOTO_URL, U.DISPLAY_NAME
FROM BOARD_BOOKMARK_TB BB, RECORD_TB R, USER_TB U
WHERE BB.USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2' AND BB.TARGET_TYPE = '3' AND BB.TARGET_NO = R.RECORD_NO AND R.USER_UID = U.USER_UID)
order by REG_DATE desc
limit 0, 10;


SELECT *
FROM BOARD_BOOKMARK_TB BB, BOARD_TB B
WHERE BB.USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2' AND BB.TARGET_TYPE = '1' AND BB.TARGET_NO = B.BOARD_NO;
SELECT *
FROM BOARD_BOOKMARK_TB BB, RECORD_TB R
WHERE BB.USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2' AND BB.TARGET_TYPE = '3' AND BB.TARGET_NO = R.RECORD_NO;
	
	
	
SELECT *
FROM BOARD_BOOKMARK_TB BB, BOARD_TB B, USER_TB U
WHERE BB.TARGET_NO = B.BOARD_NO
	AND B.USER_UID = U.USER_UID
	AND BB.USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2';



(SELECT B.BOARD_NO AS NO, B.REG_DATE, B.USER_UID, TITLE, B.BOARD_NO AS PICTURE, U.PHOTO_URL, U.DISPLAY_NAME, 
		COALESCE((SELECT COUNT(*) FROM BOARD_LIKE_TB BL WHERE BL.TARGET_NO = B.BOARD_NO), 0) LIKE_CNT, 
		(SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO) TARGET_TYPE
 FROM BOARD_TB B, USER_TB U
 WHERE B.USER_UID = U.USER_UID)
UNION
(SELECT R.RECORD_NO AS NO, R.REG_DATE, R.USER_UID, TITLE, R.PICTURE, U.PHOTO_URL, U.DISPLAY_NAME, 
		COALESCE((SELECT COUNT(*) FROM RECORD_LIKE_TB RL WHERE RL.RECORD_NO = R.RECORD_NO), 0) LIKE_CNT, 
		(SELECT DISTINCT COALESCE(TARGET_TYPE, 3) FROM RECORD_TB R LEFT JOIN RECORD_LIKE_TB RL ON RL.RECORD_NO = R.RECORD_NO WHERE RL.RECORD_NO = R.RECORD_NO) TARGET_TYPE
 FROM RECORD_TB R, USER_TB U
 WHERE R.USER_UID = U.USER_UID
 	AND R.ISOPEN = 1)
ORDER BY LIKE_CNT DESC, REG_DATE DESC


select * from record_tb



SELECT B.BOARD_NO AS NO, B.REG_DATE, B.USER_UID, TITLE, B.BOARD_NO AS PICTURE, U.PHOTO_URL, U.DISPLAY_NAME, 
		COALESCE((SELECT COUNT(*) FROM BOARD_LIKE_TB BL WHERE BL.TARGET_NO = B.BOARD_NO), 0) LIKE_CNT, 
		(SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO) TARGET_TYPE
 FROM BOARD_TB B, USER_TB U
 WHERE B.USER_UID = U.USER_UID
SELECT R.RECORD_NO AS NO, R.REG_DATE, R.USER_UID, TITLE, R.PICTURE, U.PHOTO_URL, U.DISPLAY_NAME, 
		COALESCE((SELECT COUNT(*) FROM RECORD_LIKE_TB RL WHERE RL.RECORD_NO = R.RECORD_NO), 0) LIKE_CNT, 
		(SELECT DISTINCT COALESCE(TARGET_TYPE, 3) FROM RECORD_TB R LEFT JOIN RECORD_LIKE_TB RL ON RL.RECORD_NO = R.RECORD_NO WHERE RL.RECORD_NO = R.RECORD_NO) TARGET_TYPE
 FROM RECORD_TB R, USER_TB U
 WHERE R.USER_UID = U.USER_UID
 
 SELECT * FROM BOARD_TB
 SELECT * FROM BOARD_LIKE_TB
 SELECT * FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO
 
 SELECT B.BOARD_NO AS NO, B.REG_DATE, B.USER_UID, TITLE, B.BOARD_NO AS PICTURE, U.PHOTO_URL, U.DISPLAY_NAME, 
		COALESCE((SELECT COUNT(*) FROM BOARD_LIKE_TB BL WHERE BL.TARGET_NO = B.BOARD_NO), 0) LIKE_CNT
 FROM BOARD_TB B, USER_TB U
 WHERE B.USER_UID = U.USER_UID
 

SELECT C.CATEGORY_NAME, B.BOARD_NO AS NO, B.REG_DATE, B.USER_UID, TITLE, B.BOARD_NO AS PICTURE, U.PHOTO_URL, U.DISPLAY_NAME, 
		COALESCE((SELECT COUNT(*) FROM BOARD_LIKE_TB BL WHERE BL.TARGET_NO = B.BOARD_NO), 0) LIKE_CNT, 
		(SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO) TARGET_TYPE
 FROM BOARD_TB B, BOARD_CATEGORY_TB C, USER_TB U
 WHERE B.USER_UID = U.USER_UID
 	AND B.CATEGORY_NO = C.CATEGORY_NO
 	AND B.CATEGORY_NO = 1d
 ORDER BY LIKE_CNT DESC, REG_DATE DESC
 
 select * from board_category_tb;
 SELECT COUNT(*)
		FROM BOARD_TB
		WHERE CATEGORY_NO = 1
 
 SELECT R.RECORD_NO AS NO, R.REG_DATE, R.USER_UID, TITLE, R.PICTURE, U.PHOTO_URL, U.DISPLAY_NAME, 
		COALESCE((SELECT COUNT(*) FROM RECORD_LIKE_TB RL WHERE RL.RECORD_NO = R.RECORD_NO), 0) LIKE_CNT, 
		(SELECT DISTINCT COALESCE(TARGET_TYPE, 3) FROM RECORD_TB R LEFT JOIN RECORD_LIKE_TB RL ON RL.RECORD_NO = R.RECORD_NO WHERE RL.RECORD_NO = R.RECORD_NO) TARGET_TYPE
 FROM RECORD_TB R, USER_TB U
 WHERE R.USER_UID = U.USER_UID
 ORDER BY LIKE_CNT DESC, REG_DATE DESC
 

 
 
 
 		(SELECT B.BOARD_NO AS NO, B.REG_DATE, B.USER_UID, TITLE, B.BOARD_NO AS PICTURE, U.DISPLAY_NAME, 
				COALESCE((SELECT COUNT(*) FROM BOARD_LIKE_TB BL WHERE BL.TARGET_NO = B.BOARD_NO), 0) LIKE_CNT, 
				(SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO) TARGET_TYPE
		 FROM BOARD_TB B, USER_TB U
		 WHERE B.USER_UID = U.USER_UID)
		UNION
		(SELECT R.RECORD_NO AS NO, R.REG_DATE, R.USER_UID, TITLE, R.PICTURE, U.DISPLAY_NAME, 
				COALESCE((SELECT COUNT(*) FROM RECORD_LIKE_TB RL WHERE RL.RECORD_NO = R.RECORD_NO), 0) LIKE_CNT, 
				(SELECT DISTINCT COALESCE(TARGET_TYPE, 3) FROM RECORD_TB R LEFT JOIN RECORD_LIKE_TB RL ON RL.RECORD_NO = R.RECORD_NO WHERE RL.RECORD_NO = R.RECORD_NO) TARGET_TYPE
		 FROM RECORD_TB R, USER_TB U
		 WHERE R.USER_UID = U.USER_UID
		 	AND R.ISOPEN = 1)
		ORDER BY LIKE_CNT DESC, REG_DATE DESC
 
 
select * from record_tb; 
select * from record_comment_tb;
select * from board_tb;
select * from board_comment_tb;

select r.record_no as no, r.title, rc.reg_date, r.target_type
from record_tb r, record_comment_tb rc
where r.user_uid = '1YboVQ9qoUf3IxMoPrxI6Wltwut2' and r.record_no = rc.record_no
union
select b.board_no as no, b.title, bc.reg_date, (SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO) TARGET_TYPE
from board_tb b, board_comment_tb bc
where b.user_uid = '1YboVQ9qoUf3IxMoPrxI6Wltwut2' and b.board_no = bc.board_no
order by reg_date


show tables;
select * from notes_tb;

select * from record_travelprice_tb;

select * from board_tb;
select * from board_bookmark_tb;
select * from board_like_tb;



CREATE TABLE BOARD_ROUTE_TB (
	BOARD_ROUTE_NO INT,
	ORDER_NO INT,
	TARGET_TYPE VARCHAR(10) DEFAULT '2',
	TITLE VARCHAR(100),
	PLACE VARCHAR(100),
	CONTENT VARCHAR(1000),
	USER_UID VARCHAR(100),
	REG_DATE TIMESTAMP DEFAULT NOW()
)

drop table board_route_tb;
select COALESCE(max(board_route_no), 0)
from board_route_tb;

select * from board_route_tb;


select n.notes_no, n.sent_user_uid, n.title, n.content, n.date_sent, n.recv_read, u.photo_url, u.display_name
from notes_tb n, user_tb u
where n.recv_user_uid = '1YboVQ9qoUf3IxMoPrxI6Wltwut2'
	and n.sent_user_uid = u.user_uid;


SELECT NOTES_NO, TITLE
		FROM NOTES_TB
		WHERE RECV_USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2'
		AND RECV_READ = 'N'
		ORDER BY DATE_SENT DESC
		
SELECT *
		FROM NOTES_TB
		WHERE RECV_USER_UID = '1YboVQ9qoUf3IxMoPrxI6Wltwut2'
		ORDER BY DATE_SENT DESC
	
	
	

select br.board_route_no, br.target_type, br.title, br.user_uid, br.reg_date, u.display_name, u.photo_url
from board_route_tb br, user_tb u
where br.user_uid = u.user_uid
group by br.board_route_no
order by br.reg_date desc
limit 1, 2;

select * from board_route_tb


SELECT *, 
			(SELECT COUNT(*) FROM BOARD_COMMENT_TB BC WHERE BC.BOARD_NO=B.BOARD_NO) COMMENT_CNT, 
			(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=B.BOARD_NO AND LIKETB.TARGET_TYPE=1) LIKE_CNT,
			(SELECT COUNT(*) FROM BOARD_BOOKMARK_TB BBT WHERE BBT.TARGET_NO=B.BOARD_NO AND BBT.TARGET_TYPE='1') BOOKMARK_CNT
		FROM BOARD_TB B, BOARD_CATEGORY_TB C, USER_TB U, LOCATION_TB L
		WHERE C.CATEGORY_NO = B.CATEGORY_NO 
			AND B.USER_UID = U.USER_UID 
			AND U.LOCATION_NO = L.LOCATION_NO
		ORDER BY BOARD_NO DESC

SELECT B.BOARD_NO, B.TITLE, B.TITLE AS PLACE, B.CONTENT, B.REG_DATE, B.CATEGORY_NO, C.CATEGORY_NAME, B.USER_UID, U.DISPLAY_NAME, U.PHOTO_URL,
	(SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO) TARGET_TYPE, 
	(SELECT COUNT(*) FROM BOARD_COMMENT_TB BC WHERE BC.BOARD_NO=B.BOARD_NO) COMMENT_CNT, 
	(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=B.BOARD_NO AND LIKETB.TARGET_TYPE=1) LIKE_CNT,
	(SELECT COUNT(*) FROM BOARD_BOOKMARK_TB BBT WHERE BBT.TARGET_NO=B.BOARD_NO AND BBT.TARGET_TYPE='1') BOOKMARK_CNT
FROM BOARD_TB B, BOARD_CATEGORY_TB C, USER_TB U
WHERE C.CATEGORY_NO = B.CATEGORY_NO
	AND B.USER_UID = U.USER_UID
UNION
SELECT BR.BOARD_ROUTE_NO AS BOARD_NO, BR.TITLE, BR.PLACE, BR.CONTENT, BR.REG_DATE, BR.TARGET_TYPE AS CATEGORY_NO, BR.TITLE AS CATEGORY_NAME, BR.USER_UID, U.DISPLAY_NAME, U.PHOTO_URL, BR.TARGET_TYPE,
	(SELECT COUNT(*) FROM BOARD_COMMENT_TB BC WHERE BC.BOARD_NO=BR.BOARD_ROUTE_NO) COMMENT_CNT, 
	(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=BR.BOARD_ROUTE_NO AND LIKETB.TARGET_TYPE='2') LIKE_CNT,
	(SELECT COUNT(*) FROM BOARD_BOOKMARK_TB BBT WHERE BBT.TARGET_NO=BR.BOARD_ROUTE_NO AND BBT.TARGET_TYPE='2') BOOKMARK_CNT
FROM BOARD_ROUTE_TB BR, USER_TB U
WHERE BR.USER_UID = U.USER_UID
GROUP BY BR.BOARD_ROUTE_NO
ORDER BY REG_DATE DESC

select * from board_comment_tb;



SELECT *, 
			(SELECT COUNT(*) FROM BOARD_COMMENT_TB BC WHERE BC.BOARD_NO=B.BOARD_NO) COMMENT_CNT, 
			(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=B.BOARD_NO AND LIKETB.TARGET_TYPE=1) LIKE_CNT,
			(SELECT COUNT(*) FROM BOARD_BOOKMARK_TB BBT WHERE BBT.TARGET_NO=B.BOARD_NO AND BBT.TARGET_TYPE='1') BOOKMARK_CNT
		FROM BOARD_TB B, BOARD_CATEGORY_TB C, USER_TB U, LOCATION_TB L
		WHERE C.CATEGORY_NO = B.CATEGORY_NO 
			AND B.USER_UID = U.USER_UID 
			AND U.LOCATION_NO = L.LOCATION_NO
			AND BOARD_NO = 68
			
			select * from board_tb;

		SELECT BR.BOARD_ROUTE_NO, BR.TARGET_TYPE, BR.TITLE, BR.USER_UID, BR.REG_DATE, U.DISPLAY_NAME, U.PHOTO_URL,
			(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=BR.BOARD_ROUTE_NO AND LIKETB.TARGET_TYPE='2') LIKE_CNT
		FROM BOARD_ROUTE_TB BR, USER_TB U
		WHERE BR.USER_UID = U.USER_UID
		GROUP BY BR.BOARD_ROUTE_NO
		ORDER BY LIKE_CNT, BR.REG_DATE DESC
		
		
		SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO
		 
		
		SELECT B.BOARD_NO, B.TITLE, B.TITLE AS PLACE, B.CONTENT, B.REG_DATE, B.CATEGORY_NO, C.CATEGORY_NAME, B.USER_UID, U.DISPLAY_NAME, U.PHOTO_URL,
			(SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO WHERE BL.TARGET_TYPE = '1') TARGET_TYPE, 
			(SELECT COUNT(*) FROM BOARD_COMMENT_TB BC WHERE BC.BOARD_NO=B.BOARD_NO) COMMENT_CNT, 
			(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=B.BOARD_NO AND LIKETB.TARGET_TYPE='1') LIKE_CNT,
			(SELECT COUNT(*) FROM BOARD_BOOKMARK_TB BBT WHERE BBT.TARGET_NO=B.BOARD_NO AND BBT.TARGET_TYPE='1') BOOKMARK_CNT
		FROM BOARD_TB B, BOARD_CATEGORY_TB C, USER_TB U
		WHERE C.CATEGORY_NO = B.CATEGORY_NO
			AND B.USER_UID = U.USER_UID
		UNION
		SELECT BR.BOARD_ROUTE_NO AS BOARD_NO, BR.TITLE, BR.PLACE, BR.CONTENT, BR.REG_DATE, BR.TARGET_TYPE AS CATEGORY_NO, BR.TITLE AS CATEGORY_NAME, BR.USER_UID, U.DISPLAY_NAME, U.PHOTO_URL, BR.TARGET_TYPE,
			(SELECT COUNT(*) FROM BOARD_COMMENT_TB BC WHERE BC.BOARD_NO=BR.BOARD_ROUTE_NO) COMMENT_CNT, 
			(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=BR.BOARD_ROUTE_NO AND LIKETB.TARGET_TYPE='2') LIKE_CNT,
			(SELECT COUNT(*) FROM BOARD_BOOKMARK_TB BBT WHERE BBT.TARGET_NO=BR.BOARD_ROUTE_NO AND BBT.TARGET_TYPE='2') BOOKMARK_CNT
		FROM BOARD_ROUTE_TB BR, USER_TB U
		WHERE BR.USER_UID = U.USER_UID
		GROUP BY BR.BOARD_ROUTE_NO
		ORDER BY REG_DATE DESC
		
		
		
		(SELECT B.BOARD_NO AS NO, B.REG_DATE, B.USER_UID, TITLE, B.BOARD_NO AS PICTURE, U.DISPLAY_NAME, 
				COALESCE((SELECT COUNT(*) FROM BOARD_LIKE_TB BL WHERE BL.TARGET_NO = B.BOARD_NO), 0) LIKE_CNT, 
				(SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO WHERE BL.TARGET_TYPE = '1') TARGET_TYPE
		 FROM BOARD_TB B, USER_TB U
		 WHERE B.USER_UID = U.USER_UID)
		UNION
		(SELECT R.RECORD_NO AS NO, R.REG_DATE, R.USER_UID, TITLE, R.PICTURE, U.DISPLAY_NAME, 
				COALESCE((SELECT COUNT(*) FROM RECORD_LIKE_TB RL WHERE RL.RECORD_NO = R.RECORD_NO), 0) LIKE_CNT, 
				(SELECT DISTINCT COALESCE(TARGET_TYPE, 3) FROM RECORD_TB R LEFT JOIN RECORD_LIKE_TB RL ON RL.RECORD_NO = R.RECORD_NO WHERE RL.RECORD_NO = R.RECORD_NO) TARGET_TYPE
		 FROM RECORD_TB R, USER_TB U
		 WHERE R.USER_UID = U.USER_UID
		 	AND R.ISOPEN = 1)
		UNION
		(SELECT BR.BOARD_ROUTE_NO AS NO, BR.REG_DATE, BR.USER_UID, BR.TITLE, BR.TARGET_TYPE AS PICTURE, U.DISPLAY_NAME, 
				(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=BR.BOARD_ROUTE_NO AND LIKETB.TARGET_TYPE='2') LIKE_CNT,
				BR.TARGET_TYPE
		 FROM BOARD_ROUTE_TB BR, USER_TB U
		 WHERE BR.USER_UID = U.USER_UID
		 GROUP BY BR.BOARD_ROUTE_NO)
		ORDER BY LIKE_CNT DESC, REG_DATE DESC
		
		
		
		
		 
		 
		 
		 delete from board_like_tb where target_no = 3 and target_type = '2'
		 
		 select * from board_like_tb order by reg_date desc


(SELECT B.BOARD_NO AS NO, B.REG_DATE, B.USER_UID, TITLE, B.BOARD_NO AS PICTURE, U.DISPLAY_NAME, 
				COALESCE((SELECT COUNT(*) FROM BOARD_LIKE_TB BL WHERE BL.TARGET_NO = B.BOARD_NO), 0) LIKE_CNT, 
				(SELECT DISTINCT COALESCE(TARGET_TYPE, 1) FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO) TARGET_TYPE
		 FROM BOARD_TB B, USER_TB U
		 WHERE B.USER_UID = U.USER_UID)
		UNION
		(SELECT R.RECORD_NO AS NO, R.REG_DATE, R.USER_UID, TITLE, R.PICTURE, U.DISPLAY_NAME, 
				COALESCE((SELECT COUNT(*) FROM RECORD_LIKE_TB RL WHERE RL.RECORD_NO = R.RECORD_NO), 0) LIKE_CNT, 
				(SELECT DISTINCT COALESCE(TARGET_TYPE, 3) FROM RECORD_TB R LEFT JOIN RECORD_LIKE_TB RL ON RL.RECORD_NO = R.RECORD_NO WHERE RL.RECORD_NO = R.RECORD_NO) TARGET_TYPE
		 FROM RECORD_TB R, USER_TB U
		 WHERE R.USER_UID = U.USER_UID
		 	AND R.ISOPEN = 1)
		UNION
		(SELECT BR.BOARD_ROUTE_NO AS NO, BR.REG_DATE, BR.USER_UID, BR.TITLE, BR.TARGET_TYPE AS PICTURE, U.DISPLAY_NAME, 
				(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=BR.BOARD_ROUTE_NO AND LIKETB.TARGET_TYPE='2') LIKE_CNT,
				BR.TARGET_TYPE
		 FROM BOARD_ROUTE_TB BR, USER_TB U
		 WHERE BR.USER_UID = U.USER_UID
		 GROUP BY BR.BOARD_ROUTE_NO)
		ORDER BY LIKE_CNT DESC, REG_DATE DESC










SELECT BR.BOARD_ROUTE_NO AS BOARD_NO, BR.TARGET_TYPE, BR.TITLE, BR.PLACE, BR.CONTENT, BR.USER_UID, BR.REG_DATE, U.DISPLAY_NAME, U.PHOTO_URL
		FROM BOARD_ROUTE_TB BR, USER_TB U
		WHERE BOARD_ROUTE_NO = 1
			AND BR.USER_UID = U.USER_UID
		GROUP BY BR.BOARD_ROUTE_NO

		

		
		SELECT * 
		FROM BOARD_LIKE_TB
		order by reg_date desc
	


SELECT BR.*, U.DISPLAY_NAME, U.PHOTO_URL
		FROM BOARD_ROUTE_TB BR, USER_TB U
		WHERE BR.USER_UID = U.USER_UID
		ORDER BY BR.REG_DATE DESC


SELECT COUNT(DISTINCT BOARD_ROUTE_NO)
		FROM BOARD_ROUTE_TB
		
 
 select * from record_tb;
 
 
(SELECT DISTINCT COALESCE(TARGET_TYPE, 1), BOARD_NO FROM BOARD_TB B LEFT JOIN BOARD_LIKE_TB BL ON BL.TARGET_NO = B.BOARD_NO)
 
 
-- 모든 게시판
SELECT *, 
	(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=B.BOARD_NO AND LIKETB.TARGET_TYPE=1) LIKE_CNT
FROM BOARD_TB B, BOARD_CATEGORY_TB C, USER_TB U, LOCATION_TB L
WHERE C.CATEGORY_NO = B.CATEGORY_NO 
	AND B.USER_UID = U.USER_UID 
	AND U.LOCATION_NO = L.LOCATION_NO
ORDER BY LIKE_CNT DESC
LIMIT 1, 10;

-- 카테고리별 
SELECT *, 
	(SELECT COUNT(*) FROM BOARD_LIKE_TB LIKETB WHERE LIKETB.TARGET_NO=B.BOARD_NO AND LIKETB.TARGET_TYPE=1) LIKE_CNT
FROM BOARD_TB B, BOARD_CATEGORY_TB C, USER_TB U, LOCATION_TB L
WHERE C.CATEGORY_NO = B.CATEGORY_NO 
	AND B.USER_UID = U.USER_UID 
	AND U.LOCATION_NO = L.LOCATION_NO
	AND B.CATEGORY_NO = #{categoryNo}
ORDER BY LIKE_CNT DESC
LIMIT #{page}, #{count}

-- 