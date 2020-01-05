<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- start: Common Header -->
     <jsp:include page="/WEB-INF/view/common/commonheader.jsp" />
<!-- end: Common Header -->

<!-- start: OFF-SIDEBAR -->
<div id="off-sidebar" class="sidebar">
	<div class="sidebar-wrapper">
		<ul class="nav nav-tabs nav-justified">
		
			<li class="active">
				<a id="chat-picture" href="#off-users" aria-controls="off-users" role="tab" data-toggle="tab"> 
				    <i class="fa fa-comments-o tab_icons"></i>
				</a>
			</li>
			
			<li>
				<a href="#off-groups" aria-controls="off-groups"
						role="tab" data-toggle="tab">
					<i class="fa fa-users tab_icons"></i>
				</a>
			</li>
			
			
			<li>
				<a href="#off-settings" aria-controls="off-settings"
					role="tab" data-toggle="tab"> <i class="fa fa-cog tab_icons"></i>
				</a>
			</li>
		</ul>
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="off-users">
				<div id="users" toggleable active-class="chat-open">
					<div class="users-list">
						<div class="sidebar-content perfect-scrollbar" id="addUserList">
							
						</div>
					</div>
					<div class="user-chat">
						<div class="chat-content">
							<div class="sidebar-content perfect-scrollbar scroll_down">
								<div class="row" id="back_icon">
									<div class="col-sm-2 col-xs-2">
										<a id="btn-back" class="sidebar-back pull-left" href="#" data-toggle-class="chat-open" data-toggle-target="#users">
											<i class="ti-angle-left tab_icons"></i>
										</a>
									</div>
									<div id="user-info" class="col-sm-6 col-xs-6">
										
									</div>
									<div class="col-sm-4 col-xs-4" style="padding-top:10px;">
										<a href="#" class="audio-call-modal">
											<i class="fa fa-phone tab_icons" style="color:green;"></i>
										</a>&nbsp;&nbsp;
										<a href="#" class="video video-call-modal">
											<i class="fa fa-video-camera tab_icons"></i>
										</a>
									</div>
								</div>
								<ol class="discussion msg-content" style="margin-top : 10px !important">
									
								</ol>
							</div>
						</div>
						<div class="message-bar">
							<div class="message-inner">
								<a class="link icon-only" href="#"><i class="fa fa-camera"></i></a>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<div class="message-area">
									<textarea name="message" placeholder="Message" id="message"></textarea>
								</div>
								<div class="link icon-only">
									<button class="btn btn-chat-send pull-right" type="button">
										<span class="fa fa-paper-plane"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="off-groups">
				<div id="groups" toggleable active-class="grpchat-open">
					<div class="groups-list">
						<div class="sidebar-content perfect-scrollbar" id="addGroupList">
							<div class="row">
								<div class="col-sm-8 col-xs-8">
									<h5 class="sidebar-title">Group Chats</h5>
								</div>
								<div class="col-sm-4 col-xs-4" style="padding:5px 0px 0px 20px;"> 
									<a href="#" onclick="createGroup()">
										<button class="btn btn-create-plus"></button>
			        		        </a>
								</div>
							</div>
							<ul class="media-list">
								<li class="media new-group">
									<div class="row">
										<div class="col-md-11">
											<a data-toggle-class="grpchat-open" data-toggle-target="#groups" 
											   <%-- onclick="loadGroupChat('${data.loginhistory[i.count-1].username}')"> --%>
											   onclick="loadGroupChat('Random Discussion', 'Mamunur Rahman')">
												<img alt="..." src="assets/photo/grp-chat.png" class="media-object"> 
												<div class="media-body">
													<h4 class="media-heading">Random Discussion</h4>
													<span> BY Jehadul Hoque </span>
												</div>
											</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="group-chat">
						<div class="grpchat-content">
							<div class="sidebar-content perfect-scrollbar scroll_down">
								<div class="row" id="grpback_icon">
									<div class="col-sm-2 col-xs-2">
										<a id="btn-grpback" class="sidebar-back pull-left" href="#" data-toggle-class="grpchat-open" data-toggle-target="#groups">
											<i class="ti-angle-left tab_icons"></i>
										</a>
									</div>
									<div id="group-info" class="col-sm-5 col-xs-5">
										
									</div>
									<div class="col-sm-5 col-xs-5" style="padding-top:7px;">
										<a href="#" class="audio-call-conference-modal">
											<i class="fa fa-phone tab_icons" style="color:green;"></i>
										</a> &nbsp;&nbsp;
										<a href="#" class="video-call-conference-modal">
											<i class="fa fa-video-camera tab_icons"></i>
										</a>&nbsp;&nbsp;
										<a href="#"> <!-- onclick="editMembers()" -->
											<i class="fa fa-user tab_icons"></i>
										</a>
									</div>
								</div>
								<ol class="discussion grpmsg-content" >

								</ol>
							</div>
						</div>
						<div class="message-bar">
							<div class="message-inner">
								<a class="link icon-only" href="#"><i class="fa fa-camera"></i></a>
								<div class="message-area">
									<textarea name="grpmessage" placeholder="Message" id="grpmessage"></textarea>
								</div>
								<div class="link icon-only">
									<button class="btn btn-chat-send pull-right" type="submit" id="btn-grpchat-send">
										<span class="fa fa-paper-plane"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			<div role="tabpanel" class="tab-pane" id="off-settings">
                <div class="sidebar-content perfect-scrollbar">
                    <h5 class="sidebar-title">General Settings</h5>
                    <ul class="media-list">
                        <li class="media">
                            <div class="padding-10">
                                <div class="display-table-cell">
                                    <input type="checkbox" class="js-switch" checked />
                                </div>
                                <span
                                    class="display-table-cell vertical-align-middle padding-left-10">Enable
                                    Notifications</span>
                            </div>
                        </li>
                    </ul>
                    <div class="save-options">
                        <button class="btn btn-success">
                            <i class="icon-settings"></i><span>Save Changes</span>
                        </button>
                    </div>
                    
                    <div style="margin-left: 10px; margin-right: 10px; margin-top: 200px">
                        <fieldset>
                            <legend> Credits </legend>
                            
                        <ul class="media-list">
                            <li class="media">
                            <a href="#">
                                    <div class="media-body">
                                        <h4 class="media-heading"><b>Product Owners</b></h4>
                                        <span id="product_owners"></span>
                                        
                                    </div>
                            </a>
                            </li>
                            <li class="media">
                            <a href="#"> 
                                 <div class="media-body">
                                     <h4 class="media-heading"><b>Designers</b></h4>
                                     <span id="designers"></span>
                                     
                                 </div>
                            </a>
                            </li>
                            <li class="media">
                            <a href="#"> 
                                    <div class="media-body">
                                        <h4 class="media-heading"><b>Developers</b></h4>
                                        <span id="developers"></span>
                                        
                                    </div>
                            </a>
                            </li>
                                <li class="media">
                            <a href="#"> 
                                    <div class="media-body">
                                        <h4 class="media-heading"><b>Testers</b></h4>
                                        <span id="testers"></span>
                                    </div>
                            </a>
                            </li>
                        </ul>
                            
                        </fieldset>

                    </div>
                </div>
            </div>
			
		</div>
		
	</div>
