package cn.edu.huel.ctmanager.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.huel.ctmanager.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class StaffInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
        String url = request.getRequestURI();
		if (url.indexOf("/login.action")>=0|| url.indexOf("/logout")>=0) {
       return  true;
		}

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user_session");
        int type = user.getSys_purview();
			if (url.indexOf("/find") >= 0||url.indexOf("/show")>=0) {
				if (type == 1 || type == 2 || type == 3 || type == 4) {
					return true;
				}
			}
			if (url.indexOf("/update") >= 0) {
				if (type == 2 || type == 3 || type == 4) {
					return true;
				}
			}
			if (url.indexOf("/add") >= 0) {
				if (type == 3 || type == 4) {
					return true;
				}
			}
			if (url.indexOf("/delete") >= 0) {
				if (type == 4) {
					return true;
				}
			}
			request.setAttribute("errmsg", "您的权限不足，请联系管理员！");
			return false;
		}
	}

