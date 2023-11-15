package com.jvm.data;

import java.io.*;
import java.util.*;

import com.jvm.models.User;

public class UserIO {

    public static boolean add(User user, String filepath) {
        try {
            File file = new File(filepath);
            PrintWriter out = new PrintWriter(
                    new FileWriter(file, true));
            out.println(user.getEmail() + "|"
                    + user.getFirstName() + "|"
                    + user.getLastName());

            out.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static User getUser(String email, String filepath) {
        try {
            File file = new File(filepath);
            BufferedReader in = new BufferedReader(
                    new FileReader(file));
            User user = new User();
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                if (t.countTokens() < 3) {
                    return new User("", "", "");
                }
                String token = t.nextToken();
                if (token.equalsIgnoreCase(email)) {
                    String firstName = t.nextToken();
                    String lastName = t.nextToken();
                    user.setEmail(email);
                    user.setFirstName(firstName);
                    user.setLastName(lastName);
                }
                line = in.readLine();
            }
            in.close();
            return user;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ArrayList<User> getUsers(String filepath) {
        try {
            ArrayList<User> users = new ArrayList<User>();
            BufferedReader in = new BufferedReader(
                    new FileReader(filepath));
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String email = t.nextToken();
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                User user = new User(firstName, lastName, email);
                users.add(user);
                line = in.readLine();
            }
            in.close();
            return users;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
    public static void addRecord(User user, String filename) throws IOException {
        File file = new File(filename);
        PrintWriter out = new PrintWriter(
                new FileWriter(file, true));
        out.println(user.getEmail() + "|"
                + user.getFirstName() + "|"
                + user.getLastName());
        out.close();
    }

    public static User getUser_n(String emailAddress, String filename) throws IOException {
        File file = new File(filename);
        BufferedReader in = new BufferedReader(
                new FileReader(file));
        User user = new User();
        String line = in.readLine();
        while (line != null) {
            StringTokenizer t = new StringTokenizer(line, "|");
            String email = t.nextToken();
            if (email.equalsIgnoreCase(emailAddress)) {
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                user.setEmail(emailAddress);
                user.setFirstName(firstName);
                user.setLastName(lastName);
            }
            line = in.readLine();
        }
        in.close();
        return user;
    }

    public static ArrayList<User> getUsers_n(String filename) throws IOException {
        ArrayList<User> users = new ArrayList<User>();
        BufferedReader in = new BufferedReader(
                new FileReader(filename));
        String line = in.readLine();
        while (line != null) {
            try {
                StringTokenizer t = new StringTokenizer(line, "|");
                String emailAddress = t.nextToken();
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                User user = new User(firstName, lastName, emailAddress);
                users.add(user);
                line = in.readLine();
            } catch (NoSuchElementException e) {
                line = in.readLine();
            }
        }
        in.close();
        return users;
    }

    public static HashMap<String, User> getUsersMap(String filename) throws IOException {
        HashMap<String, User> users = new HashMap<String, User>();
        BufferedReader in = new BufferedReader(
                new FileReader(filename));
        String line = in.readLine();
        while (line != null) {
            try {
                StringTokenizer t = new StringTokenizer(line, "|");
                String emailAddress = t.nextToken();
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                User user = new User(firstName, lastName, emailAddress);
                users.put(emailAddress, user);
                line = in.readLine();
            } catch (NoSuchElementException e) {
                line = in.readLine();
            }
        }
        in.close();
        return users;
    }
}