function mostrarOcultar(id_numero){
		
	    var contenido = document.getElementById("contenido_"+id_numero);
    	var boton = document.getElementById("enlace_"+id_numero);

	    switch(contenido.style.height){
	        case "":
	            contenido.style.height="100%";
	            boton.innerHTML = "-";
	            break;

	        case "100%":
	            contenido.style.height="0px";
	            boton.innerHTML = "+";
	            break;

	        case "0px":
	            contenido.style.height="100%";
	            boton.innerHTML = "-";
	            break;
	    }   
	}