function goResetPasswordAction(){
	document.getElementById("backFlag").value="1";
	document.getElementById("resetPasswordForm").action="ResetPasswordAction";
}
function goResetPasswordCompleteAction(){
	document.getElementById("resetPasswordForm").action="ResetPasswordCompleteAction";
}