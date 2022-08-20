/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Logger;

/**
 *
 * @author juang
 */
public class Conexion {
    String bd="easypark";
    String url="jdbc:mysql://localhost:3306/easypark";
    String user="root";
    String password="";
    String driver="com.mysql.jdbc.Driver";
    Connection cx;
    
  
    
    public Connection conectar() throws ClassNotFoundException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cx=DriverManager.getConnection(url,user,password);
            System.out.println("si SE CONECTO A LA BD "+bd);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return cx;
    }
    
    public void desconectar(){
        try {
            cx.close();
        } catch (SQLException e) {
            System.out.println("NO SE DESCONECTO A LA BD"+bd);
        }
    }
    
    public static void main (String[] args){
        Conexion conexion=new Conexion();
//        conexion.conectar();
    }
    
}
