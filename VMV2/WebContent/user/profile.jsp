<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertTemplate template="../templates/user-template.jsp" >

	<tiles:putAttribute name="content">
	
		<!-- Custom styling plus plugins -->
		<link href="<%=request.getContextPath() %>/resources/production/js/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath() %>/resources/production/js/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath() %>/resources/production/js/datatables/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath() %>/resources/production/js/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath() %>/resources/production/js/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath() %>/resources/production/css/datepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
		<!-- /Custom styling plus plugins -->
		<div class="head-info">
			<h1>Trung Tâm Y tế dự phòng <b>ABC</b></h1>
			<p>Địa chỉ: 54 Nguyễn Lương Bằng, Liên Chiểu, tp Đà Nẵng</p>
			<p>Điện thoại: 0511 222 333</p>
		</div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="content-page">
					<div class="x_content">
						<form id="form-update-profile" class="form-horizontal form-label-left" method="post" style="">
							<div class="image-view">
								<img alt="" src="<%=request.getContextPath() %>/resources/images/avatar-default.jpg">
		                        <input class="form-control" data-validate-length-range="6" name="image" type="file">
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name"></label>
								<div class="col-md-6 col-sm-6 col-xs-12" style="font-size: 14px; font-weight: 500" >
									ID: 10210
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name">Tên <span class="required">*</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input class="form-control col-md-7 col-xs-12" data-validate-length-range="6"
										name="name" placeholder="Tên đầy đủ, ví dụ: Nguyễn Nam"
										 type="text" value="Nguyễn Văn Nam">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="birthday"> Ngày sinh<span class="required">*</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input name="dateOfBirth" type="text" class="form-control col-md-7 col-xs-12" 
									value="10/10/1994" readonly="readonly">
								</div>
							</div>
							<div class="item form-group">
		                      	<label class="control-label col-md-3 col-sm-3 col-xs-12">Giới tính</label>
		                      	<div class="col-md-6 col-sm-6 col-xs-12">
		                        	<select class="form-control" name="gender">
		                          		<option value="1">Nam</option>
		                          		<option value="2">Nữ</option>
				                        <option value="3">Khác</option>
		                        	</select>
		                      	</div>
	                      	</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="number">Số điện thoại <span class="required">*</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="number" name="phoneNumber"
										class="form-control col-md-7 col-xs-12" value="01222333444">
								</div>
							</div>
							<div class="item form-group">
		                      	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Địa chỉ <span class="required">*</span></label>
		                      	<div class="col-md-6 col-sm-6 col-xs-12"	>
		                        	<textarea name="address" class="form-control col-md-7 col-xs-12">Đại học Bách Khoa</textarea>
		                      	</div>
	                    	</div>
	                    	<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name">Tên đăng nhập <span class="required">*</span></label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input class="form-control col-md-7 col-xs-12" data-validate-length-range="6"
										name="username" type="text" value="nam123" readonly="readonly">
								</div>
							</div>
	                    	<br>
	                    	<div class="item form-group">
		                      	<label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
		                      	<div class="col-md-6 col-sm-6 col-xs-12"	>
		                        	<a data-toggle="modal" data-target=".update-password-modal">Đổi mật khẩu</a>
		                      	</div>
	                    	</div>
	                    	<div class="form-group">
								<div class="col-md-6 col-md-offset-3">
									<button type="submit" class="btn btn-success">Cập nhật</button>
								</div>
							</div>
						</form>
					</div>
					<div class="x_content">
						<div class="modal fade update-password-modal" tabindex="-1" role="dialog" aria-hidden="true">
			            	<div class="modal-dialog">
			                    <div class="modal-content">
				                    <div class="modal-header">
				                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
				                        </button>
				                        <h4 class="modal-title">Đổi mật khẩu</h4>
				                    </div>
				                    <div class="modal-body">
				                        <div class="x_content">
				                        
											<form id="form-update-password" class="form-horizontal form-label-left" method="post">
												<div class="item form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12"
														for="name">Mật khẩu mới<span class="required">*</span></label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input id="password" class="form-control col-md-7 col-xs-12" data-validate-length-range="6"
															name="password" type="text">
													</div>
												</div>
												<div class="item form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12"
														for="name">Xác nhận mật khẩu <span class="required">*</span></label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input class="form-control col-md-7 col-xs-12" data-validate-length-range="6"
															name="passwordf" type="text">
													</div>
												</div>
												
												<div class="ln_solid"></div>
												<div class="form-group">
													<div class="col-md-6 col-md-offset-3">
														<button type="submit" class="btn btn-success">Cập nhật</button>
													</div>
												</div>
											</form>
										</div>
				                     </div>
			                     <div class="clearfix"></div>
			                    </div>
			                </div>
			        	</div>
			        </div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
	
	<tiles:putAttribute name="javascript-source">
		
        <!-- datepicker -->
		<script src="<%=request.getContextPath() %>/resources/production/js/datepicker/moment.min.js"></script>
       <script src="<%=request.getContextPath() %>/resources/production/js/datepicker/daterangepicker.js"></script>
             
        <!-- variable -->
        <script>
        	var contextPath = "<%=request.getContextPath() %>";
        	$(document).ready(function() {
        		$(".profile-item").addClass("current-page");
        		$('input[name="dateOfBirth"]').daterangepicker({
        	    	singleDatePicker: true,
        	        showDropdowns: true,
        	        format: 'DD/MM/YYYY'
        	    });
        		$("#form-update-profile").validate({
       				rules: {
       						name: {
       							required: true,
       						},
       						dateOfBirth: {
       							required: true
       						},
       						phoneNumber: {
       							required: true,
       							number: true
       						},
       						address: {
       							required: true
       						},
       						username: {
       							required: true,
       							maxlength: 50,
       							minlength: 6,
       							notSpecialRegex: true
       						}
       					},
       					messages: {
       						
       					},
       					submitHandler: function(form) {
       						form.submit();
       		        	}		
        			});
        		$("#form-update-password").validate({
       				rules: {
       					password: {
							required: true,
							maxlength: 50,
							minlength: 6
						},
						passwordf: {
							required: true,
							maxlength: 50,
							minlength: 6,
							equalTo: "#password"
       					}
					},
   					messages: {
   						
   					},
      					submitHandler: function(form) {
      						form.submit();
      		        	}		
       			});
        	});
        </script>
        
        <script src="<%=request.getContextPath() %>/user/js/home.js"></script>
	  	
		<!-- prepare form validation -->
		<script src="<%=request.getContextPath()%>/resources/production/js/validate/jquery.validate.js"></script>
		<script>
		jQuery.extend(jQuery.validator.messages, {
		    required: "Không được bỏ trống trường này.",
		    email: "Email không hợp lệ.",
		    date: "Định dạng ngày không hợp lệ.",
		    number: "Vui lòng nhập vào ký tự số.",
		    creditcard: "Please enter a valid credit card number.",
		    equalTo: "Dữ liệu không khớp.",
		    accept: "Please enter a value with a valid extension.",
		    maxlength: jQuery.validator.format("Vui lòng nhập ít hơn {0} ký tự."),
		    minlength: jQuery.validator.format("Vui lòng nhập nhiều hơn {0} ký tự."),
		    rangelength: jQuery.validator.format("Please enter a value between {0} and {1} characters long."),
		    range: jQuery.validator.format("Please enter a value between {0} and {1}."),
		});
		$.validator.addMethod("notSpecialRegex", function(value, element) {
	        return this.optional(element) || /^[a-z0-9\-]+$/i.test(value);
	    }, "Vui lòng không nhập ký tự đặc biệt.");
		</script>
		<!-- /form validation -->	
	</tiles:putAttribute>

</tiles:insertTemplate>