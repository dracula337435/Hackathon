package org.dracula.ht2017g8;

//import de.codecentric.boot.admin.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan
//@EnableAdminServer
public class MainApp {

    public static void main(String[] args){
        SpringApplication.run(MainApp.class, args);
    }

}
