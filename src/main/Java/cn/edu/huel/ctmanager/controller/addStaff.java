package cn.edu.huel.ctmanager.controller;

import cn.edu.huel.ctmanager.pojo.Staff;
import cn.edu.huel.ctmanager.pojo.UncommonStaff;
import cn.edu.huel.ctmanager.service.*;
import cn.edu.huel.ctmanager.vo.StaffVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class addStaff {
    private  StaffVo add_staffVo;
    private UncommonStaff add_uncommonStaff;
    @Autowired
    private StaffService staffService;
    @Autowired
    private PostService postService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private TitleService titleService;
    @Autowired
    private uncommonStaffService uncom;
    @RequestMapping("/addStaff.action")
    @ResponseBody
    public void insertStaff(StaffVo staffVo){
        System.out.println(staffVo.getS_birthday());
        System.out.println(staffVo.getS_id());
        add_staffVo=staffVo;
    }
    @RequestMapping("/addunStaff.action")
    @ResponseBody
    public String add(UncommonStaff uncommonStaff){
        add_uncommonStaff=uncommonStaff;
        Staff staff1=new Staff();
        staff1.setS_id(add_staffVo.getS_id());
        staff1.setS_name(add_staffVo.getS_name());
        staff1.setS_birthday(add_staffVo.getS_birthday());
        staff1.setS_gender(add_staffVo.getS_gender());
        staff1.setS_tel(add_staffVo.getS_tel());
        staff1.setS_statue(add_staffVo.getS_statue());
        add_uncommonStaff.setId(add_staffVo.getS_id());
        int s_title=titleService.selectT_id(add_staffVo.getT_name());
        int s_department=departmentService.selectD_id(add_staffVo.getD_name());
        int s_post=postService.seletcP_id(add_staffVo.getP_category(),add_staffVo.getP_type());
        staff1.setS_post(s_post);
        staff1.setS_title(s_title);
        staff1.setS_department(s_department);

        int rows=uncom.insertStaff(staff1);
        int row1=uncom.insetuncommon(add_uncommonStaff);
        if(rows>0&&row1>0){
            return"OK";
        }else{
            return"FALL";
        }


    }




}
