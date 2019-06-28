package cn.edu.huel.ctmanager.serviceImpl;

import cn.edu.huel.ctmanager.dao.StaffChangeDao;
import cn.edu.huel.ctmanager.pojo.StaffChange;
import cn.edu.huel.ctmanager.service.StaffChangeService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StaffChangeServiceImpl implements StaffChangeService {
   @Autowired
   private StaffChangeDao staffChangeDao;
    @Override
    public int insertchange(StaffChange staffChange) {
      int row =staffChangeDao.insertchange(staffChange);
        return row;
    }



    @Override
    public HashMap<String, Object> selectchange( String pageNumber) {
        HashMap<String, Object> data = new HashMap<>();
        Integer pageNum = Integer.parseInt(pageNumber);
        Integer pageSize = 3;
        Page page = PageHelper.startPage(pageNum, pageSize, true);
        List<StaffChange> list = staffChangeDao.selectchange();
        data.put("total", page.getTotal());
        data.put("nowPage", pageNum);
        data.put("data", list);
        return  data;
    }
    @Override
    public HashMap<String, Object> selectchange1(int s_id, String pageNumber) {
        HashMap<String, Object> data = new HashMap<>();
        Integer pageNum = Integer.parseInt(pageNumber);
        Integer pageSize = 3;
        Page page = PageHelper.startPage(pageNum, pageSize, true);
        List<StaffChange> list = staffChangeDao.selectchange1(s_id);
        data.put("total", page.getTotal());
        data.put("nowPage", pageNum);
        data.put("data", list);
        return  data;
    }
}
