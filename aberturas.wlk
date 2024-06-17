/** completar las clases y objetos */

class Comercializadora{
	var property clientes= []
}

class Abertura{
	var property cmc = 8500 	//costo por metro cuadrado
	var property competitiva = false
	var property accesorio

	method precioCosto()= return self.proporcionalSuperficie() + accesorio.valor()
	
	method proporcionalSuperficie()= return self.superficie() * cmc
	
	method superficie()
}

class VentanaRectangular inherits Abertura(accesorio= herrajes){
	var property alto
	var property ancho
	
	override method superficie()= return alto * ancho
}

class VentanaRedonda inherits VentanaRectangular(accesorio= herrajes, competitiva= true){
	var property radio
	
	override method superficie()= return 3.14 * radio**2
}

class Puerta inherits Abertura(accesorio= cerradura){}

class Porton inherits Abertura(accesorio= accesorioPorton){}


//-----------------------
object herrajes{
	var property valor= 2500
}

object cerradura{
	var property valor= 6850
}

object accesorioPorton{
	var property valor= 25650
}

















