package de.hablijack.eilkurier.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import de.hablijack.eilkurier.interceptor.ModelBaseInterceptor;

@Configuration
public class WebApplicationConfiguration extends WebMvcConfigurerAdapter {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new ModelBaseInterceptor()).addPathPatterns("/**");;
    }
}