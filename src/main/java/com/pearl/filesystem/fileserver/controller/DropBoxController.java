/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pearl.filesystem.fileserver.controller;

import com.dropbox.core.DbxException;
import com.pearl.filesystem.fileserver.dropbox.DropBoxManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jaladp
 */
@WebServlet( name = "DropBoxController", 
             loadOnStartup = 2, 
             urlPatterns = {"/DropBoxAuthenticateUser",
                            "/DropBoxFetch",
                            "/DropBoxCreateFolder",
                            "/DropBoxUploadFile",
                            "/DropBoxDownloadFile"})
public class DropBoxController extends HttpServlet {

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
        
        DropBoxManager manager = new DropBoxManager();
        String userPath = request.getServletPath();

        PrintWriter out = response.getWriter();
        // if category page is requested
        if (userPath.equals("/DropBoxAuthenticateUser")) {
            
            try {
                String nickName = request.getParameter("nickName");
                String authCode = request.getParameter("authCode");
                
                manager.authenticateUser( authCode );
                
                //Saved the DropBox NickName & AuthCode
                out.println("Logged in successfully ");
            } catch (DbxException ex) {
                out.println( "Invalid User name / password" );
                Logger.getLogger(DropBoxController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (userPath.equals("/DropBoxFetch")) {
            // TODO: Implement cart page request

            userPath = "/cart";

        // if checkout page is requested
        } else if (userPath.equals("/DropBoxCreateFolder")) {
            // TODO: Implement checkout page request

        // if user switches language
        } else if (userPath.equals("/DropBoxUploadFile")) {
            // TODO: Implement language request

        } else if (userPath.equals("/DropBoxDownloadFile")) {
            // TODO: Implement language request

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
