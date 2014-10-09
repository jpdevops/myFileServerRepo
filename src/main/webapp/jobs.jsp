<jsp:include page="header.jsp" />
<!-- Page Content -->
<div id="page-wrapper">
    <div>
        <div class="row">
            <div class="col-lg-12">
                &nbsp;
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        New Job
                    </div>
                    <div class="panel-body">
                        <p>
                        <form class="form-horizontal">
                            <fieldset>
                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="selectbasic">Reference Id:</label>
                                    <div class="col-md-9">
                                        <input id="textinput" name="textinput" placeholder="reference id" class="form-control input-md" type="text">
                                    </div>
                                </div>

                                <!-- Textarea -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textarea">Job Description</label>
                                    <div class="col-md-9">                     
                                        <textarea class="form-control" id="textarea" name="textarea">default text</textarea>
                                    </div>
                                </div>


                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Source</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="reference id" class="form-control input-md" type="text">
                                    </div>


                                    <!-- Multiple Radios (inline) -->

                                    <label class="col-md-2 control-label" for="radios">Source Type</label>
                                    <div class="col-md-4"> 
                                        <select id="selectbasic" name="selectbasic" class="form-control">
                                            <option>Direct</option>
                                            <option>Primary</option>
                                            <option>Portals</option>
                                            <option>Referrals</option>
                                            <option>Others</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">End Client</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                                    </div>
                                    <label class="col-md-2 control-label" for="textinput">Client Location</label>  
                                    <div class="col-md-4">
                                        <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Tags</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                                    </div>
                                    <label class="col-md-2 control-label" for="textinput">Billing Rate</label>  
                                    <div class="col-md-4">
                                        <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Link</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                                    </div>
                                    <label class="col-md-2 control-label" for="textinput">Contact Details</label>  
                                    <div class="col-md-4">
                                        <textarea class="form-control" id="textarea" name="textarea">default text</textarea>
                                    </div>
                                </div>

                                <!-- Button (Double) -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="button1id"></label>
                                    <div class="col-md-10">
                                        <button id="button1id" name="button1id" class="btn btn-success">Save</button>
                                        <button id="button2id" name="button2id" class="btn btn-danger">Cancel</button>
                                    </div>
                                </div>

                            </fieldset>
                        </form>

                        </p>
                    </div>
                    
                </div>
            </div>
        </div>

    </div>

</div>
<jsp:include page="footer.jsp" />
<!-- Custom Theme JavaScript -->
<script src="js/candidate.js"></script>

