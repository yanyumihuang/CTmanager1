package cn.edu.huel.ctmanager.service;

import java.util.List;

public interface DepartmentService {
	public int selectD_id(String d_name);
	public List<String> selectD_name();
}
