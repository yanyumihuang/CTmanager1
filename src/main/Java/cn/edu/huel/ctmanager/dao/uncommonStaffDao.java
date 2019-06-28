package cn.edu.huel.ctmanager.dao;

import cn.edu.huel.ctmanager.pojo.UncommonStaff;

public interface  uncommonStaffDao {
    public int insertUncommonStaff (UncommonStaff uncommonStaff);
    public UncommonStaff selectuncommonStaffById(int id);
    public int updateUncommonStaff (UncommonStaff uncommonStaff);
}
