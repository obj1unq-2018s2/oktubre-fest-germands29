class Carpa{
	var property marcaDeCarpa
	var property limiteDeGente 
	var property tieneBandaTradicional
	var property cantidadActualDeGente
	method venderJarra(){}
	
	
	method personaPuedeIngresar(persona){
		return ((self.cantidadActualDeGente() + 1) <= self.limiteDeGente()) and not persona.estaEbrio()
	}
	
	method ingresarACarpa(persona){
		if (persona.puedoEntrarACarpa(self)){
			cantidadActualDeGente = cantidadActualDeGente + 1
		}
	}
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
	
	method meGustaCerveza(marca){
		return true
	}
	
	method quieroEntrarACarpa(carpa){
		return (self.leGustaLaMusicaTradicional() == carpa.tieneBandaTradicional()) and 
				self.meGustaCerveza(carpa.marcaDeCarpa())
	}
	
	method puedoEntrarACarpa(carpa){
		return carpa.personaPuedeIngresar(self) and self.quieroEntrarACarpa(carpa)
	}

}


class Belga inherits Persona {
	
	override method meGustaCerveza(marca){
		return marca.cantidadDeLupulo() > 4
		
	}
}

class Checos inherits Persona {
	override method meGustaCerveza(marca){
		return 	marca.graduacion() > 8
		
	}
}

class Aleman inherits Persona {
	
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
