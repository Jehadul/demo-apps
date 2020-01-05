</div>
</div>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- start: FOOTER -->
<footer>
	<div class="footer-inner">
		<div class="pull-left">
			<span class="text-bold ">MEMO v1 </span>&nbsp;&copy;
			<span class="current-year"></span>
			<span class="text-bold text-uppercase"> Demo Ltd.</span>
				<span>All rights reserved </span>

		</div>

		<div class="pull-right">
			<span class="go-top"><i class="ti-angle-up"></i></span>
		</div>
	</div>
</footer>
<!-- end: FOOTER -->


<div class="lock-screen-placeholder" style="display: none;"></div>


<script src="vendor/jquery/jquery.min.js"></script>  
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/modernizr/modernizr.js"></script>
<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="vendor/switchery/switchery.min.js"></script>
<script src="vendor/Chart.js/Chart.min.js"></script>
<script src="vendor/jquery.sparkline/jquery.sparkline.min.js"></script>
<script src="assets/js/index.js"></script>
<script src="vendor/sweetalert/sweet-alert.min.js"></script>
<script src="vendor/toastr/toastr.min.js"></script>
<script src="vendor/DataTables/jquery.dataTables.min.js?v=1.0.1"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="vendor/autosize/autosize.min.js"></script>
<script src="vendor/selectFx/classie.js"></script>
<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
<script src="vendor/bootstrap-fileinput/jasny-bootstrap.js"></script>
<script src="vendor/ckeditor/ckeditor.js"></script>
<script src="vendor/jstree/jstree.min.js"></script>
<script src="assets/js/colresize.js"></script>
<script src="assets/js/main_1.js"></script>
<script src="assets/js/form-elements.js"></script>
<script src="assets/js/common.js"></script> 
<script src="assets/js/layout.js"></script>
<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<!-- <script src="/assets/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script> -->
<script src="vendor/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
<script src="vendor/moment/moment.min.js"></script>
<script src="vendor/fullcalendar/fullcalendar.min.js"></script>
<script src="vendor/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<script src="assets/js/accounting.min.js"></script>
<script src="assets/js/accounting.js"></script>


<!-- added here for chat system -->
<jsp:include page="/WEB-INF/view/common/chat.jsp" />

<!-- $$$$$$$$$$$$$$ == Including Page - User Feedback == $$$$$$$$$$$$ == -->
		<jsp:include page="/WEB-INF/view/common/feedback.jsp" />

<script>
	
var uiHeaderFixed = ${data.userPref.uiHeaderFixed};
var uiFooterFixed = ${data.userPref.uiFooterFixed};
var uiSidebarClosed = ${data.userPref.uiSidebarClosed};
var uiSidebarFixed = ${data.userPref.uiSidebarFixed};

if(uiSidebarFixed === true){
	$('#fixed-sidebar').prop('checked', true);
}else{
	$('#fixed-sidebar').prop('checked', false);
}
if(uiSidebarClosed === true){
	$('#closed-sidebar').prop('checked', true);
}else{
	$('#closed-sidebar').prop('checked', false);
}

if(uiFooterFixed === true){
	$('#fixed-footer').prop('checked', true);
}else{
	$('#fixed-footer').prop('checked', false);
}

if(uiHeaderFixed === true){
	$('#fixed-header').prop('checked', true);
}else{
	$('#fixed-header').prop('checked', false);
}


 	$('a.click-fav').click(function () {
		$(this).dropdown("toggle");
	}); 
 	
 	$('.emp-settings a').click(function () {
		$(this).dropdown("toggle");
	}); 
 	
	
 	
</script>
<style>

.emp-settings li a {
    background-color: #2c3034 !important;
}


</style>

</body>
</html>