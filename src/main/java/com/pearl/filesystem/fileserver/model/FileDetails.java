/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pearl.filesystem.fileserver.model;

import java.util.List;

/**
 *
 * @author jaladp
 */
public class FileDetails {
    
    private String name;
    private long size;
    private String createTime;
    private String lastModifiedTime;
    private String lastAccessTime;
    private List<String> tags;
    private boolean isFolder;
    private String fullPath;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the size
     */
    public long getSize() {
        return size;
    }

    /**
     * @param size the size to set
     */
    public void setSize(long size) {
        this.size = size;
    }

    /**
     * @return the createTime
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     * @param createTime the createTime to set
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    /**
     * @return the lastModifiedTime
     */
    public String getLastModifiedTime() {
        return lastModifiedTime;
    }

    /**
     * @param lastModifiedTime the lastModifiedTime to set
     */
    public void setLastModifiedTime(String lastModifiedTime) {
        this.lastModifiedTime = lastModifiedTime;
    }

    /**
     * @return the lastAccessTime
     */
    public String getLastAccessTime() {
        return lastAccessTime;
    }

    /**
     * @param lastAccessTime the lastAccessTime to set
     */
    public void setLastAccessTime(String lastAccessTime) {
        this.lastAccessTime = lastAccessTime;
    }

    /**
     * @return the tags
     */
    public List<String> getTags() {
        return tags;
    }

    /**
     * @param tags the tags to set
     */
    public void setTags(List<String> tags) {
        this.tags = tags;
    }

    /**
     * @return the isFolder
     */
    public boolean isFolder() {
        return isFolder;
    }

    /**
     * @param isFolder the isFolder to set
     */
    public void setIsFolder(boolean isFolder) {
        this.isFolder = isFolder;
    }

    /**
     * @return the fullPath
     */
    public String getFullPath() {
        return fullPath;
    }

    /**
     * @param fullPath the fullPath to set
     */
    public void setFullPath(String fullPath) {
        this.fullPath = fullPath;
    }
}
