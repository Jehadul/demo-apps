<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="assets/css/feedback.css" type="text/css" />

<div id="feedbackModal">
	<div class="chat-box" style="display: block;">
		<div class="chat-box-header">
			<span id="feedbackTitle"> 
				<img src='assets/images/feedback-icon.png' class='icon' />
				Feedback - My Initial Dashboard
			</span>
			<span class="chat-box-toggle" id="modalClose"><i
				class="material-icons">close</i></span>
		</div>
		<div class="chat-box-body">
			<div class="chat-overlay">
				<div>
					<div class='starrr inline-block' id='priority_star'></div>
					<label id="user_rating" style="color: white; padding-left: 10px;"></label>
				</div>
			</div>
			<div>
				<div class="chat-logs"></div>
			</div>
			<!--chat-log -->
		</div>
		<div class="chat-input">
			<div class="message-bar1">
				<div class="message-inner">
					<a class="link icon-only class-a" href="#" style="height: 55px;">
						<i class="fa fa-camera" id="camera"></i>
					</a>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<textarea style="height: 55px;" id="chat-input" placeholder="Send a feedback..." class="input-chat floating-id"></textarea>
					
					
					<div class="quick-output" style="height: 55px;">
						<button class="btn btn-feedback-send pull-right btn-feedback-offset" style="border-color: #ffffff !important; height: 55px;">
							<span class="fa fa-paper-plane"></span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script src="vendor/starrr_rating_js_css/starrr.js"></script>
<script src="assets/js/html2canvas.js"></script>
<script>

	$("#modalClose").click(function() {
		$("#feedbackModal").hide();
	})

	$('.input-chat').keydown(function(e) {
		if (e.keyCode == 13) {
			if ($("#chat-input").val() == "") {
			} else {
				sendFeedback();
			}

		}
	});

	$(".btn-feedback-send").click(function(e) {
		e.preventDefault();
		if ($("#chat-input").val() == "") {

		} else {
			sendFeedback();

		}
	});



	$('.class-a').on('click', function() {
		console.log("hey")
	})
</script>









