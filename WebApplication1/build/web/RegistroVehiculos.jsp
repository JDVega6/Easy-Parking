<%-- 
    Document   : RegistroVehiculos
    Created on : 19/08/2022, 10:58:11 p. m.
    Author     : juang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="d-flex">
        <div class="card col-sm-4">
            <div class="text-center">
                <img src="img/Logo-easy-parking.png" alt=""  height="100"/>
            </div>
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label>Placa</label>
                        <input type="text" name="txtPlaca" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Tipo de Vehiculo</label>
                        <input type="text" name="txtPlaca" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                </form>
            </div>
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr class="text-center">
                        <th>#Vehiculo</th>
                        <th>Empleado</th>
                        <th>Placa</th>
                        <th>Hora de Entrada</th>
                        <th>Hora Salida</th>
                        <th>Costo</th>
                        <th>Tipo de Vehiculo</th>
                        <th>Acciones</th>
                        
                    </tr>
                </thead>
                
            </table>
        </div>
            
            </div>
            
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
