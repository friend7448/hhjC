package Session;

import java.io.Serializable;

/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		: 
 *
 */
public class SessionInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	private String userSn = "";
	private String userId = "";
	private String userName = "";
	private String userPw = "";
	private String cell = "";
	private String email = "";
	private String updtDt = "";
	private String updusrSn = "";
	private String privgrpSn = "";
	private String privgrpName = "";
	private String privgrpDesc = "";
	private String priort = "";
	private String useYn = "";
	
	public String getUserSn() {
		return userSn;
	}
	public void setUserSn(String userSn) {
		this.userSn = userSn;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getCell() {
		return cell;
	}
	public void setCell(String cell) {
		this.cell = cell;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUpdtDt() {
		return updtDt;
	}
	public void setUpdtDt(String updtDt) {
		this.updtDt = updtDt;
	}
	public String getUpdusrSn() {
		return updusrSn;
	}
	public void setUpdusrSn(String updusrSn) {
		this.updusrSn = updusrSn;
	}
	public String getPrivgrpSn() {
		return privgrpSn;
	}
	public void setPrivgrpSn(String privgrpSn) {
		this.privgrpSn = privgrpSn;
	}
	public String getPrivgrpName() {
		return privgrpName;
	}
	public void setPrivgrpName(String privgrpName) {
		this.privgrpName = privgrpName;
	}
	public String getPrivgrpDesc() {
		return privgrpDesc;
	}
	public void setPrivgrpDesc(String privgrpDesc) {
		this.privgrpDesc = privgrpDesc;
	}
	public String getPriort() {
		return priort;
	}
	public void setPriort(String priort) {
		this.priort = priort;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	
}