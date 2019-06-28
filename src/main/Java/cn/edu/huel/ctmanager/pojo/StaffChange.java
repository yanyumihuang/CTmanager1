package cn.edu.huel.ctmanager.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

public class StaffChange {
    private  Integer c_id;
    private Integer s_id;
    private String c_situation;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd ", timezone = "GMT+8")
    private Date  c_changetime;
    private String c_explain;

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public Integer getS_id() {
        return s_id;
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }

    public String getC_situation() {
        return c_situation;
    }

    public void setC_situation(String c_situation) {
        this.c_situation = c_situation;
    }

    public Date getC_changetime() {
        return c_changetime;
    }

    public void setC_changetime(Date c_changetime) {
        this.c_changetime = c_changetime;
    }

    public String getC_explain() {
        return c_explain;
    }

    public void setC_explain(String c_explain) {
        this.c_explain = c_explain;
    }

    @Override
    public String toString() {
        return "StaffChange{" +
                "c_id=" + c_id +
                ", s_id=" + s_id +
                ", c_situation='" + c_situation + '\'' +
                ", changetime=" + c_changetime +
                ", c_scplain='" + c_explain + '\'' +
                '}';
    }
}
