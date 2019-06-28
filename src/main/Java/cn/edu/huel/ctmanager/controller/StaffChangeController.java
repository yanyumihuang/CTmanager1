package cn.edu.huel.ctmanager.controller;


import cn.edu.huel.ctmanager.pojo.StaffChange;
import cn.edu.huel.ctmanager.service.StaffChangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
public class StaffChangeController {
    @Autowired
    private StaffChangeService staffChangeService;
    @RequestMapping("/addchang.action")
    @ResponseBody
    public  String addchange(StaffChange staffchange){
       int row =staffChangeService.insertchange(staffchange);
    if (row>0){
        return  "OK";
    }
    return "FALL";
    }
    @RequestMapping("/showchangs.action")
       public  String ashowchanges(String s_id, @RequestParam(defaultValue = "1") String pageNumber, Model model, HttpSession session){
        session.setAttribute("pageN",pageNumber);
        HashMap<String, Object> data=null;
        if(s_id==null) {
            data = staffChangeService.selectchange(pageNumber);
        }
        else {
            data = staffChangeService.selectchange1(Integer.parseInt(s_id),pageNumber);
        }
        List<StaffChange> list=(List<StaffChange>)data.get("data");
        model.addAttribute("staffchanges",list);
        model.addAttribute("total",data.get("total"));
        return "staffchange";
    }
    @RequestMapping("/toStaffChange.action")
    public String toStaffChange(){

        return  "staffchange";

    }
}
