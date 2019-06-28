package cn.edu.huel.ctmanager.serviceImpl;

import java.util.List;

import cn.edu.huel.ctmanager.dao.PostDao;
import cn.edu.huel.ctmanager.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService {
	@Autowired
    private PostDao postDao;
	@Override
	public int seletcP_id(String p_category, String p_type) {
		
		int p_id=postDao.seletcP_id(p_category, p_type);
		return p_id;
	}
	@Override
	public List<String> seletcP_category() {
		List<String> categories= postDao.seletcP_category();
		return categories;
	}
	@Override
	public List<String> seletcP_type() {
		List<String> types=postDao.seletcP_type();
		// TODO Auto-generated method stub
		return types;
	}
}
