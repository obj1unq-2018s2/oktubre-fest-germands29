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
	var property jarrasCompradas //lista de Jarra
	var property leGustaLaMusicaTradicional
	var property aguante
	
	
	method estaEbrio(){
		return  self.aguante() < (self.peso() * self.alcoholIngerido())  
	}
	
	method alcoholIngerido(){
		var marcasDeJarras = []
		jarrasCompradas.forEach{jarra => marcasDeJarras.add(jarra.marca())}
		return marcasDeJarras.sum{marca => marca.alcoholPorLitro()}
	}
	
	method quieroEntrarACarpa(){
		
	}
}


class Belga inherits Persona {
	
	method gustoDeCerveza(){
		return cantidadDeLupulo() > 4
		
	}
}

class Checos inherits Persona {
	method gustoDeCerveza(){
		return 	graduacion() > 8
		
	}
}


class Alemanes inherits Persona{
	method gustoDeCerveza(){}	
}





class MarcasRubias {
	var property cantidadDeLupulo   // gramos de lupulo por litro
	var property paisFabricador 
	var property graduacion   //porcentaje de alcohol

	method alcoholPorLitro(){
		return self.graduacion() / 100
	}	
}



class MarcasNegras {
	var property cantidadDeLupulo   // gramos de lupulo por litro
	var property paisFabricador 
	
	method graduacion(){
		return (cantidadDeLupulo*2).min(graduacionReglamentaria.graduacionMundial()) 
	}	
	
	method alcoholPorLitro(){
		return self.graduacion() / 100
	}
}


class MarcasRojas inherits MarcasNegras{
	
	override method  graduacion(){
		return super() * 1.5
	}
}

object graduacionReglamentaria{
	var property graduacionMundial
		
}
