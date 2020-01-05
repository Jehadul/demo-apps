<!--  Get The Initial Time For Loading a Page -->
<script>
if(!window.jQuery){window.location = "/?desturl=" + (window.location.pathname + window.location.search);}

var pageLoadStartTime = new Date().getTime();
var _imagePath = 'assets/images';
var _uploadPath = "";
var _attachmentPath = ""; 

/* setInterval(function(){ 
	navigator.geolocation.getCurrentPosition(locationSuccess, locationError);
	function locationSuccess(position) {
		var lat = position.coords.latitude;
		var lng = position.coords.longitude;
		$.ajax({
			type: "GET",
			url: "sys/aa/rpt_user/updatelatlng/" + lat + "/" + lng + "/",
			dataType: 'json',
			async: false,
			cache: true,
			success: function (data){
				console.log('1 munite complete');
			}
		});
	}
	function locationError(error) {
	  console.log("Error: " + error.code, "Message: " + error.message);
	}

}, 60000); */

</script>