import clientes.*
import comercializadora.*

class Abertura{
	const cmc = 8500 						//costo por metro cuadrado
	var property competitiva = false
	var property accesorio
	var property valorMinimo = 7500
	var property porcentajeGanancia 

	method precioCosto()= return self.proporcionalSuperficie() + accesorio.valor()
	
	method proporcionalSuperficie()= return self.superficie() * cmc
	
	method superficie()
	
	method sePuedeEnviar()= return self.superficie() <= 12
	
	method costoEnvio(){
		if(self.sePuedeEnviar()){
			return valorMinimo + self.calculoParaCadaAbertura()
		}else{
			return throw new Exception(message= "No se puede enviar este articulo")
		}
	}
	
	method calculoParaCadaAbertura(){
		return (cmc / 4) * self.mm()
	}
	
	method mm()
	
	method precioVenta()= return self.precioCosto() + self.ganancia()
	
	method ganancia(){
		if(competitiva){
			return self.precioCosto() * (porcentajeGanancia / 2)
		}else{
			return self.precioCosto() * porcentajeGanancia
		}
	}
	
	method RPVS()= return self.precioVenta() / self.superficie()
}

class VentanaRectangular inherits Abertura(accesorio= herrajes, porcentajeGanancia= 0.25){
	var property alto
	var property ancho
	
	override method superficie()= return alto * ancho
	
	override method mm()= return [alto, ancho].max()
}

class VentanaRedonda inherits VentanaRectangular(accesorio= herrajes, competitiva= true){
	var property radio
	var property diametro = 2 * radio
	
	override method superficie()= return 3.14 * radio**2
	
	override method mm()= return diametro
}

class Puerta inherits VentanaRectangular(accesorio= cerradura, porcentajeGanancia= 0.30){}

class Porton inherits Puerta(accesorio= accesorioPorton){}


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
//------------------------
