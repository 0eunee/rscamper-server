package kr.co.rscamper.persistence;

import kr.co.rscamper.domain.UserPhotoVO;
import kr.co.rscamper.domain.UserVO;

public interface UserDAO {

	public UserVO selectMainByUidComment(String userUid);
	
	/** 회원정보 입력 */
	public void insertUser(UserVO user);

	/** UID로 회원정보 삭제 */
	public void deleteUserByUid(String userUid);

	/** UID로 회원정보 조회 */
	public UserVO selectUserByUid(String userUid);
	
	/** 기존 매칭되는 사진 정보 가져오기(userUid, type) */
	public UserPhotoVO selectUserPhotoPath(UserPhotoVO userPhoto);
	
	/** 기존에 매칭되는 사진 정보 있으면 삭제(userUid, type) */
	public void deleteUserPhotoByNo(int photoNo);
	
	/** 이미지 파일 업로드 정보 입력 */
	public void insertUserPhoto(UserPhotoVO userPhoto);
	
	/** USER_TB에 USER_UID에 PHOTO_URL수정 */
	public void updateUserPhotoUrl(UserPhotoVO userPhoto);
	
	
}
