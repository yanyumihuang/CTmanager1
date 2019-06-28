package cn.edu.huel.ctmanager.serviceImpl;


import cn.edu.huel.ctmanager.dao.UserDao;
import cn.edu.huel.ctmanager.pojo.User;
import cn.edu.huel.ctmanager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceIm implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public User findUser(String usercode, String password) {
     User user=this.userDao.findUser(usercode,password);
        return user;
    }
}
