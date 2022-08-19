/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author juang
 */
public class Vehiculos {
    int idVehiculos;
    int idEmpleado;
    String placa;
    String HoraEntrada;
    String HoraSalida;
    int Estado;
    float costo;
    String TipoVehiculo;

    public Vehiculos() {
    }
    
    

    public Vehiculos(int idVehiculos, int idEmpleado, String placa, String HoraEntrada, String HoraSalida, int Estado, float costo, String TipoVehiculo) {
        this.idVehiculos = idVehiculos;
        this.idEmpleado = idEmpleado;
        this.placa = placa;
        this.HoraEntrada = HoraEntrada;
        this.HoraSalida = HoraSalida;
        this.Estado = Estado;
        this.costo = costo;
        this.TipoVehiculo = TipoVehiculo;
    }
    
    

    public int getIdVehiculos() {
        return idVehiculos;
    }

    public void setIdVehiculos(int idVehiculos) {
        this.idVehiculos = idVehiculos;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getHoraEntrada() {
        return HoraEntrada;
    }

    public void setHoraEntrada(String HoraEntrada) {
        this.HoraEntrada = HoraEntrada;
    }

    public String getHoraSalida() {
        return HoraSalida;
    }

    public void setHoraSalida(String HoraSalida) {
        this.HoraSalida = HoraSalida;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public float getCosto() {
        return costo;
    }

    public void setCosto(float costo) {
        this.costo = costo;
    }

    public String getTipoVehiculo() {
        return TipoVehiculo;
    }

    public void setTipoVehiculo(String TipoVehiculo) {
        this.TipoVehiculo = TipoVehiculo;
    }
    
    
    
    
    
    
}
