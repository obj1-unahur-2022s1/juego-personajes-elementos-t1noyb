object luisa {
	
}


object floki {
	var arma
	
	method agarrarArma(armaNueva){
		arma = armaNueva
	}
	
	method encontrar(elemento){
		if(arma.estaCargada()){
			arma.usar(elemento)
		}
	}
	
}


object mario {
	var valorRecolectado = 0
	
	method encontrar(elemento){
		valorRecolectado = valorRecolectado + elemento.valor()
		elemento.recibirTrabajo()
		return self.esFeliz(elemento)
		}
		
	method esFeliz(elemento){
		return valorRecolectado >= 50 or elemento.altura() >= 10
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
	const altura = 20
	var defensa = 150
	
	method recibirAtaque(potenciaDeAtaque){
		defensa = defensa - potenciaDeAtaque
	}
	
	method valor(){
		return defensa / 5
	}
	
	method recibirTrabajo(){
		defensa = (defensa+20).min(200)
	}
	
	method altura(){
		return altura
	}
}

object aurora{
	const altura = 1
	var estaViva = true
	
	method recibirAtaque(potenciaDeAtaque){
		if(potenciaDeAtaque >= 10){
			estaViva = false
		}
	}
	
	method valor(){
		return 15
	}
	
	method recibirTrabajo(){}
	
	method altura(){
		return altura
	}
}

object tipa{
	var altura = 8
	
	method recibirAtaque(potenciaDeAtaque){}
	
	method valor(){
		return altura * 2
	}
	
	method recibirTrabajo(){
		altura = altura + 1
	}
	
	method altura(){
		return altura
	}
}

