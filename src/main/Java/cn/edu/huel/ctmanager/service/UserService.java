package cn.edu.huel.ctmanager.service;


import cn.edu.huel.ctmanager.pojo.User;

public interface UserService {
    public User findUser(String usercode, String password);
}
