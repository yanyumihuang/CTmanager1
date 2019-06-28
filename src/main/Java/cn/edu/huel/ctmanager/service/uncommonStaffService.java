package cn.edu.huel.ctmanager.service;

import cn.edu.huel.ctmanager.pojo.Staff;
import cn.edu.huel.ctmanager.pojo.UncommonStaff;

public interface uncommonStaffService {
    public int insetuncommon(UncommonStaff uncommonStaff);
    public int insertStaff(Staff staff);
    public int updateUncommonStaff(UncommonStaff uncommonStaff);

}
