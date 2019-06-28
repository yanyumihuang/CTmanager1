package cn.edu.huel.ctmanager.dao;

import java.util.List;

public interface TitleDao {

	public int selectT_id(String t_name);
	public List<String> select_T_name();

}
