package de.hablijack.eilkurier.configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import de.hablijack.eilkurier.interceptor.ModelBaseInterceptor;

@Configuration
class WebApplicationConfiguration implements WebMvcConfigurer {

	@Value("${url.absolute.path}")
	private String urlAbsolutePath;
	@Value("${url.protocol}")
	private String urlProtocol;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new ModelBaseInterceptor(urlProtocol + urlAbsolutePath)).addPathPatterns("/**");
	}
}