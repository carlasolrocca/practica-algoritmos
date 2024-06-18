import aberturas.*
import clientes.*

class Comercializadora{
	var property clientes= []
	
	method agregarCliente(cliente)= clientes.add(cliente)
	
	method removerCliente(cliente)= clientes.remove(cliente)

	method clientesPotenciales(){
		clientes.filter({ cliente => cliente.cantidadAberturas() > 1 })
	}
	
	method ordenados(){
		self.clientesPotenciales().sortedBy({ cliente1, cliente2 => cliente1.cantidadAberturas() > cliente2.cantidadAberturas() })
	}
}
