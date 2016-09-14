var URLActual
var b
var refreshId

URLActual = window.location;
b = URLActual.toString();

if(b.search('t_contajes')>0) 
{ 
	$('#contajes').ready(
		
		function(){
			refreshId = setInterval(loadContajes, 3000);
			$.ajaxSetup({ cache: false 	});		
	});
}
else
{
	window.clearInterval(refreshId);
}

function loadContajes() { 
	
	URLActual = window.location;
	b = URLActual.toString();

	if(b.search('t_contajes')>0) 
	{
		console.log("Hola sandra");	      
  		$('#contajes').load('/t_contajes #contajes');
	}
	else
	{
		//Se para la repetición del intervalo
		window.clearInterval(refreshId);
	}
}
