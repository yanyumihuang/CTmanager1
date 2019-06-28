package cn.edu.huel.ctmanager.dao;

import java.util.List;

public interface DepartmentDao {
	public int selectD_id(String d_name);
	public List<String> selectD_name();
}
