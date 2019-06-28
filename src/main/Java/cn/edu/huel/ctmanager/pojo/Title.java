/**
 * 
 */
package cn.edu.huel.ctmanager.pojo;

/**
 *@author: Administrator
 *@function:TODO
 *@time:2019��6��23��
 */
public class Title {
private int t_id;
private String t_name;
private String t_decription;
/**
 * @param t_id
 * @param t_name
 * @param t_decription
 */

public Title(int t_id, String t_name, String t_decription) {
	super();
	this.t_id = t_id;
	this.t_name = t_name;
	this.t_decription = t_decription;
}
/**
 * 
 */
public Title() {
	super();
}
/**
 * @return the t_id
 */
public int getT_id() {
	return t_id;
}
/**
 * @param t_id the t_id to set
 */
public void setT_id(int t_id) {
	this.t_id = t_id;
}
/**
 * @return the t_name
 */
public String getT_name() {
	return t_name;
}
/**
 * @param t_name the t_name to set
 */
public void setT_name(String t_name) {
	this.t_name = t_name;
}
/**
 * @return the t_decription
 */
public String getT_decription() {
	return t_decription;
}
/**
 * @param t_decription the t_decription to set
 */
public void setT_decription(String t_decription) {
	this.t_decription = t_decription;
}
/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "Title [t_id=" + t_id + ", t_name=" + t_name + ", t_decription=" + t_decription + "]";
}
}
