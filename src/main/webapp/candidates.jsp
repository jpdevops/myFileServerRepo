<jsp:include page="header.jsp" />

<div id="page-wrapper">
    <div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        DataTables Advanced Tables
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables">
                                <thead>
                                    <tr>
                                        <th>Reference Id</th>
                                        <th>Job Description</th>
                                        <th>Status</th>
                                        <th>No of Candidates</th>
                                        <th>Source Type</th>
                                        <th>Tags</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td><a href="">Trident</a></td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">4</td>
                                            <td class="center">X</td>
                                            <td></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td><a href="">Trident</a></td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">4</td>
                                            <td class="center">X</td>
                                            <td></td>
                                        </tr>
                                </tbody>

                            </table>
                        </div>
                        <!-- /.table-responsive -->

                    </div>
                    <!-- /.panel-body -->
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp" />
 <!-- Custom Theme JavaScript -->
 <script>
 $(function() {

    $('#side-menu').metisMenu();
    
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
    });
    $('#dataTables').dataTable();
});
 </script>