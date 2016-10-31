package kr.co.rscamper.domain;

import java.util.Date;

public class UserVO {
	private String userUid;
	private String displayName;
	private String photoUrl;
	private String email;
	private String providerUid;
	private String providerName;
	private String providerDisplayName;
	private String providerPhotoUrl;
	private String providerEmail;
	private int locationNo;
	private String phoneNumber;
	private String websiteUrl;
	private String introduce;
	private Date birthday;
	private Date regDate;
	
	public String getUserUid() {
		return userUid;
	}
	public void setUserUid(String userUid) {
		this.userUid = userUid;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	public String getProviderUid() {
		return providerUid;
	}
	public void setProviderUid(String providerUid) {
		this.providerUid = providerUid;
	}
	public String getProviderName() {
		return providerName;
	}
	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}
	public String getProviderDisplayName() {
		return providerDisplayName;
	}
	public void setProviderDisplayName(String providerDisplayName) {
		this.providerDisplayName = providerDisplayName;
	}
	public String getProviderPhotoUrl() {
		return providerPhotoUrl;
	}
	public void setProviderPhotoUrl(String providerPhotoUrl) {
		this.providerPhotoUrl = providerPhotoUrl;
	}
	public String getProviderEmail() {
		return providerEmail;
	}
	public void setProviderEmail(String providerEmail) {
		this.providerEmail = providerEmail;
	}
	public int getLocationNo() {
		return locationNo;
	}
	public void setLocationNo(int locationNo) {
		this.locationNo = locationNo;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getWebsiteUrl() {
		return websiteUrl;
	}
	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "UserVO [userUid=" + userUid + ", displayName=" + displayName + ", photoUrl=" + photoUrl + ", email="
				+ email + ", providerUid=" + providerUid + ", providerName=" + providerName + ", providerDisplayName="
				+ providerDisplayName + ", providerPhotoUrl=" + providerPhotoUrl + ", providerEmail=" + providerEmail
				+ ", locationNo=" + locationNo + ", phoneNumber=" + phoneNumber + ", websiteUrl=" + websiteUrl
				+ ", introduce=" + introduce + ", birthday=" + birthday + ", regDate=" + regDate + ", getUserUid()="
				+ getUserUid() + ", getDisplayName()=" + getDisplayName() + ", getEmail()=" + getEmail()
				+ ", getPhotoUrl()=" + getPhotoUrl() + ", getProviderUid()=" + getProviderUid() + ", getProviderName()="
				+ getProviderName() + ", getProviderDisplayName()=" + getProviderDisplayName()
				+ ", getProviderPhotoUrl()=" + getProviderPhotoUrl() + ", getProviderEmail()=" + getProviderEmail()
				+ ", getLocationNo()=" + getLocationNo() + ", getPhoneNumber()=" + getPhoneNumber()
				+ ", getWebsiteUrl()=" + getWebsiteUrl() + ", getIntroduce()=" + getIntroduce() + ", getBirthday()="
				+ getBirthday() + ", getRegDate()=" + getRegDate() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
}
