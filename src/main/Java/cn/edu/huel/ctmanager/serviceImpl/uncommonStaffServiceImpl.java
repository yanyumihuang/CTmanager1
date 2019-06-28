package cn.edu.huel.ctmanager.serviceImpl;


import cn.edu.huel.ctmanager.dao.StaffDao;
import cn.edu.huel.ctmanager.dao.uncommonStaffDao;
import cn.edu.huel.ctmanager.pojo.Staff;
import cn.edu.huel.ctmanager.pojo.UncommonStaff;
import cn.edu.huel.ctmanager.service.uncommonStaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional(rollbackFor = Exception.class)
public class uncommonStaffServiceImpl implements uncommonStaffService {
   @Autowired
   private StaffDao staffDao;
   @Autowired
   private uncommonStaffDao uncommonStaffDao;

    @Override
    public int insetuncommon(UncommonStaff uncommonStaff) {
        return uncommonStaffDao.insertUncommonStaff(uncommonStaff);

    }
    @Override
    public int insertStaff(Staff staff) {
        return  staffDao.insertStaff(staff);
    }

    @Override
    public int updateUncommonStaff(UncommonStaff uncommonStaff) {
        return uncommonStaffDao.updateUncommonStaff(uncommonStaff);
    }
}
