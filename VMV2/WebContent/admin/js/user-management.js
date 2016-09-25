$(document).ready(function() {
	setMenuItemActive();
	TableManageButtons.init();
    $('#datatable').dataTable({
    	responsive : true,
		language : {
			"sProcessing" : "Đang xử lý...",
			"sLengthMenu" : "Xem _MENU_ mục",
			"sZeroRecords" : "Không tìm thấy dòng nào phù hợp",
			"sInfo" : "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
			"sInfoEmpty" : "Đang xem 0 đến 0 trong tổng số 0 mục",
			"sInfoFiltered" : "(được lọc từ _MAX_ mục)",
			"sInfoPostFix" : "",
			"sSearch" : "Tìm:",
			"sUrl" : "",
			"oPaginate" : {
				"sFirst" : "Đầu",
				"sPrevious" : "Trước",
				"sNext" : "Tiếp",
				"sLast" : "Cuối"
			}
		}
    });
    
    $("#form-add-user").validate({
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
				},
				password: {
					required: true,
					maxlength: 50,
					minlength: 6
				}
			},
			messages: {
				
			},
			submitHandler: function(form) {
				$(".loading-bar").slideDown(100);
        	}		
	});
    
    $("#form-update-user").validate({
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
				},
				password: {
					required: true,
					maxlength: 50,
					minlength: 6
				}
			},
			messages: {
				
			},
			submitHandler: function(form) {
				$(".loading-bar").slideDown(100);
        	}		
	});
    
    $(".modal").on("hidden.bs.modal", function() {
    	$(".loading-bar").hide();
    });
    $(".btn-cancel").click(function() {
    	$(".modal").modal("hide");
    });
    $('input[name="dateOfBirth"]').daterangepicker({
    	singleDatePicker: true,
        showDropdowns: true,
        format: 'DD/MM/YYYY'
    });
    $(".btn-delete-user").click(function() {
    	$(".loading-bar").slideDown(100);
    });
    //==========================    
    
    //code here..
    
    //=========================
});

function setMenuItemActive() {
	$(".user-management-menu-item").addClass("current-page");
}