</div>
<!-- end: OFF-SIDEBAR -->

<!-- start: MODALS -->
<div class="chat-grp-create">
<div class="modal fade" id="grpCreateModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">
          	<span class="fa fa-close text-red"></span>
         	  </button>
          <div class="row" id="create-modal-title">
          	<!-- <i class="fa fa-users"></i>  -->Create Chatting Group
          </div>
        </div>
        <div class="modal-body">
			<div class="alert alert-block alert-danger hidden"></div>
			<div class="container-fluid container-fullw bg-white">
				<div class="row" style="margin-top: -20px">
					<div class="denotes-required dr">
						Denotes a required field
					</div>
				</div>
				<div class="row margin-top-8">
					<div class="row">
						<div class="col-md-8">
							<div class="form-group">
								<label for="grp_name">Group Name</label>
							 	<input type="text" name="grp_name" class="grp-modal-code required dirty-check" placeHolder="Enter a group name.."/>
							</div>
						</div>
					</div>
				</div>
				<div class="row margin-top-8">
					<div class="form-group">
						<span class="chat-add-emp"></span>
						<div id="added-members"></div>
					</div>
				</div>
				<div class="row margin-top-8">
					<div class="col-md-11 text-right btn-toolbar">
						<button class="cancel btn-sm width-80" id="btn-grpcancel" name="Cancel" >Cancel</button>
						<button class="create btn-sm width-80" id="btn-grpcreate" name="Create" >Create</button>
					</div>
				</div>
			</div>
        </div>
      </div>
    </div>
</div>
</div>

