package com.example;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class HelloWorldApp {
    public static void main(String[] args) {
        Properties props = new Properties();
        try (InputStream input = HelloWorldApp.class.getClassLoader().getResourceAsStream("messages.properties")) {
            if (input == null) {
                System.out.println("Sorry, unable to find messages.properties");
                return;
            }
            props.load(input);
            String message = props.getProperty("message", "Hello, World (default)!");
            System.out.println(message);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
}
