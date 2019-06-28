/**
 * 
 */
package cn.edu.huel.ctmanager.pojo;

/**
 *@author: Administrator
 *@function:TODO
 *@time:2019��6��23��
 */
public class Department {
private int d_id;
private String d_name;
private String d_decription;
private String d_statue;
/**
 * @param d_id
 * @param d_name
 * @param d_decription
 * @param d_statue
 */
public Department(int d_id, String d_name, String d_decription, String d_statue) {
	super();
	this.d_id = d_id;
	this.d_name = d_name;
	this.d_decription = d_decription;
	this.d_statue = d_statue;
}
/**
 * 
 */
public Department() {
	super();
}
/**
 * @return the d_id
 */
public int getD_id() {
	return d_id;
}
/**
 * @param d_id the d_id to set
 */
public void setD_id(int d_id) {
	this.d_id = d_id;
}
/**
 * @return the d_name
 */
public String getD_name() {
	return d_name;
}
/**
 * @param d_name the d_name to set
 */
public void setD_name(String d_name) {
	this.d_name = d_name;
}
/**
 * @return the d_decription
 */
public String getD_decription() {
	return d_decription;
}
/**
 * @param d_decription the d_decription to set
 */
public void setD_decription(String d_decription) {
	this.d_decription = d_decription;
}
/**
 * @return the d_statue
 */
public String getD_statue() {
	return d_statue;
}
/**
 * @param d_statue the d_statue to set
 */
public void setD_statue(String d_statue) {
	this.d_statue = d_statue;
}
/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "Department [d_id=" + d_id + ", d_name=" + d_name + ", d_decription=" + d_decription + ", d_statue="
			+ d_statue + "]";
}
}
