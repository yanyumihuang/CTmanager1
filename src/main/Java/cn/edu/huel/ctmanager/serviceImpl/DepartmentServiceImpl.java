package cn.edu.huel.ctmanager.serviceImpl;

import java.util.List;

import cn.edu.huel.ctmanager.dao.DepartmentDao;
import cn.edu.huel.ctmanager.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	private DepartmentDao departmentDao;
	@Override
	public int selectD_id(String d_name) {
		
		int d_id=departmentDao.selectD_id(d_name);
		// TODO Auto-generated method stub
		return d_id;
	}
	@Override
	public List<String> selectD_name() {
		List<String> names=departmentDao.selectD_name();
		// TODO Auto-generated method stub
		return names;
	}

}
