/**
 * 
 */
package cn.edu.huel.ctmanager.serviceImpl;

import java.util.HashMap;
import java.util.List;
import cn.edu.huel.ctmanager.dao.StaffDao;
import cn.edu.huel.ctmanager.dao.uncommonStaffDao;
import cn.edu.huel.ctmanager.pojo.Staff;
import cn.edu.huel.ctmanager.pojo.UncommonStaff;
import cn.edu.huel.ctmanager.service.StaffService;
import cn.edu.huel.ctmanager.vo.StaffVo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



/**
 *@author: Administrator
 *@function:TODO
 *@time:2019��6��23��
 */
@Service
public class StaffServiceImpl implements StaffService {
@Autowired
private StaffDao staffDao;
@Autowired
    private uncommonStaffDao uncommonStaffDao;

    @Override
    public int  insertStaff(Staff staff) {
   return  staffDao.insertStaff(staff);
    }

    @Override
    public HashMap<String, Object>  selectStaffesByPage(int currPage,String p_type,String p_category,String s_name,String d_name) {
        HashMap<String, Object> data = new HashMap<>();
        Integer pageNum = currPage;
        Integer pageSize = 3;
        Page page = PageHelper.startPage(pageNum, pageSize, true);
        List<StaffVo> list = staffDao.selectStaffesByPage(p_type,p_category,s_name,d_name);
        data.put("total", page.getTotal());
        data.put("nowPage", pageNum);
        data.put("data", list);
        return  data;
    }

    @Override
    public List<StaffVo> selectStaffesByName(String name) {
        return null;
    }

    @Override
    public int upadteStaff(StaffVo staffVo) {
        int row=staffDao.updateStaff(staffVo);
        return row;
    }


    @Override
    public int deleteStaff(int id) {
        return staffDao.deleteStaffById(id);

    }

    @Override
    public StaffVo selectStaffById(String s_id) {
        StaffVo staffVo=staffDao.selectStaffById(s_id);
        return staffVo;
    }

  @Override
    public UncommonStaff selectuncommonStaffById(int id) {
     UncommonStaff uncommonStaff=uncommonStaffDao.selectuncommonStaffById(id);
        return uncommonStaff;
    }


}
