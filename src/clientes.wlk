import aberturas.*
import comercializadora.*

class Cliente{
	var property aberturasDeInteres = []
	var property tipo = normal //x default supongo (?)
	
	method cambiaTipo(){
		if(aberturasDeInteres.size() > 3){
			tipo= prioritario
		}
	}
	
	method seInteresoEn(abertura){
		aberturasDeInteres.add(abertura)
		self.cambiaTipo()
	}
	
	method cantidadAberturas()= return aberturasDeInteres.size()
	
	method potencialidadVenta()= return aberturasDeInteres.sum({abertura => abertura.precioVenta()})
}

class TipoCliente{}

const normal = new TipoCliente()
const prioritario = new TipoCliente()
