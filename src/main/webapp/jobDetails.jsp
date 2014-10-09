<jsp:include page="header.jsp" />

<div id="page-wrapper">
    
    <div class="row">
        <div class="col-lg-12">
            &nbsp;
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Job Details
                </div>
                <div class="panel-body">
                    <p>
                        <form class="form-horizontal">
                            <fieldset>
                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="selectbasic">Reference Id:</label>
                                    <div class="col-md-9">
                                        <input id="textinput" name="textinput" placeholder="reference id" class="form-control input-md" type="text" disabled>
                                    </div>
                                </div>

                                <!-- Textarea -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textarea">Job Description</label>
                                    <div class="col-md-9">                     
                                        <textarea class="form-control" id="textarea" name="textarea" disabled>default text</textarea>
                                    </div>
                                </div>


                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Source</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="reference id" class="form-control input-md" type="text" disabled>
                                    </div>


                                    <!-- Multiple Radios (inline) -->

                                    <label class="col-md-2 control-label" for="radios">Source Type</label>
                                    <div class="col-md-4"> 
                                        <select id="selectbasic" name="selectbasic" class="form-control" disabled>
                                            <option>Direct</option>
                                            <option>Primary</option>
                                            <option>Portals</option>
                                            <option>Referrals</option>
                                            <option>Others</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Tags</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text" disabled>
                                    </div>
                                    <label class="col-md-2 control-label" for="textinput">Billing Rate</label>  
                                    <div class="col-md-4">
                                        <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text" disabled>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Link</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text" disabled>
                                    </div>
                                    <label class="col-md-2 control-label" for="textinput">Contact Details</label>  
                                    <div class="col-md-4">
                                        <textarea class="form-control" id="textarea" name="textarea" disabled>default text</textarea>
                                    </div>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <div class="col-md-11">
                                        <label class="col-md-4 control-label" for="button1id"></label>
                                        <div class="col-md-6">
                                            <button id="button1id" name="button1id" class="btn btn-success">New Candidate</button>
                                            <button id="button2id" name="button2id" class="btn btn-info">Suggest Me</button>
                                            <button id="button2id" name="button2id" class="btn btn-warning">Send Status</button>
                                            <button id="button2id" name="button2id" class="btn btn-danger">Close Job</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-11" id="table_div"></div>
                                </div>
                                
                                <!-- Button (Double) -->
                                <div class="form-group">
                                    <label class="col-md-5 control-label" for="button1id"></label>
                                    <div class="col-md-5">
                                        <button id="button1id" name="button1id" class="btn btn-success">Edit</button>
                                        <button id="button2id" name="button2id" class="btn btn-danger">Cancel</button>
                                    </div>
                                </div>

                            </fieldset>
                        </form>
                    </p>
                    
            </div>
        </div>
    </div>
<jsp:include page="footer.jsp" />
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
      google.load("visualization", "1", {packages:["table"]});
      google.setOnLoadCallback(drawTable);

      function drawTable() {
        var data = new google.visualization.DataTable();
        
        data.addColumn('string', 'Name of Candidate');
        data.addColumn('string', 'Status');
        data.addColumn('string', 'Phone Number');
        data.addColumn('number', 'Billing Rate');
        data.addColumn('string', 'Resume');
        data.addRows([
          ['<a href="#">Mike</a>', 'Applied', '900 009 9088', {v: 10000, f: '$10'}, 'true'],
          ['<a href="#">Jim</a>',  'Applied', '900 009 9088', {v:8000,   f: '$8'},  'false'],
          ['<a href="#">Alice</a>', 'Applied','900 009 9088', {v: 12500, f: '$12'}, 'true'],
          ['<a href="#">Bob</a>',  'Applied', '900 009 9088', {v: 7000,  f: '$7'},  'true']
        ]);

        data.setColumnProperty(0, {allowHtml: true});
        var table = new google.visualization.Table(document.getElementById('table_div'));

        table.draw(data, {showRowNumber: true, allowHtml: true});
      }
    </script>
