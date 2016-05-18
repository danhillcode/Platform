



getParameters = function(){
	var ret = {};

	var queryString = window.location.search.substring(1);
	var params = queryString.split('&');
	for( var co=0; co<params.length; co++){
		var keyValue = params[co].split('-');
		ret[keyValue[0]] = unescape(keyValue[1]);
	}

return ret;

};

onClientReady = function(){
	gapi.hangout.onApiReady.add(function(){
		if(e.isApiReady){
			onApiReady();
		}
	});
};


onApiReady = function(){
//Get the params that were sent via the html form and pass to server
var param = getParameters();
var now = new Date();

//At this point we can access the hangout API functions
var hangoutUrl = gapi.hangout.getHangoutUrl();

//call this and send 7 params to server
var callbackUrl = 'register_hangout.json';

debugger
$.ajax({
	url: callbackUrl,
	dataType: 'json',
	data: {
		"hangoutUrl": hangoutUrl,
		"topic": param["gd"]

	}
	
}).done( function ( data, status, xhr){
	//call was made, process result
	$('#msg').html(data.msg);
}).fail( function (xhr, status, error){
	$('#msg').html("There was a problem with the connection.Please try again. ("+textStatus+")" );
	});

};


var currentLocation = document.URL;
alert(hangoutUrl);









