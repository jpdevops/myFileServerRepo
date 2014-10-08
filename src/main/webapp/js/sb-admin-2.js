//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {
    $('#localMenu').addClass("active");
    
    $('#side-menu').metisMenu();
    $('#fileSystem').hide();
    
    $.get("/FileServer/OnLoad")
    .done(function (data) {
        
        var localPathJson = data.props.filePath.local;
        
        for(var i = 0; i < localPathJson.length; i++) {
            var obj = localPathJson[i];
            var path = obj.localPath;
            path = path.replace(/\\/g, '\\\\');
            $('#localUL').prepend('<li><a href="#" onClick="getLocalContents(' +"\'" + path + "\'" +')">'+ obj.nickName +'</a></li>');
        }
        
    });

    $(window).bind("load resize", function() {
        topOffset = 50;
        width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.navbar-collapse').addClass('collapse')
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse')
        }

        height = (this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    })
});

 // Dropbox Authentication popup
$('#dbAuthenticateSubmit').click(function(e){
    
    e.preventDefault();
    
    $.post( "/FileServer/DropBoxAuthenticateUser", { email: $('#email').val(), password: $('#password').val() })
        .done(function( data ) {
        alert( "Data Loaded: " + data );
    });

 });
 
  // Dropbox Authentication popup
$('#localUserAddSubmit').click(function(e){
    
    e.preventDefault();
    
    $.post( "/FileServer/addLocalUser", { localPath: $('#localFolderPath').val(), nickName: $('#localNickName').val(), processTags: 'true' })
    .done(function( data ) {
        
        
    });

 });
 
 function getLocalContents( localPath )
 {
    $('#dashboard').hide();
    $('#fileSystem').show();
    
    $.get("/FileServer/getLocalFiles", { localPath: localPath })
    .done(function (data) {
        
        var localTbl = $('#localFileTbl').DataTable();
        localTbl.clear();
        for(var i = 0; i < data.length; i++) {
            var obj = data[i];
            var name = obj.name;
            if( obj.folder ) {
                var path = obj.fullPath;
                path = path.replace(/\\/g, '\\\\');
                name = '<a href="#" onClick="getLocalContents(' +"\'" + path + "\'" +')" >' + name + '</a>';
            }
            localTbl.row.add([
                i+1, name, obj.createTime, obj.lastModifiedTime, obj.size, '', ''
            ]).draw();
        }
        
    });
 }
