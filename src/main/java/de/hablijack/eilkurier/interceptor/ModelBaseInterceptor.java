package de.hablijack.eilkurier.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ModelBaseInterceptor extends HandlerInterceptorAdapter {

	private String absoluteUrl;

	public ModelBaseInterceptor(String absoluteUrl) {
		this.absoluteUrl = absoluteUrl;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		if (modelAndView != null && handler != null) {
			HandlerMethod method = (HandlerMethod) handler;
			String controllerName = method.getBean().getClass().getName()
					.replace("de.hablijack.eilkurier.controller.", "").toLowerCase().replace("controller", "");
			modelAndView.getModel().put("controllerId", controllerName);
			modelAndView.getModel().put("absoluteUrl", absoluteUrl);
		}
		super.postHandle(request, response, handler, modelAndView);
	}
}
