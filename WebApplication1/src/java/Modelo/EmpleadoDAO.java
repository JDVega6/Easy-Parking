/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author juang
 */
public class EmpleadoDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Empleado validar(String user,String pass) throws ClassNotFoundException{
        Empleado em=new Empleado();
        String sql="select * from empleado where User=? and Contraseña=?";
        
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                em.setUser(rs.getString("User"));
                em.setPass(rs.getString("Contraseña"));
                em.setNombre(rs.getString("Nombre"));
                em.setApellido(rs.getString("Apellido"));
            }
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
         return em;   
    }
}
