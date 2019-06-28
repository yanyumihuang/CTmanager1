/**
 * 
 */
package cn.edu.huel.ctmanager.controller;

import cn.edu.huel.ctmanager.pojo.Staff;
import cn.edu.huel.ctmanager.pojo.UncommonStaff;
import cn.edu.huel.ctmanager.service.*;
import cn.edu.huel.ctmanager.vo.StaffVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;


@Controller
public class StaffController {
    @Autowired
	private StaffService staffService;
    @Autowired
    private PostService postService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private TitleService titleService;
    @Autowired
    private uncommonStaffService uncommonStaffService;


	@RequestMapping("/showteacher.action")
	public String  showStaff(@RequestParam(defaultValue = "1") String pageNumber, String p_type, String p_category, String s_name, String d_name, Model model,HttpSession session){
        System.out.println("前当"+pageNumber);
        session.setAttribute("pageN",pageNumber);
        System.out.println("1"+p_category+"2"+p_type+"3"+s_name+"4"+d_name);
        HashMap<String,Object> data=staffService.selectStaffesByPage(Integer.parseInt(pageNumber),p_type,p_category,s_name,d_name);
        List<String> categoriesList=postService.seletcP_category();
        List<String> types=postService.seletcP_type();
        List<String> departmentNames=departmentService.selectD_name();
        List<String> titleNames=titleService.select_T_name();
        List<Staff> list=(List<Staff>)data.get("data");
        System.out.println("shujuliang"+list.size());
        model.addAttribute("teacher",list);
        model.addAttribute("total",data.get("total"));
        model.addAttribute("categoriesList", categoriesList);
        model.addAttribute("types",types);
        model.addAttribute("departmentNames", departmentNames);
        model.addAttribute("titleNames", titleNames);

        return "t_manager";
        }
        @GetMapping("deleteStaff.action")
        @ResponseBody
    public String deleteStaff(String s_id){
	    System.out.println(s_id);
	    int a=staffService.deleteStaff(Integer.parseInt(s_id));
	    if(a>0){
	        return "OK";
        }
	    return  "fall";
        }
        @RequestMapping(value = "/updateStaff.action")
        @ResponseBody
    public String updateStaff(String s_id,String s_name, String s_gender,String  s_birthday,String p_type,String s_tel,String t_name,String d_name,String s_statue,String p_category) throws ParseException {


            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date d = null;
            d = format.parse(s_birthday);
            java.sql.Date s_birthday1 = new java.sql.Date(d.getTime());
	    StaffVo staffVo=new StaffVo(Integer.parseInt(s_id),s_name,s_gender,s_birthday1,s_tel,s_statue,p_category,p_type,d_name,t_name);
      int row=staffService.upadteStaff(staffVo);
	  if(row>0){
	      return "OK";
      }
      return "FALL";

    }
    @RequestMapping("/findById.action")
    @ResponseBody
    public StaffVo findStaff(String s_id) {
       StaffVo staffVo= staffService.selectStaffById(s_id);
        System.out.println(staffVo.getS_birthday());
       return  staffVo;
	}
	@RequestMapping("/findUnStaffById.action")
    @ResponseBody
    public UncommonStaff findUncommonStaff(String id) {
       UncommonStaff uncommonStaff= staffService.selectuncommonStaffById(Integer.parseInt(id));
        return uncommonStaff;
    }
    @RequestMapping("/updateUnStaff.action")
    @ResponseBody
    public String  updateUncommonStaff(UncommonStaff uncommonStaff) {
	    System.out.println(uncommonStaff.getId());
        int row= uncommonStaffService.updateUncommonStaff(uncommonStaff);

	   if(row>0){
	       return  "OK";
       }return "FALL";
	}
    @RequestMapping("/logout.action")
    public String  logout(HttpSession session){
       session.invalidate();
       return "redirect:login.action";
    }
    @RequestMapping("/login.action")
    public String  login(){
        return "login";
    }

    }
