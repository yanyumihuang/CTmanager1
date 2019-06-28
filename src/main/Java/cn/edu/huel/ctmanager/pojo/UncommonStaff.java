package cn.edu.huel.ctmanager.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

public class UncommonStaff  {
    private Integer  id;
	private String nation;//民族
	private String idcard;//身份证号
	private String political;//政治面貌
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
	private Date worktime;//参加工作时间
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
	private Date entrytime;//进入本单位时间
	private  String place;//籍贯
	private String education;//学历
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
	private Date graduationtime;//毕业年月
	private String university;//毕业院校
	private String major;//专业
	private String postgrade;//岗位等级
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
	private Date positiontime;//岗位聘任时间
	private String postlegacy;//岗位遗留问题
	private String level;//领导职务层次
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
	private Date onjobtime;//任现职时间
	private String form;//进入本单位形式
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
	private Date schooltime;//校聘时间
	private String rank;//职称
	private String agreement;//协议
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
	private Date signtime;//协议时间
	private String ischange;//异动情况
	public UncommonStaff() {
		super();
	}

    public int  getId() {
        return id;
    }

    public void setId(int  id) {
        this.id = id;
    }

    public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getPolitical() {
		return political;
	}
	public void setPolitical(String political) {
		this.political = political;
	}
	public Date getWorktime() {
		return worktime;
	}
	public void setWorktime(Date worktime) {
		this.worktime = worktime;
	}
	public Date getEntrytime() {
		return entrytime;
	}
	public void setEntrytime(Date entrytime) {
		this.entrytime = entrytime;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public Date getGraduationtime() {
		return graduationtime;
	}
	public void setGraduationtime(Date graduationtime) {
		this.graduationtime = graduationtime;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPostgrade() {
		return postgrade;
	}
	public void setPostgrade(String postgrade) {
		this.postgrade = postgrade;
	}
	public Date getPositiontime() {
		return positiontime;
	}
	public void setPositiontime(Date positiontime) {
		this.positiontime = positiontime;
	}
	public String getPostlegacy() {
		return postlegacy;
	}
	public void setPostlegacy(String postlegacy) {
		this.postlegacy = postlegacy;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public Date getOnjobtime() {
		return onjobtime;
	}
	public void setOnjobtime(Date onjobtime) {
		this.onjobtime = onjobtime;
	}
	public String getForm() {
		return form;
	}
	public void setForm(String form) {
		this.form = form;
	}
	public Date getSchooltime() {
		return schooltime;
	}
	public void setSchooltime(Date schooltime) {
		this.schooltime = schooltime;
	}
	
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	
	public String getAgreement() {
		return agreement;
	}
	public void setAgreement(String agreement) {
		this.agreement = agreement;
	}
	public Date getSigntime() {
		return signtime;
	}
	public void setSigntime(Date signtime) {
		this.signtime = signtime;
	}
	public String getIschange() {
		return ischange;
	}
	public void setIschange(String ischange) {
		this.ischange = ischange;
	}
	@Override
	public String toString() {
		return "UncommonStaffVo [+nation=" + nation + ", idcard=" + idcard + ", political=" + political
				+ ", worktime=" + worktime + ", entrytime=" + entrytime + ", place=" + place + ", education="
				+ education + ", graduationtime=" + graduationtime + ", university=" + university + ", major=" + major
				+ ", postgrade=" + postgrade + ", positiontime=" + positiontime + ", postlegacy=" + postlegacy
				+ ", level=" + level + ", onjobtime=" + onjobtime + ", form=" + form + ", schooltime=" + schooltime
				+ ", rank=" + rank + ", agreement=" + agreement + ", signtime=" + signtime + ", ischange=" + ischange
				+ ", staff=" + super.toString() + "]";
	}
	
}
