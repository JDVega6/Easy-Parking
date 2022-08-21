/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author juang
 */
public class Controlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String menu=request.getParameter("menu");
            String accion=request.getParameter("accion");
                if(menu.equalsIgnoreCase("Principal")){
//                    switch (accion) {
//                        case "listar":
//                            
//                            break;
//                            
//                        case "agregar":
//                            
//                            break;
//                            
//                        case "editar":
//                            
//                            break;
//                          
//                        case "eliminar":
//                            
//                            break;
//                        default:
//                            throw new AssertionError();
//                    }
                    request.getRequestDispatcher("Principal.jsp").forward(request, response);
                }
                if(menu.equalsIgnoreCase("Home")){
                    request.getRequestDispatcher("RegistroVehiculos.jsp").forward(request, response);
                }
                
                
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
