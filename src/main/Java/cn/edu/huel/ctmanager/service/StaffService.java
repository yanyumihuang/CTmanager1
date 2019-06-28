/**
 * 
 */
package cn.edu.huel.ctmanager.service;

import java.util.HashMap;
import java.util.List;

import cn.edu.huel.ctmanager.pojo.Staff;
import cn.edu.huel.ctmanager.pojo.UncommonStaff;
import cn.edu.huel.ctmanager.vo.StaffVo;;

public interface StaffService {
	public HashMap<String, Object> selectStaffesByPage(int currPage,String p_type,String p_category,String s_name,String d_name);
    public int insertStaff(Staff staff);
    public List<StaffVo> selectStaffesByName(String name);
    public int upadteStaff(StaffVo staffVo);
    public int deleteStaff(int id);
    public StaffVo selectStaffById(String s_id);
    public UncommonStaff selectuncommonStaffById(int id);


}
