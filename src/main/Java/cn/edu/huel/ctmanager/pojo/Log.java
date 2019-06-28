package cn.edu.huel.ctmanager.pojo;


public class Log {

	private int id;
	private String  time;
	private String method;
	private String opContent;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}

    public String getOpContent() {
        return opContent;
    }

    public void setOpContent(String opContent) {
        this.opContent = opContent;
    }

    @Override
	public String toString() {
		return "Log [id=" + id + ", time=" + time + ", method=" + method + ", opContent=" + opContent + "]";
	}
}
