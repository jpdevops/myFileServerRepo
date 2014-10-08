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
                        <div class="form-horizontal">
                            <!-- Other fields not shown for brevity -->
                            <div class="form-group">
                                <label class="control-label col-md-2">Reference Id </label>
                                <div class="col-md-10 form-control-static">
                                    DJ100001
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-2">Reference Id </label>
                                <div class="col-md-10 form-control-static">
                                    DJ100001
                                </div>
                            </div>
                         </div>
                        <form class="form-horizontal">
                            <fieldset>

                            <!-- Form Name -->
                            <legend>Form Name</legend>
                            <!-- Select Basic -->
                            <div class="form-group">
                              <label class="col-md-3 control-label" for="selectbasic">Select Basic</label>
                              <div class="col-md-9">
                                <select id="selectbasic" name="selectbasic" class="form-control">
                                  <option value="1">Option one</option>
                                  <option value="2">Option two</option>
                                  <option value="3">Option three</option>
                                </select>
                              </div>
                            </div>


                            <!-- Text input-->
                            <div class="form-group">
                              <label class="col-md-3 control-label" for="textinput">Text Input</label>  
                              <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                              </div>


                            <!-- Multiple Radios (inline) -->

                              <label class="col-md-3 control-label" for="radios">Inline Radios</label>
                              <div class="col-md-3"> 
                                <label class="radio-inline" for="radios-0">
                                  <input name="radios" id="radios-0" value="1" checked="checked" type="radio">
                                  Yes
                                </label> 
                                <label class="radio-inline" for="radios-1">
                                  <input name="radios" id="radios-1" value="2" type="radio">
                                  No
                                </label> 
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="col-md-3 control-label" for="textinput">Text Input</label>  
                              <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                              </div>
                              <label class="col-md-3 control-label" for="textinput">Text Input</label>  
                              <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                              </div>
                             </div>

                              <!-- Textarea -->
                            <div class="form-group">
                              <label class="col-md-3 control-label" for="textarea">Text Area</label>
                              <div class="col-md-9">                     
                                <textarea class="form-control" id="textarea" name="textarea">default text</textarea>
                              </div>
                            </div>

                            <!-- Button (Double) -->
                            <div class="form-group">
                              <label class="col-md-3 control-label" for="button1id"></label>
                              <div class="col-md-8">
                                <button id="button1id" name="button1id" class="btn btn-success">Ok</button>
                                <button id="button2id" name="button2id" class="btn btn-danger">Cancel</button>
                              </div>
                            </div>

                            </fieldset>
                        </form>
                        
                    </p>
                </div>
                <div class="panel-footer">
                    Panel Footer
                </div>
            </div>
        </div>
    </div>
<jsp:include page="footer.jsp" />
