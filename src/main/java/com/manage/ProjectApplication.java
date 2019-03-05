package com.manage;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@MapperScan("com.manage.project.*.*.mapper")
public class ProjectApplication extends SpringBootServletInitializer{
	private static Logger logger = LoggerFactory.getLogger(ProjectApplication.class);
	public static void main(String[] args) {
		SpringApplication.run(ProjectApplication.class, args);
		logger.info("ProjectApplication Start Success");
        System.out.println("(♥◠‿◠)ﾉﾞ ProjectApplication Start Success ლ(´ڡ`ლ)ﾞ  \n" +
                " .-------.       ____     __        \n" +
                " |  _ _   \\      \\   \\   /  /    \n" +
                " | ( ' )  |       \\  _. /  '       \n" +
                " |(_ o _) /        _( )_ .'         \n" +
                " | (_,_).' __  ___(_ o _)'          \n" +
                " |  |\\ \\  |  ||   |(_,_)'         \n" +
                " |  | \\ `'   /|   `-'  /           \n" +
                " |  |  \\    /  \\      /           \n" +
                " ''-'   `'-'    `-..-'              ");
	}
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
        return application.sources(ProjectApplication.class);
    }
}
