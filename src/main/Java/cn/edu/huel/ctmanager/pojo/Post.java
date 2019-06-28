/**
 * 
 */
package cn.edu.huel.ctmanager.pojo;

/**
 *@author: Administrator
 *@function:TODO
 *@time:2019��6��23��
 */
public class Post {

	private int p_id;
	private String p_category;
	private String p_type;
	
	/**
	 * 
	 */
	public Post() {
		super();
	}

	/**
	 * @param p_id
	 * @param p_category
	 * @param p_type
	 */
	public Post(int p_id, String p_category, String p_type) {
		super();
		this.p_id = p_id;
		this.p_category = p_category;
		this.p_type = p_type;
	}

	/**
	 * @return the p_id
	 */
	public int getP_id() {
		return p_id;
	}

	/**
	 * @param p_id the p_id to set
	 */
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	/**
	 * @return the p_category
	 */
	public String getP_category() {
		return p_category;
	}

	/**
	 * @param p_category the p_category to set
	 */
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	/**
	 * @return the p_type
	 */
	public String getP_type() {
		return p_type;
	}

	/**
	 * @param p_type the p_type to set
	 */
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Post [p_id=" + p_id + ", p_category=" + p_category + ", p_type=" + p_type + "]";
	}
	
}
