/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pearl.filesystem.fileserver.controller;

import com.pearl.filesystem.fileserver.model.FileDetails;
import com.pearl.filesystem.fileserver.model.FilePath;
import com.pearl.filesystem.fileserver.model.FileServerProps;
import com.pearl.filesystem.fileserver.model.LocalPath;
import com.pearl.filesystem.fileserver.utils.DatabaseManager;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;

/**
 *
 * @author jaladp
 */
@WebServlet(name = "MainController", 
            loadOnStartup = 1, 
            urlPatterns = {"/OnLoad", "/getUsers", "/getUserProfile", "/getSettings", "/addLocalUser", "/getLocalFiles"})
public class MainController extends HttpServlet {

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
        
        response.setContentType("application/json");
		response.setHeader("Cache-Control", "nocache");
        response.setCharacterEncoding("utf-8");
            
        PrintWriter out = response.getWriter();
        String userPath = request.getServletPath();
        DatabaseManager dbManager = new DatabaseManager();

        // if category page is requested
        switch (userPath) {
            
            case "/OnLoad":
            {
                
                FileServerProps props = dbManager.read();
                if( props != null ){
                    
                     XStream xstream = new XStream(new JsonHierarchicalStreamDriver());
                    xstream.setMode(XStream.NO_REFERENCES);
                    xstream.alias("props", FileServerProps.class);

                    out.write( xstream.toXML( props ) );
                }
                
                break;
            }
            case "/getUsers":
                break;
            case "/getUserProfile":
                break;
            case "/getSettings":
                break;
            case "/addLocalUser":
            {
                String path = request.getParameter("localPath");
                String nickName = request.getParameter("nickName");
                String processTags = request.getParameter("processTags");
                
                FileServerProps props = FileServerProps.getInstance();
                FilePath filePath = props.getFilePath();
                
                LocalPath localPath = new LocalPath();
                localPath.setLocalPath( path );
                localPath.setNickName(nickName);
                
                filePath.getLocal().add( localPath );
                dbManager.update(props);
                
                out.write( "Added successfully ");
                break;
            }
            case "/getLocalFiles":
            {
                String path = request.getParameter("localPath");
                Path dir =  Paths.get(path);
                List<FileDetails> fileDetails = new ArrayList<>();
                
                try (DirectoryStream<Path> stream = Files.newDirectoryStream(dir)) {
                    for (Path file: stream) {
                        
                        FileDetails details = new FileDetails();
                        
                        BasicFileAttributes attrs = Files.readAttributes(file, BasicFileAttributes.class);
                        details.setName(  file.getFileName().toString() );
                        details.setSize( attrs.size() );
                        details.setCreateTime( attrs.creationTime().toString() );
                        details.setLastAccessTime( attrs.lastAccessTime().toString() );
                        details.setLastModifiedTime( attrs.lastModifiedTime().toString() );
                        details.setIsFolder( attrs.isDirectory() );
                        details.setFullPath( path + File.separator + file.getFileName().toString() );
                        
                        fileDetails.add( details );
                        
                    }
                } catch (IOException | DirectoryIteratorException x) {
                    // IOException can never be thrown by the iteration.
                    // In this snippet, it can only be thrown by newDirectoryStream.
                    System.err.println(x);
                }
                
                JSONArray jsonAraay = new JSONArray(fileDetails);
                
                out.write( jsonAraay.toString() );
                break;
            }
                    
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
