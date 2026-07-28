package com.logging;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ParameterizedLoggingExample {

    private static final Logger logger =
            LoggerFactory.getLogger(ParameterizedLoggingExample.class);

    public static void main(String[] args) {

        String username = "Tejasri";
        int marks = 95;

        logger.info("Student Name: {}", username);

        logger.info("Marks Scored: {}", marks);

        logger.info("Student {} scored {} marks.", username, marks);
    }
}