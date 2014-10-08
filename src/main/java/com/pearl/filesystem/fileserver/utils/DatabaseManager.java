/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pearl.filesystem.fileserver.utils;

import com.pearl.filesystem.fileserver.model.FileServerProps;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.StaxDriver;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 *
 * @author jaladp
 */
public class DatabaseManager {
    
    private XStream stream;
    private File file;
    private FileOutputStream fop = null;
    
    public DatabaseManager() throws FileNotFoundException, IOException {

        stream = new XStream(new StaxDriver());
        file = new File("db.xml");
        
    }
    
    public void update( FileServerProps props ) throws IOException {
        
        if( !file.exists()) {
            file.createNewFile();
        }
        
        String xml = stream.toXML( props );
        
        fop = new FileOutputStream(file);
        fop.write( xml.getBytes() );
        
        fop.flush();
        fop.close();
    }
    
    public FileServerProps read() {
        
        if (!file.exists()) {
            return null;
        }
        
        return (FileServerProps) stream.fromXML(file);
    }
    
    
}
