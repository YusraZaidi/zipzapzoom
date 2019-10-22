/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import static java.sql.DriverManager.getConnection;
import java.sql.PreparedStatement;
import java.util.Calendar;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.*;
/**
 *
 * @author Raja
 */
public class placeorder extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
           HttpSession session=request.getSession();
           String s=(String) session.getAttribute("checked");
           if(!s.equals("yes")){
               out.println("sesion timeout");
               out.println("<a href=cust_login.jsp>login </a>");
           }
           String email=(String) session.getAttribute("email");
     //      Date d1=new Date();
           LocalTime d=LocalTime.now();
           HashSet<String> arr=new HashSet<String>();
           arr.add(d.toString());
           arr.add(email);
           String oid=Integer.toString(arr.hashCode());
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/zipzapzoom","root","");
 
           PreparedStatement ps=con.prepareStatement("insert into query_table(oid,l_place,l_date,d_place,d_date,desc_item,weight,cust_email,status) values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1,oid);
            ps.setString(2,request.getParameter("l_place"));
            ps.setString(3,request.getParameter("l_date"));
            ps.setString(4,request.getParameter("d_place"));
            ps.setString(5,request.getParameter("d_date"));
            ps.setString(6,request.getParameter("desc_item"));
            ps.setString(7,request.getParameter("weight"));
            ps.setString(8, email);
            ps.setString(9,"a");
            if(ps.executeUpdate()>0)
                    out.println("yea");
            else
                out.println("no");
        }
        catch(Exception e){
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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