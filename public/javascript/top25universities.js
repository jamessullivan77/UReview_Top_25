//===========================================================================
//Modal
//===========================================================================	



document.addEventListener("DOMContentLoaded",function(){
	
	var modal = document.getElementById("Modal");
	setTimeout(function(){
		modal.style.display = "block";
	},6000);



document.getElementById("close").addEventListener("click",
	function() {
    modal.style.display = "none";
})

//===========================================================================
//Cookie for collecting emails
//===========================================================================	


document.getElementById("_enter").addEventListener("submit",
	function(){
		// event.preventDefault();
   		var enteredEmail = document.getElementById("email_input").value + Cookies.get("Emails");
		Cookies.set("Emails",(enteredEmail));

		document.getElementById("email_input").value = "" ;



		$(document).windowLoad(function() {
    if ($.cookie("Emails") == null) {
        $.cookie("Emails", "yes");
        $("#modal").hide();
    }
	
});

});

document.getElementById("_enter").addEventListener("submit",
			function(){	

    modal.style.display = "none";

	
		});
		
	
		});













