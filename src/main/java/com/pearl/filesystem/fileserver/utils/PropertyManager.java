/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pearl.filesystem.fileserver.utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

/**
 *
 * @author jaladp
 */
public final class PropertyManager {
    
    static Properties props = new Properties();
    static final String PROP_FILE_NAME = "fileserver.properties";
    
    public static void loadProperties() throws FileNotFoundException, IOException {
        FileInputStream in = new FileInputStream( PROP_FILE_NAME );
        props.load(in);
        in.close();
    }
    
    public static void updateProperties( final String key, final String value ) throws FileNotFoundException, IOException {
        
        FileOutputStream out = new FileOutputStream( PROP_FILE_NAME );
        props.setProperty( key, value);
        props.store(out, null);
        out.close();
    }
    
    public static void addProperty( final String key, final String value ) throws FileNotFoundException, IOException {
        
        FileOutputStream out = new FileOutputStream( PROP_FILE_NAME );
        props.setProperty( key, value);
        props.store(out, null);
        out.close();
    }
    
    public static String getProperty( final String key ) {
        
        return props.getProperty(key);
    }
            
}
