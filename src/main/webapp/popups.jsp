<!-- Settings modal -->
<div id="settingsModal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">*</button>
                <h3 id="addUserDropBoxLabel">File Server Settings</h3>
            </div>
            <div class="modal-body">
                
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                <button class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>

<!-- User Profile -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">*</button>
                <h3 id="addUserDropBoxLabel">User Profile</h3>
            </div>
            <div class="modal-body">
                <p>Loading</p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                <button class="btn btn-primary">Save Changes</button>
            </div>
        </div>
    </div>
</div>


<!-- Dropbox Authentication -->

<div id="addUserDropBox" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times-circle"></i></button>
                <h3 id="addUserDropBoxLabel">Enter DropBox Details</h3>
            </div>
            <div class="modal-body">
                <form role="form">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" placeholder="Nick Name" name="nickName" type="text" autofocus>
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="Authorization Code" name="code" type="text" autofocus>
                        </div>
                        <div class="form-group text-center">
                            <a target="_blank" href="https://www.dropbox.com/1/oauth2/authorize?locale=en_US&client_id=ni1z7wkk2lfu3p4&response_type=code&state=iLUdgbMqFzioIHHYUHLlcQ%3D%3D"><i>Please Get the Authorization code using this Link</i></a>
                        </div>
                        <!-- Change this to a button or input when using this as a form -->
                        <a href="#" class="btn btn-lg btn-success btn-block">Login</a>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Local File Path -->
<div id="addLocalUser" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">*</button>
                <h3 id="addLocalUserLabel">Add Local Folder</h3>
            </div>
            <div class="modal-body">
                <form role="form" >
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" placeholder="Nick Name" name="localNickName" id="localNickName" type="text" autofocus>
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="Local Folder Path" name="localFolderPath" id="localFolderPath" type="text" autofocus>
                        </div>
                        
                    </fieldset>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                <button id="localUserAddSubmit" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>
