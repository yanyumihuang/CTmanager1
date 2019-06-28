package cn.edu.huel.ctmanager.pojo;

import java.io.Serializable;

public class User implements Serializable {
    private static final long serialVAersionUID=1L;
    private Integer sys_id;
    private String sys_password;
    private Integer sys_purview;

    public Integer getSys_id() {
        return sys_id;
    }

    public void setSys_id(Integer sys_id) {
        this.sys_id = sys_id;
    }

    public String getSys_password() {
        return sys_password;
    }

    public void setSys_password(String sys_password) {
        this.sys_password = sys_password;
    }

    public Integer getSys_purview() {
        return sys_purview;
    }

    public void setSys_purview(Integer sys_purview) {
        this.sys_purview = sys_purview;
    }

    @Override
    public String toString() {
        return "User{" +
                "sys_id=" + sys_id +
                ", sys_password='" + sys_password + '\'' +
                ", sys_purview=" + sys_purview +
                '}';
    }
}
