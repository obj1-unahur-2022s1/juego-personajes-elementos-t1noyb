object luisa {
	
}


object floki {
	var arma
	
	method encontrar(elemento){
		if(arma.estaCargada()){
			arma.usar(elemento)
		}
	}
	
}


object mario {
	var arma
	var valorRecolectado = 10
	
	method encontrar(elemento){
		
	}
}

object ballesta{
	var flechas = 10
	const potenciaDeAtaque = 4
	
	method usar(elemento){
		flechas = flechas - 1
		elemento.recibirAtaque(potenciaDeAtaque)
	}
	
	method estaCargada(){
		return flechas > 0
	}
}

object jabalina{
	const potenciaDeAtaque = 30
	var sePuedeUsar = true
	
	method usar(elemento){
		elemento.recibirAtaque(potenciaDeAtaque)
		sePuedeUsar = false
	}
	
	method estaCargada(){
		return sePuedeUsar
	}
}

object castillo{
	var altura = 20
	var defensa = 150
	
	method recibirAtaque(potenciaDeAtaque){
		defensa = defensa - potenciaDeAtaque
	}
}

object aurora{
	var altura = 1
	var estaViva = true
	
	method recibirAtaque(potenciaDeAtaque){
		if(potenciaDeAtaque >= 10){
			estaViva = false
		}
	}
}

object tipa{
	var altura = 8
	
	method recibirAtaque(potenciaDeAtaque){}
}
