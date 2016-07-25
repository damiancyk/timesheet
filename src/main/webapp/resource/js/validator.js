function validatePassword(sPassword, min) {
	if (sPassword.length >= min)
		return true;
	else
		return false;

}

function validateEmail(sEmail) {
	var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	if (filter.test(sEmail)) {
		return true;
	} else {
		return false;
	}
}

function isBusyLogin(sLogin) {
	jQuery.getJSON("register/busyLogin", {
		login : sLogin
	}, function(data) {
		if (data == true) return true;
		else return false;
	});
}

function isBusyLogin2() {
	jQuery.getJSON("register/busyLogin", {
		login : $("#idLoginInput").val()
	}, function(data) {
		if (data == true) {
			$("#idLoginInfo").removeClass("messageInfo messageGood").addClass(
					"messageBad");
			$('#idLoginInfo').html("login zajety");
		} else {
			$("#idLoginInfo").removeClass("messageInfo messageBad").addClass(
					"messageGood");
			$('#idLoginInfo').html("login wolny");
		}
	});
}

function doAjax() {
	$.ajax({
		url : 'register/time',
		data : ({
			name : "me"
		}),
		success : function(data) {
			$('#divAjaxSimple').html("date: " + data);
		}
	});
}