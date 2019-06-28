package cn.edu.huel.ctmanager.service;

import java.util.List;

public interface PostService {
	public int seletcP_id(String p_category,String p_type);
	public List<String> seletcP_category();
	public List<String> seletcP_type();
}
