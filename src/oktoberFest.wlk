class Carpas{
	var property limiteDeGente 
	var property tieneBanda 
	method venderJarra(){}
}




class Jarra{
	
	var property capacidadDeJarra
	var property marca	
}




class Persona{
	var property peso 
	var property cantidadDeJarrasCompradas
	var property leGustaLaMusicaTradicional
	var property aguante
	
	
	method estaEbrio(){
		return  self.aguante() > self.peso() * self.alcoholIngerido()  
	}
	
	method alcoholIngerido(){
		return 0 // para hacer
	}
}



class MarcasRubias{
	var property cantidadDeLupulo   // gramos de lupulo por litro
	var property paisFabricador 
	var property graduacion

	method alcoholPorLitro(){
		self.graduacion() 
	}	
}



class MarcasNegras{
	var property cantidadDeLupulo   // gramos de lupulo por litro
	var property paisFabricador 
	
	method graduacion(){
		return cantidadDeLupulo*2 
	}	
}


class MarcasRojas inherits MarcasNegras{
	
	
}

object graduacionReglamentaria{
	var property graduacionMundial
}

//hacer un object valoresGlobales con una variable 