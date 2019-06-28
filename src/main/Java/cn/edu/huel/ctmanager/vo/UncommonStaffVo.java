package cn.edu.huel.ctmanager.vo;

import cn.edu.huel.ctmanager.pojo.Staff;

import java.sql.Date;


public class UncommonStaffVo extends Staff {

    private int id;//工号
    private String nation;//民族
    private String idcard;//身份证号
    private String political;//政治面貌
    private String worktime;//参加工作时间
    private String  entrytime;//进入本单位时间
    private  String place;//籍贯
    private String education;//学历
    private String graduationtime;//毕业年月
    private String university;//毕业院校
    private String major;//专业
    private String postgrade;//岗位等级
    private String  positiontime;//岗位聘任时间
    private String postlegacy;//岗位遗留问题
    private String level;//领导职务层次
    private String onjobtime;//任现职时间
    private String form;//进入本单位形式
    private String schooltime;//校聘时间
    private String rank;//职称
    private String agreement;//协议
    private String signtime;//协议时间
    private String ischange;//异动情况

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    public String getWorktime() {
        return worktime;
    }

    public void setWorktime(String worktime) {
        this.worktime = worktime;
    }

    public String getEntrytime() {
        return entrytime;
    }

    public void setEntrytime(String entrytime) {
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

    public String getGraduationtime() {
        return graduationtime;
    }

    public void setGraduationtime(String graduationtime) {
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

    public String getPositiontime() {
        return positiontime;
    }

    public void setPositiontime(String positiontime) {
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

    public String getOnjobtime() {
        return onjobtime;
    }

    public void setOnjobtime(String onjobtime) {
        this.onjobtime = onjobtime;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public String getSchooltime() {
        return schooltime;
    }

    public void setSchooltime(String schooltime) {
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

    public String getSigntime() {
        return signtime;
    }

    public void setSigntime(String signtime) {
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
        return "UncommonStaffVo{" +
                "id=" + id +
                ", nation='" + nation + '\'' +
                ", idcard='" + idcard + '\'' +
                ", political='" + political + '\'' +
                ", worktime='" + worktime + '\'' +
                ", entrytime='" + entrytime + '\'' +
                ", place='" + place + '\'' +
                ", education='" + education + '\'' +
                ", graduationtime='" + graduationtime + '\'' +
                ", university='" + university + '\'' +
                ", major='" + major + '\'' +
                ", postgrade='" + postgrade + '\'' +
                ", positiontime='" + positiontime + '\'' +
                ", postlegacy='" + postlegacy + '\'' +
                ", level='" + level + '\'' +
                ", onjobtime='" + onjobtime + '\'' +
                ", form='" + form + '\'' +
                ", schooltime='" + schooltime + '\'' +
                ", rank='" + rank + '\'' +
                ", agreement='" + agreement + '\'' +
                ", signtime='" + signtime + '\'' +
                ", ischange='" + ischange + '\'' +
                "} " + super.toString();
    }
}
