/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pearl.filesystem.fileserver.model;

/**
 *
 * @author jaladp
 */
public class FileServerProps {
    
    private static FileServerProps instance = null;
    private FilePath filePath = new FilePath();
    
    private FileServerProps() {
        
    }
    
    public synchronized static FileServerProps getInstance() {
        if(instance == null) {
           instance = new FileServerProps();
        }
        return instance;
    }

    /**
     * @return the filePath
     */
    public FilePath getFilePath() {
        return filePath;
    }

    /**
     * @param filePath the filePath to set
     */
    public void setFilePath(FilePath filePath) {
        this.filePath = filePath;
    }
    
}


