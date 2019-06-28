package cn.edu.huel.ctmanager.dao;

import cn.edu.huel.ctmanager.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    public User findUser(@Param("usercode") String usercode, @Param("password") String password);
}
