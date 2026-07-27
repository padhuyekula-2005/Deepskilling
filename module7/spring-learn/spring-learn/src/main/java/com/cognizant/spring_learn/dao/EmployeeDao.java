package com.cognizant.spring_learn.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.cognizant.spring_learn.model.Employee;

@Repository
public class EmployeeDao {

    private static ArrayList<Employee> EMPLOYEE_LIST = new ArrayList<>();

    public EmployeeDao() {

    }

    public ArrayList<Employee> getAllEmployees() {
        return EMPLOYEE_LIST;
    }

    public static void setEmployeeList(ArrayList<Employee> employeeList) {
        EMPLOYEE_LIST = employeeList;
    }
}