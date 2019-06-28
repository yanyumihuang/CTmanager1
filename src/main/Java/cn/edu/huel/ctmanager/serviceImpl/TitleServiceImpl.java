package cn.edu.huel.ctmanager.serviceImpl;

import java.util.List;

import cn.edu.huel.ctmanager.dao.TitleDao;
import cn.edu.huel.ctmanager.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TitleServiceImpl implements TitleService {
    @Autowired
	private TitleDao titleDao;
	@Override
	public int selectT_id(String t_name) {
		int t_id=titleDao.selectT_id(t_name);
		// TODO Auto-generated method stub
		return t_id;
	}
	@Override
	public List<String> select_T_name() {
		List<String> names=titleDao.select_T_name();
		// TODO Auto-generated method stub
		return names;
	}

}
