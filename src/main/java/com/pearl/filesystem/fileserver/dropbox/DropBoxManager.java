/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pearl.filesystem.fileserver.dropbox;

import com.dropbox.core.DbxAppInfo;
import com.dropbox.core.DbxAuthFinish;
import com.dropbox.core.DbxClient;
import com.dropbox.core.DbxEntry;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxWebAuthNoRedirect;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

/**
 *
 * @author jaladp
 */
public class DropBoxManager {
    
    final String APP_KEY = "ni1z7wkk2lfu3p4";
    final String APP_SECRET = "fb5a0yjd7lrb1to";
    
    public String authenticateUser( final String authCode ) throws DbxException, IOException {
        
        DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);

        DbxRequestConfig config = new DbxRequestConfig("JavaTutorial/1.0",
            Locale.getDefault().toString());
        DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);
        
        DbxAuthFinish authFinish = webAuth.finish( authCode );
        String accessToken = authFinish.accessToken;
        DbxClient client = new DbxClient(config, accessToken);

        System.out.println("Linked account: " + client.getAccountInfo().displayName );
        
        return accessToken;
    }
    
    public List<String> getFiles( final String path, final String accessToken ) {
        
        DbxRequestConfig config = new DbxRequestConfig("JavaTutorial/1.0",
                                        Locale.getDefault().toString());
        DbxClient client = new DbxClient(config, accessToken);
        
         // Get the folder listing from Dropbox.
        DbxEntry.WithChildren listing;
        try {
            listing = client.getMetadataWithChildren("/");
        }
        catch (DbxException ex) {
            //common.handleDbxException(response, user, ex, "getMetadataWithChildren(" + jq(path) + ")");
            return null;
        }
        
        for( DbxEntry entry : listing.children ) {
            if( entry.isFile() ) {
                DbxEntry.File file = entry.asFile();
                System.out.println( file.numBytes + "  " + file.name + "  " + file.clientMtime);
            }
            System.out.println( entry.name + " " + entry.path + "  " + entry.toStringMultiline() );
        }
        
        return null;
    }
    
}
