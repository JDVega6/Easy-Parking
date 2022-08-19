/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import com.mysql.cj.xdevapi.PreparableStatement;
import com.mysql.cj.xdevapi.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author juang
 */
public class VehiculosDAO {

    Connection conexion;
    
    public VehiculosDAO(){
        Conexion con = new Conexion();
        conexion = con.conectar();
}
    
    public List<Vehiculos> ReadListaVehiculos(){
        
        PreparedStatement ps;
        ResultSet rs;
        
        List<Vehiculos> listaVeh = new ArrayList<>();
        
        try {
            ps = conexion.prepareStatement("SELECT idVehiculos,idEmpleados,Placa FROM vehiculos");
            rs = ps.executeQuery();
            
            while(rs.next()){
                int idVehiculos = rs.getInt("idVehiculos");
                int idEmpleados = rs.getInt("idEmpleados");
                String placa = rs.getString("Placa");
                
                Vehiculos veh = new Vehiculos();
                veh.setIdVehiculos(idVehiculos);
                veh.setIdEmpleado(idEmpleados);
                veh.setPlaca(placa);
                listaVeh.add(veh);
            }
            return listaVeh;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return null;
        }
    }
}
