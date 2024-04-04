object espadaDelDestino{
	
}
object libroDeHechizos{
	
}
object collarDivino{
	
}

object armadura{
	
}
object rolando{
	var capacidad = 2
	const property artefactos = #{}
	var hogar = castilloDePiedra
	const property historiaDeArtefactos = []
	
	method agarrar(artefacto){
		if (self.puedeAgregar()){
			artefactos.add(artefacto)
		}
		historiaDeArtefactos.add(artefacto)
	}
	method puedeAgregar(){
		return artefactos.size() < capacidad
	}
	method irAlHogar(){
		self.guardarArtefactosEnElHogar()
		self.liberarEspacio()
	}
	method guardarArtefactosEnElHogar(){
		hogar.guardarTodosLosArtefactos(artefactos)
	}
	method liberarEspacio(){
		artefactos.clear()
	}
	method posee(artefacto){
		return self.todosLasPosesiones().contains(artefacto)
	}
	method todosLasPosesiones(){
		return artefactos.union(hogar.baul())
	}
}

object castilloDePiedra{
	const property baul = #{}
	
	method guardarTodosLosArtefactos(artefactos){
		baul.addAll(artefactos)
	}

}