<div class="chat-grp-add">
<div class="modal fade" id="addUserModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">
          	<span class="fa fa-close text-red"></span>
         	  </button>
          <div class="row" id="add-modal-title">
          	Group members
          </div>
        </div>
        <div class="modal-body">
			<div class="alert alert-block alert-danger hidden"></div>
			<div class="container-fluid container-fullw bg-white">
				<div class="row" style="margin-top: -20px">
					<div class="denotes-required dr">
						Denotes a required field
					</div>
				</div>
				<div class="row margin-top-8">
					<div class="row">
						<div class="col-md-8">
							<div class="form-group">
								<cts:Label name="Group Name" labelFor="edit_grp_name"/>
							 	<cts:TextBox name="edit_grp_name" cssClass="grp-modal-code required dirty-check"/>
							</div>
						</div>
					</div>
				</div>
				<div class="row margin-top-8">
					<div class="row">
						<div class="col-md-8">
							<div class="form-group">
								<cts:Label name="Existing members:" labelFor="search_name"/>
							 	<cts:TextBox name="search_name" cssClass="grp-modal-code required dirty-check" placeHolder="Search a member.."/>
							</div>
						</div>
					</div>
				</div>
				<div class="row margin-top-8">
					<ul id="addUL" class="filterUL"></ul>
				</div>
				<div class="row margin-top-8">
					<div class="col-md-4 text-left btn-toolbar notAdmin">
		          		<span class="chat-add-newEmp"></span>
		            </div>
					<div class="col-md-8 text-right btn-toolbar">
						<cts:Button cssClass="save btn-sm width-80" spanClass="check" id="btn-grpsave" name="Save" />
					</div>
				</div>
			</div>
        </div>
      </div>
      </div>
</div>
</div>


<div class="chat-team-navigator">
	<div class="modal fade" id="teamModal" role="dialog">
	    <div class="modal-dialog" style="width:950px;">
	      <div class="modal-content">
	        <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">
		          	<span class="fa fa-close text-red"></span>
		        </button>
		        <div class="row" id="chat-team-modal-title">Team Navigator</div>
	        </div>
	        <div class="modal-body">
				<div class="alert alert-block alert-danger hidden"></div>
				<div class="container-fluid container-fullw bg-white">
					<div class="row ">
				<cts:TooltipBtn cssClass="find" spanClass="search" id="btnChiefChat" title="Search Team Member"/>
			</div>
			<div class="col-md-7">
				<div class="row ">
					<fieldset>
						<div class='tree-fromchat'>
							<ul>
								<li class ="rmgr"></li>
							</ul>
						</div>
					</fieldset>
				</div>
			</div>
			<div class="col-md-5" >
				<div class="col-md-12">
					<div class="row">
						<div class="new-photo"></div>
					</div>
					<div class="row">
						<table id="curUserTable" ></table>
					</div>
				</div>
			</div>
		   </div>
	      </div>
        </div>
      </div>
   </div>
</div>

<!-- end: MODALS -->

<!-- Small Modal -->
<div class="modal fade bs-example-modal-sm" id="modal_video_calling" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog modal-sm">
		<div class="modal-content">

			<div class="modal-body" id="modal_call_accept_body">
				
			</div>
			<div class="modal-footer">
				
				<button id="modal_reject_call" type="button" class="btn btn-primary">
					Reject
				</button>
				<button id="modal_accept_call" type="button" class="btn btn-primary btn-o" data-dismiss="modal">
					Accept
				</button>
			</div>
		</div>
	</div>
</div>
<!-- /Small Modal -->

<!-- <div class="alert alert-info alert-dismissable fade in" id="notification">
   	<a href="#" class="close" data-dismiss="alert" aria-label="close" onClick="this.parentNode.classList.remove('show');">X</a>&nbsp;&nbsp;
</div> -->



<!-- ============================================================ -->
<div class="minimize-div-audio-call hidden"></div>
<div class="minimize-div-audio-call-con hidden"></div>
<div class="minimize-div-video-call hidden"></div>
<div class="minimize-div-video-call-con hidden"></div>
<!-- ============================================================ -->



<!-- -------------------------------- Start : CHAT Section ------------------------------------- -->
<style>
.settings {
   top: 65px !important;
}

.media {
	border-bottom: 1px solid #fff !important;
}

.scroll_down {
   overflow-y:auto;
   overflow-x:hidden;
}

.btn-create-plus {
   color: #007AFF;
   border: 1px solid #0088ff;
}

.tab_icons {
   font-size: 19px !important;
}

#message, #grpmessage, #added-members {
   overflow-y:auto;
   overflow-x:hidden;
}

