/**
 * 
 */
package cn.edu.huel.ctmanager.dao;

import cn.edu.huel.ctmanager.pojo.Staff;
import cn.edu.huel.ctmanager.pojo.UncommonStaff;
import cn.edu.huel.ctmanager.vo.StaffVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;



public interface StaffDao {
	public int  insertStaff(Staff staff);
	public List<StaffVo> selectStaffesByPage(@Param("p_type") String p_type, @Param("p_category") String p_category, @Param("s_name") String s_name,@Param("d_name") String d_name);
	public List<StaffVo> selectStaffesByName(String name);
    public StaffVo selectStaffById(String s_id);
	public int deleteStaffById(int s_id);
	public  int updateStaff(StaffVo staffVo);

	
}
