<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertTemplate template="../templates/admin-template.jsp">

	<tiles:putAttribute name="content">

		<!-- Custom styling plus plugins -->
		<link
			href="<%=request.getContextPath()%>/resources/production/js/datatables/jquery.dataTables.min.css"
			rel="stylesheet" type="text/css" />
		<link
			href="<%=request.getContextPath()%>/resources/production/js/datatables/buttons.bootstrap.min.css"
			rel="stylesheet" type="text/css" />
		<link
			href="<%=request.getContextPath()%>/resources/production/js/datatables/fixedHeader.bootstrap.min.css"
			rel="stylesheet" type="text/css" />
		<link
			href="<%=request.getContextPath()%>/resources/production/js/datatables/responsive.bootstrap.min.css"
			rel="stylesheet" type="text/css" />
		<link
			href="<%=request.getContextPath()%>/resources/production/js/datatables/scroller.bootstrap.min.css"
			rel="stylesheet" type="text/css" />
		<link
			href="<%=request.getContextPath()%>/resources/production/css/datepicker/daterangepicker.css"
			rel="stylesheet" type="text/css" />
		<link
		href="<%=request.getContextPath()%>/resources/production/css/multiple-select/multiple-select.css"
		rel="stylesheet" type="text/css" />
		<!-- /Custom styling plus plugins -->

		<div class="page-title" style="margin-bottom: 50px">
			<div class="title_left">
				<h3>Quản lý Vắc xin</h3>
			</div>
			<div class="title_right"></div>
		</div>
		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<a class="btn btn-success btn-sm" href="" data-toggle="modal"
							data-target=".add-vaccine-modal"><i class="fa fa-plus"></i>
							Thêm mới</a>
						<div class="clearfix"></div>
					</div>

					<div class="x_content">
						<!-- Put your code here -->
						<form method="post">
							<table id="datatable" class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>#Mã</th>
										<th>Tên</th>
										<th>Chỉ định</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Axit clohydric</td>
										<td>Phòng bệnh ung thư da</td>
										<td><a class="btn btn-primary btn-xs" data-toggle="modal"
											data-target=".update-vaccine-modal">Xem</a> <a
											class="btn btn-danger btn-xs" data-toggle="modal"
											data-target=".bs-example-modal-sm">Xóa</a></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>

				<!-- modals -->
				<div class="x_content">

					<div class="modal fade bs-example-modal-sm" tabindex="-1"
						role="dialog" aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
									<h4 class="modal-title" id="myModalLabel2">Thông báo</h4>
								</div>
								<div class="modal-body">
									<div class="loading-bar">Đang xử lý...</div>
									<h4>Bạn có chắc muốn xóa thông tin này?</h4>
								</div>
								<div class="modal-header">
									<div style="float: right">
										<button type="button"
											class="btn btn-sm btn-danger btn-delete-user">Xóa</button>
										<button type="button" class="btn btn-sm btn-default"
											data-dismiss="modal">Đóng</button>
									</div>
								</div>

							</div>
						</div>
					</div>

					<div class="modal fade add-vaccine-modal" tabindex="-1"
						role="dialog" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
									<h4 class="modal-title">Thêm vắc xin</h4>
								</div>
								<div class="modal-body">
									<div class="x_content">
										<div class="loading-bar">Đang xử lý...</div>
										<!-- Put your code here -->
										<form id="form-add-vaccine"
											class="form-horizontal form-label-left" method="post">

											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="name">Tên vacxin<span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="vaccineName"
														placeholder="Tên đầy đủ, ví dụ: Pentaxin" type="text">
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Nhà
													sản xuất</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="manufacturer"
														placeholder="Tên nhà sản xuất, ví dụ: Parce" type="text">
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Giá<span
													class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="price" type="text"
														placeholder="Giá vắc xin (VND), ví dụ: 50000">
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Số
													lần tiêm<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="numberOfDoses"
														type="number">
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Chỉ định </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<textarea rows="5" name="indication"
														class="form-control col-md-7 col-xs-12"></textarea>
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Chống Chỉ định </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<textarea rows="5" name="contraindication"
														class="form-control col-md-7 col-xs-12"></textarea>
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Tác dụng phụ </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<textarea rows="5" name="sideEffects"
														class="form-control col-md-7 col-xs-12"></textarea>
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Phòng bệnh </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<select name="disease" multiple="multiple" class="form-control">
											            <option value="1">January</option>
											            <option value="2">February</option>
											            <option value="3">March</option>
											            <option value="4">April</option>
											            <option value="5">May</option>
											            <option value="6">June</option>
											            <option value="7">July</option>
											            <option value="8">August</option>
											            <option value="9">September</option>
											            <option value="10">October</option>
											            <option value="11">November</option>
											            <option value="12">December</option>
											        </select>
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Hình ảnh </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input id="ten" class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="image" type="file">
												</div>
											</div>
											<div class="ln_solid"></div>
											<div class="form-group">
												<div class="col-md-6 col-md-offset-3">
													<button type="submit" class="btn btn-success">Thêm</button>
													<a class="btn btn-default btn-cancel">Hủy</a>
												</div>
											</div>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

					<div class="modal fade update-vaccine-modal" tabindex="-1"
						role="dialog" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
									<h4 class="modal-title">Xem thông tin vắc xin</h4>
								</div>
								<div class="modal-body">
									<div class="x_content">
										<div class="loading-bar">Đang xử lý...</div>
										<!-- Put your code here -->
										<form id="form-update-vaccine"
											class="form-horizontal form-label-left" method="post">
											<div class="image-view">
												<img alt=""
													src="<%=request.getContextPath()%>/resources/images/vaccine-default.jpg">
												<input class="form-control" data-validate-length-range="6"
													name="image" type="file">
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="name">Tên vacxin<span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="vaccineName"
														placeholder="Tên đầy đủ, ví dụ: Pentaxin" type="text" value="Axit clohydric">
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Nhà
													sản xuất</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="manufacturer"
														placeholder="Tên nhà sản xuất, ví dụ: Parce" type="text" value="Parec">
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Giá<span
													class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="price" type="text"
														placeholder="Giá vắc xin (VND), ví dụ: 50000" value="50000">
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Số
													lần tiêm<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input class="form-control col-md-7 col-xs-12"
														data-validate-length-range="6" name="numberOfDoses"
														type="number" value="3">
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Chỉ định </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<textarea rows="5" name="indication"
														class="form-control col-md-7 col-xs-12">Chỉ định</textarea>
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Chống Chỉ định </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<textarea rows="5" name="contraindication"
														class="form-control col-md-7 col-xs-12">Chống chỉ định</textarea>
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Tác dụng phụ </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<textarea rows="5" name="sideEffects"
														class="form-control col-md-7 col-xs-12">Tác dụng phụ</textarea>
												</div>
											</div>
											<div class="item form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="textarea">Phòng bệnh </label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<select name="disease" multiple="multiple" class="form-control">
											            <option value="1">January</option>
											            <option value="2">February</option>
											            <option value="3">March</option>
											            <option value="4">April</option>
											            <option value="5">May</option>
											            <option value="6">June</option>
											            <option value="7">July</option>
											            <option value="8">August</option>
											            <option value="9">September</option>
											            <option value="10">October</option>
											            <option value="11">November</option>
											            <option value="12">December</option>
											        </select>
												</div>
											</div>
											<div class="ln_solid"></div>
											<div class="form-group">
												<div class="col-md-6 col-md-offset-3">
													<button type="submit" class="btn btn-success">Cập
														nhật</button>
													<a class="btn btn-default btn-cancel">Hủy</a>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

					<!-- /modals -->
				</div>
			</div>
		</div>
	</tiles:putAttribute>

	<tiles:putAttribute name="javascript-source">

		<!-- Datatables-->
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/jquery.dataTables.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/dataTables.bootstrap.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/dataTables.buttons.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/buttons.bootstrap.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/jszip.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/pdfmake.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/vfs_fonts.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/buttons.html5.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/buttons.print.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/dataTables.fixedHeader.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/dataTables.keyTable.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/dataTables.responsive.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/responsive.bootstrap.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datatables/dataTables.scroller.min.js"></script>

		<!-- multiple-select -->
		<script
			src="<%=request.getContextPath()%>/resources/production/js/multiple-select/multiple-select.js"></script>
		<script>
			//$("select[name='disease']").multipleSelect("getSelects"));
		 	$("select[name='disease']").multipleSelect({
		 		selectAll: false,
		 		countSelected: "# bệnh % đã chọn"
		 	});
		</script>
			
		<!-- datepicker -->
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datepicker/moment.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/production/js/datepicker/daterangepicker.js"></script>
		<!-- pace -->
		<script>
        var handleDataTableButtons = function() {
            "use strict";
            0 !== $("#datatable-buttons").length && $("#datatable-buttons").DataTable({
              dom: "Bfrtip",
              buttons: [{
                extend: "copy",
                className: "btn-sm"
              }, {
                extend: "csv",
                className: "btn-sm"
              }, {
                extend: "excel",
                className: "btn-sm"
              }, {
                extend: "pdf",
                className: "btn-sm"
              }, {
                extend: "print",
                className: "btn-sm"
              }],
              responsive: !0
            })
          },
          TableManageButtons = function() {
            "use strict";
            return {
              init: function() {
                handleDataTableButtons()
              }
            }
          }();
        </script>

		<!-- variable -->
		<script>
        	var contextPath = "<%=request.getContextPath()%>";
		</script>

		<script
			src="<%=request.getContextPath()%>/admin/js/vaccine-management.js"></script>

		<!-- prepare form validation -->
		<script
			src="<%=request.getContextPath()%>/resources/production/js/validate/jquery.validate.js"></script>
		<script>
			jQuery
					.extend(
							jQuery.validator.messages,
							{
								required : "Không được bỏ trống trường này.",
								email : "Email không hợp lệ.",
								date : "Định dạng ngày không hợp lệ.",
								number : "Vui lòng nhập vào ký tự số.",
								equalTo : "Please enter the same value again.",
								accept : "Please enter a value with a valid extension.",
								maxlength : jQuery.validator
										.format("Vui lòng nhập ít hơn {0} ký tự."),
								minlength : jQuery.validator
										.format("Vui lòng nhập nhiều hơn {0} ký tự."),
								rangelength : jQuery.validator
										.format("Please enter a value between {0} and {1} characters long."),
								range : jQuery.validator
										.format("Please enter a value between {0} and {1}."),
							});
			$.validator.addMethod("notSpecialRegex", function(value, element) {
				return this.optional(element) || /^[a-z0-9\-]+$/i.test(value);
			}, "Vui lòng không nhập ký tự đặc biệt.");
			$.validator.addMethod("mynumber", function(value, element) {
				return this.optional(element)
						|| /^(\d+|\d+.\d{1,2})$/.test(value);
			}, "Vui lòng nhập đúng định dạng giá.");
		</script>
		<!-- /form validation -->
	</tiles:putAttribute>

</tiles:insertTemplate>