#user-info, #group-info {
   color: #778899;
   font-size: 12px;
   padding-left: 18px;
   padding-top: 5px;
}

.info, .info-name, .info-createdBy {
   white-space:nowrap;
   overflow:hidden;
   text-overflow:ellipsis;
}

#back_icon, #grpback_icon {
  position: -webkit-sticky;
  position: sticky;
  top: 0;
  left-padding: 5px;
  z-index: 100;
  overflow: auto;
  background-color: #ffffff;
  box-shadow: 0px 15px 10px -18px #111;
}

#added-members {
    height: 60px;
    border: 1px solid #ddd;
    resize: vertical;
    min-height: 100px;
    max-height: 250px;
}

#notification {
    visibility: hidden;
    min-width: 250px;
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 16px;
    position: fixed;
    z-index: 10;
    left: 50%;
    bottom: 30px;
    font-size: 16px;
}
#notification.show {
    visibility: visible;
    -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
    animation: fadein 0.5s, fadeout 0.5s 2.5s;
}
@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 30px; opacity: 1;}
}
@-webkit-keyframes fadeout {
    from {bottom: 30px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}
#chat-picture img {
  -moz-transform: scale(1.4);
  -webkit-transform: scale(1.4);
  transform: scale(1.4);
}
.msg-content {
	display: inline-block;
	word-break: break-word;
	width: 100%;
}

* {
  box-sizing: border-box;
}

#add-modal-title, #create-modal-title {
  font-size:16px;
  padding-left:20px;
}

.filterUL{
  list-style-type: none;
  padding: 0;
  margin: 0;
  height:140px;
  overflow:hidden; 
  overflow-y:scroll;
  border: 1px solid #ddd;
}

.filterUL li a {
  border: 1px solid #ddd;
  height: 35px;
  margin-top: -1px;
  background-color: #f6f6f6;
  padding: 6px 0px 0px 12px;
  text-decoration: none;
  font-size: 14px;
  color: black;
  display: block;
}

.filterUL li a:hover:not(.header) {
  background-color: #eee;
}


.chat-add-emp, .chat-add-newEmp {
	display: block;
	width: 30px;
	height: 30px;
	background-color: black;
	-webkit-mask-image: url(/assets/images/form_icons/add_user_group.svg);
	mask-image: url(/assets/images/form_icons/add_user_group.svg);
}

.chat-add-emp:hover, .chat-add-newEmp:hover {
	cursor: pointer;
    text-shadow: 0 1px 0 #fff;
    opacity: .2;
    background-color: #2F4F4F;
}
	
.chat-modal-body {
    max-height: 500px;
    overflow: auto;
    background: #eee;
    padding: 1px 15px 8px 15px !important;
}

.chat-modal-body {
    position: relative;
    padding: 15px;
}

.chat-modal-body1 {
    max-height: 500px;
    overflow: auto;
    background: #eee;
    padding: 1px 15px 8px 15px !important;
}

.chat-modal-body1 {
    position: relative;
    padding: 15px;
}



.tree-fromchat li {
	    margin: 0px 0;
	    list-style-type: none;
	    position: relative;
	    padding: 20px 5px 0px 5px;
}
.tree-fromchat li::before {
    content:'';
    position: absolute;
    top: 0;
    width: 1px;
    height: 100%;
    right: auto;
    left: -20px;
    border-left: 1px solid #ccc;
    bottom: 50px;
}
.tree-fromchat li::after {
    content:'';
    position: absolute;
    top: 30px;
    width: 25px;
    height: 20px;
    right: auto;
    left: -20px;
    border-top: 1px solid #ccc;
}
.tree-fromchat li a {
    display: inline-block;
    border: 1px solid #ccc;
    padding: 5px 10px;
    text-decoration: none;
    color: #666;
    font-family: arial, verdana, tahoma;
    font-size: 11px;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
}
/*Remove connectors before root*/
 .tree-fromchat > ul > li::before, .tree-fromchat > ul > li::after {
    border: 0;
}
/*Remove connectors after last child*/
 .tree-fromchat li:last-child::before {
    height: 30px;
}
/*Time for some hover effects*/

/*We will apply the hover effect the the lineage of the element also*/
 .tree-fromchat li a:hover, .tree-fromchat li a:hover+ul li a {
    background: #c8e4f8;
    color: #000;
    border: 1px solid #94a0b4;
}
/*Connector styles on hover*/
 .tree-fromchat li a:hover+ul li::after, .tree-fromchat li a:hover+ul li::before, 
 .tree-fromchat li a:hover+ul::before, .tree-fromchat li a:hover+ul ul::before {
    border-color: #94a0b4;
}

