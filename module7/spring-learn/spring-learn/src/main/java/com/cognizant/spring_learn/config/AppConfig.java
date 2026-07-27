package com.cognizant.spring_learn.config;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cognizant.spring_learn.dao.EmployeeDao;
import com.cognizant.spring_learn.model.Employee;

@Configuration
public class AppConfig {

    @Bean
    public String loadEmployees() {

        ClassPathXmlApplicationContext context =
                new ClassPathXmlApplicationContext("employee.xml");

        ArrayList<Employee> list =
                (ArrayList<Employee>) context.getBean("employeeList");

        EmployeeDao.setEmployeeList(list);

        context.close();

        return "loaded";
    }
}