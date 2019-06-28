/**
 * 
 */
package cn.edu.huel.ctmanager.vo;

import cn.edu.huel.ctmanager.pojo.Staff;

import javax.print.DocFlavor;
import java.sql.Date;



/**
 *@author: Administrator
 *@function:TODO
 *@time:2019��6��23��
 */
public class StaffVo extends Staff {
private String p_category;
private String p_type;
private String d_name;
private String t_name;
private String s_birthday1;
public StaffVo(){
    super();
}

    public StaffVo(int s_id, String s_name, String s_gender, Date s_birthday, String s_tel,  String s_statue, String p_category, String p_type, String d_name, String t_name) {
        super(s_id, s_name, s_gender, s_birthday,s_tel, s_statue);
        this.p_category = p_category;
        this.p_type = p_type;
        this.d_name = d_name;
        this.t_name = t_name;
    }


    public String getS_birthday1() {
        return s_birthday1;
    }

    public void setS_birthday1(String s_birthday1) {
        this.s_birthday1 = s_birthday1;
    }

    public String getD_name() {
        return d_name;
    }

    public void setD_name(String d_name) {
        this.d_name = d_name;
    }

    public String getP_category() {
        return p_category;
    }

    public void setP_category(String p_category) {
        this.p_category = p_category;
    }

    public String getP_type() {
        return p_type;
    }

    public void setP_type(String p_type) {
        this.p_type = p_type;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    @Override
    public String toString() {
        return "StaffVo{" +
                "p_category='" + p_category + '\'' +
                ", p_type='" + p_type + '\'' +
                ", d_name='" + d_name + '\'' +
                ", t_name='" + t_name + '\'' +
                "} " + super.toString();
    }

    /**
	 * 
	 */
	
}
