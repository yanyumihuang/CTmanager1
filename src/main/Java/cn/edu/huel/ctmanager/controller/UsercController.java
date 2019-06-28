package cn.edu.huel.ctmanager.controller;

import cn.edu.huel.ctmanager.pojo.User;
import cn.edu.huel.ctmanager.service.UserService;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
public class UsercController {
@Autowired
private UserService userService;
@PostMapping("/login.action")
    public  String login(HttpServletResponse response, String usercode, String password, Model model, HttpSession session){
    response.setContentType("text/html;charset=UTF-8");
    User user=userService.findUser(usercode,password);
   if (user!=null){
       session.setAttribute("user_session",user);
   return "redirect:/showteacher.action";
   }
   model.addAttribute("msg","账号或密码错误请重新输入");
   return "login";
}
@PostMapping("/logout.action")
    public String logout(HttpSession session){
      session.invalidate();
    return  "redirect:login.action";
}
@GetMapping("/login.action")
    public String tologin(){
    return  "login";
}



}