#chat-team-modal-title {
   font-size:18px;
   padding-left:20px;
}

.team-modal-body {
    max-height: 500px;
    overflow: auto;
    background: #eee;
    padding: 1px 15px 8px 15px !important;
}

.team-modal-body {
    position: relative;
    padding: 15px;
}
.local_video{
	position: absolute;
    display: block;
    right: 60%;
    -moz-transform: scale(-1, 1);
    -webkit-transform: scale(-1, 1);
    -o-transform: scale(-1, 1);
    -ms-transform: scale(-1, 1);
    /* transform: scale(-1, 1); */
    width: 106px;
    height: 50;
    z-index: 10;
 }
	
#off-sidebar .media-list .media .media-object {
    height: 40px;
    object-fit: contain;
}
</style>


<script src="vendor/ChatScripts/sockjs-0.3.4.min.js"/></script>
<script src="vendor/ChatScripts/stomp.js"/></script>
<script src="vendor/ChatScripts/knockout-3.0.0.js"/></script>
<script src="vendor/ChatScripts/adapter-latest.js"></script>
<script src="vendor/ChatScripts/nextRTC.js"></script>
<script>
	
</script>
<!-- 
<script>
	var newUserList = function() {
 	$.get("common/chat/onlinelist", function(data) {
 		ULIST = data;
 		var names = [];
 		var userList = "";
 		$('#addUserList').html("");
 		
 		userList = '<h5 class="sidebar-title">' + 'On-line' + '</h5>' + '<ul class="media-list">' + '<li class="media">';
 		
 		for (var i = 0; i < data.length; i++) {
 			names[i] = data[i].username;
	 		userList += '<div class="row">' + '<div class="col-md-11">' + '<c:set var="username" value="' + data[i].username + '" />' 
	 		    + '<a id="onlineUser" class="get' + data[i].username + '" data-toggle-class="chat-open" data-toggle-target="#users" onclick="loadSingleChat(\'' + data[i].username + '\')">' 
	 		    + '<i class="fa fa-circle status-online" style="font-size:8px;padding-right:40px;">' + '</i>' 
	 			          + '<img alt="..." src="assets/images/company/' + data[i].companyCode + '/emp/photo/'+ data[i].empId +'.jpg" class="media-object">' 
	 			          + '<span class="badge pull-right ' + data[i].username + '">' + '</span>' 
	 			          + '<div class="media-body">'+'<h4 class="media-heading">' + data[i].empName + '</h4>' 
	 			          + '<span>' + data[i].desig + '</span>' + '</div>' + '</a>' + '</div>' + '</div>';
 		}
 		userList += '</li>' + '</ul>';
 		
 		$.ajax({
		     type: "GET",
		     url: 'common/chat/offlinelist',
		     data: {list: names},
		     success: function(response){
		    	userList += '<h5 class="sidebar-title">' + 'Off-line' + '</h5>' + '<ul class="media-list">' + '<li class="media">';
		  		console.log(response.length);
		  		for (var i = 0; i < response.length; i++) {
		  			
		  		userList += '<div class="row">' + '<div class="col-md-11">' + '<c:set var="username" value="' + response[i].username + '" />' 
		  		    + '<a id="offlineUser" class="get' + response[i].username + '" data-toggle-class="chat-open" data-toggle-target="#users" onclick="loadSingleChat(\'' + response[i].username + '\')">' 
		  		    + '<img alt="..." src="assets/images/company/' + response[i].companyCode + '/emp/photo/'+ response[i].empId +'.jpg" class="media-object">' 
		  			          + '<span class="badge pull-right ' + response[i].username + '">' + '</span>' 
		  			          + '<div class="media-body">'+'<h4 class="media-heading">' + response[i].empName + '</h4>' 
		  			          + '<span>' + response[i].desig + '</span>' + '</div>' + '</a>' + '</div>' + '</div>';
		  		}
		  		userList += '</li>' + '</ul>';
		  		
		  		$('#addUserList').html(userList);
		  		msgCount();
		     }
		});
 		
 	});
 } -->

<!-- 
$('body').on('click', '#onlineUser, #offlineUser', function() {
	$("#users").toggleClass( "chat-open" );
	//alert($('#app').hasClass("app-offsidebar-open"));
}); 
 

/* $('body').on('click', '#onlineUser', function() {
	alert($(this).trigger("click"));
}); */
 
</script>-->



