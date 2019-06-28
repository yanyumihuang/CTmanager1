package cn.edu.huel.ctmanager.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PostDao {
	public int seletcP_id(@Param("p_category")String p_category,@Param("p_type")String p_type);
	public List<String> seletcP_category();
	public List<String> seletcP_type();
}
