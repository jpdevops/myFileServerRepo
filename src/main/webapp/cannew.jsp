<jsp:include page="header.jsp" />
<!-- Page Content -->
<div id="page-wrapper">
    <div>
        <div class="row">
            <div class="col-lg-12">
                &nbsp;
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        New Candidate
                    </div>
                    <div class="panel-body">
                        <p>
                        <form class="form-horizontal">
                            <fieldset>
                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="selectbasic">Reference Id</label>
                                    <div class="col-md-9">
                                        <input id="textinput" name="textinput" placeholder="reference id" class="form-control input-md" type="text" disabled>
                                    </div>
                                </div>

                                <!-- Textarea -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textarea">Candidate Description</label>
                                    <div class="col-md-9">                     
                                        <textarea class="form-control" id="textarea" name="textarea"></textarea>
                                    </div>
                                </div>


                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Name</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="name of candidate" class="form-control input-md" type="text">
                                    </div>

                                    <!-- Multiple Radios (inline) -->

                                    <label class="col-md-2 control-label" for="radios">Visa status</label>
                                    <div class="col-md-4"> 
                                        <select id="selectbasic" name="selectbasic" class="form-control">
                                            <option>None</option>
                                            <option>H1B</option>
                                            <option>L1</option>
                                            <option>EAD</option>
                                            <option>Green Card</option>
                                            <option>Citizen</option>
                                            <option>Other</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Phone No</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="425-000-0000" class="form-control input-md" type="text">
                                    </div>
                                    <label class="col-md-2 control-label" for="textinput">Email</label>  
                                    <div class="col-md-4">
                                        <input id="textinput" name="textinput" placeholder="name@domain.com" class="form-control input-md" type="text">
                                    </div>
                                </div>

                                
                                
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Resume</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" type="file">
                                    </div>
                                    
                                    <label class="col-md-2 control-label" for="textinput">Need ?</label>  
                                    <div class="col-md-4">
                                        <select id="selectbasic" name="selectbasic" class="form-control">
                                            <option>None</option>
                                            <option>Urgent</option>
                                            <option>In Market</option>
                                            <option>Project about to finish</option>
                                            <option>Transfer of visa</option>
                                            <option>Looking out</option>
                                            <option>2nd Job</option>
                                            <option>Other</option>
                                        </select>
                                    </div>
                                </div>
                                
                                
                                <hr>
                                &nbsp;
                                
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Current Location</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="my location" class="form-control input-md" type="text">
                                    </div>
                                    <label class="col-md-2 control-label" for="textinput">Current Client</label>  
                                    <div class="col-md-4">
                                        <input id="textinput" name="textinput" placeholder="Microsoft" class="form-control input-md" type="text">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput"></label>  
                                    <div class="col-md-3">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="">Willing to Relocate
                                            </label>
                                        </div>
                                    </div>
                                    <label class="col-md-2 control-label" for="textinput">Years of Experience</label>  
                                    <div class="col-md-4">
                                        <input id="textinput" name="textinput" placeholder="10" class="form-control input-md" type="text">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="textinput">Last 4 digits</label>  
                                    <div class="col-md-3">
                                        <input id="textinput" name="textinput" placeholder="9090" class="form-control input-md" type="text">
                                    </div>
                                    
                                    <label class="col-md-2 control-label" for="textinput">Other Details</label>  
                                    <div class="col-md-4">
                                        <textarea class="form-control" id="textarea" name="textarea"></textarea>
                                    </div>
                                </div>
                                
                                <hr>
                                
                                <!-- Button (Double) -->
                                <div class="form-group">
                                    <label class="col-md-5 control-label" for="button1id"></label>
                                    <div class="col-md-6">
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

