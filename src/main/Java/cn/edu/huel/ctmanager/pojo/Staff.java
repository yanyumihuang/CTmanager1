/**
 * 
 */
package cn.edu.huel.ctmanager.pojo;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

/**
 *@author: Administrator
 *@function:TODO
 *@time:2019��6��23��
 */
public class Staff {
private Integer s_id;
private String s_name;
private String s_gender;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
private Date s_birthday;
private int s_post;
private String s_tel;
private int s_title;
private int s_department;
private String s_statue;

/**
 * 
 */
public Staff() {
	super();
}
/**
 * @param s_id
 * @param s_name
 * @param s_gender
 * @param s_birthday
 * @param s_post
 * @param s_tel
 * @param s_title
 * @param s_department
 * @param s_statue
 */
public Staff(int s_id, String s_name, String s_gender, Date s_birthday, int s_post, String s_tel, int s_title,
		int s_department, String s_statue) {
	super();
	this.s_id = s_id;
	this.s_name = s_name;
	this.s_gender = s_gender;
	this.s_birthday = s_birthday;
	this.s_post = s_post;
	this.s_tel = s_tel;
	this.s_title = s_title;
	this.s_department = s_department;
	this.s_statue = s_statue;
}
    public Staff(int s_id, String s_name, String s_gender, Date s_birthday, String s_tel, String s_statue) {
        super();
        this.s_id = s_id;
        this.s_name = s_name;
        this.s_gender = s_gender;
        this.s_birthday = s_birthday;
        this.s_tel = s_tel;
        this.s_statue = s_statue;
    }
/**
 * @return the s_id
 */
public int getS_id() {
	return s_id;
}
/**
 * @param s_id the s_id to set
 */
public void setS_id(int s_id) {
	this.s_id = s_id;
}
/**
 * @return the s_name
 */
public String getS_name() {
	return s_name;
}
/**
 * @param s_name the s_name to set
 */
public void setS_name(String s_name) {
	this.s_name = s_name;
}
/**
 * @return the s_gender
 */
public String getS_gender() {
	return s_gender;
}
/**
 * @param s_gender the s_gender to set
 */
public void setS_gender(String s_gender) {
	this.s_gender = s_gender;
}
/**
 * @return the s_birthday
 */
public Date getS_birthday() {
	return s_birthday;
}
/**
 * @param s_birthday the s_birthday to set
 */
public void setS_birthday(Date s_birthday) {
	this.s_birthday = s_birthday;
}
/**
 * @return the s_post
 */
public int getS_post() {
	return s_post;
}
/**
 * @param s_post the s_post to set
 */
public void setS_post(int s_post) {
	this.s_post = s_post;
}
/**
 * @return the s_tel
 */
public String getS_tel() {
	return s_tel;
}
/**
 * @param s_tel the s_tel to set
 */
public void setS_tel(String s_tel) {
	this.s_tel = s_tel;
}
/**
 * @return the s_title
 */
public int getS_title() {
	return s_title;
}
/**
 * @param s_title the s_title to set
 */
public void setS_title(int s_title) {
	this.s_title = s_title;
}
/**
 * @return the s_department
 */
public int getS_department() {
	return s_department;
}
/**
 * @param s_department the s_department to set
 */
public void setS_department(int s_department) {
	this.s_department = s_department;
}
/**
 * @return the s_statue
 */
public String getS_statue() {
	return s_statue;
}
/**
 * @param s_statue the s_statue to set
 */
public void setS_statue(String s_statue) {
	this.s_statue = s_statue;
}
/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "Staff [s_id=" + s_id + ", s_name=" + s_name + ", s_gender=" + s_gender + ", s_birthday=" + s_birthday
			+ ", s_post=" + s_post + ", s_tel=" + s_tel + ", s_title=" + s_title + ", s_department=" + s_department
			+ ", s_statue=" + s_statue + "]";
}
/**
 * @return the start
 */
}
