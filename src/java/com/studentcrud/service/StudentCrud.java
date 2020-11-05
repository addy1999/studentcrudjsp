/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.studentcrud.service;

import com.studentcrud.bean.Student;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author adhil
 */
public class StudentCrud {
public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Student?zeroDateTimeBehavior=CONVERT_TO_NULL","root","R@dhil99");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    public static int add(Student s){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement sql=con.prepareStatement("INSERT INTO student(roll,fullname,semester,cgpa) values(?,?,?,?)");  
            sql.setString(1,s.getRoll());  
            sql.setString(2,s.getName());  
            sql.setString(3,s.getSemester());  
            sql.setString(4,s.getCgpa());  
            status=sql.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int update(Student s){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement sql=con.prepareStatement("UPDATE student SET roll=?,fullname=?,semester=?,cgpa=? where roll=?");  
            sql.setString(1,s.getRoll());  
            sql.setString(2,s.getName());  
            sql.setString(3,s.getSemester());  
            sql.setString(4,s.getCgpa());
            sql.setString(5, s.getRoll());
            status=sql.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int delete(Student s){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement sql=con.prepareStatement("DELETE FROM student WHERE roll=?");  
            sql.setString(1,s.getRoll());  
            status=sql.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  

        return status;  
    }  
    public static List<Student> getAllRecords(){  
        List<Student> list=new ArrayList<Student>();  

        try{  
            Connection con=getConnection();  
            PreparedStatement sql=con.prepareStatement("SELECT * FROM student");  
            ResultSet rs=sql.executeQuery();  
            while(rs.next()){  
                Student s=new Student();  
                s.setRoll(rs.getString("roll"));
                s.setName(rs.getString("fullname"));  
                s.setSemester(rs.getString("semester"));
                s.setCgpa(rs.getString("cgpa"));
                list.add(s);
            }  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
    public static Student getRecordById(String rol){  
        Student s=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement sql=con.prepareStatement("SELECT * FROM student WHERE roll=?");  
            sql.setString(1, rol);
            ResultSet rs=sql.executeQuery();  
            while(rs.next()){  
                s=new Student();
                s.setRoll(rs.getString("roll"));
                s.setName(rs.getString("fullname"));  
                s.setSemester(rs.getString("semester"));  
                s.setCgpa(rs.getString("cgpa"));  
            }  
        }catch(Exception e){System.out.println(e);}  
        return s;  
}  
}
