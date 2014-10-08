/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pearl.filesystem.fileserver.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jaladp
 */
public class FilePath {
    
    private List<LocalPath> local = new ArrayList<>();
    
    private List<DropBoxPath> dropbox = new ArrayList<>();
    
    private List<SkyDrivePath> skydrive = new ArrayList<>();

    /**
     * @return the dropbox
     */
    public List<DropBoxPath> getDropbox() {
        return dropbox;
    }

    /**
     * @param dropbox the dropbox to set
     */
    public void setDropbox(List<DropBoxPath> dropbox) {
        this.dropbox = dropbox;
    }

    /**
     * @return the skydrive
     */
    public List<SkyDrivePath> getSkydrive() {
        return skydrive;
    }

    /**
     * @param skydrive the skydrive to set
     */
    public void setSkydrive(List<SkyDrivePath> skydrive) {
        this.skydrive = skydrive;
    }

    /**
     * @return the local
     */
    public List<LocalPath> getLocal() {
        return local;
    }

    /**
     * @param local the local to set
     */
    public void setLocal(List<LocalPath> local) {
        this.local = local;
    }
    
}
