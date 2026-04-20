import caperucita.* 
import personajes.*
import objetos.*


object feroz {
    const pesoInicial = 10 
    var peso = pesoInicial 
    var estaDisfrazadoDeAbuela = false
	
	
	method estaSaludable() {
		return peso.between(20, 150)
	} 

    method modificarPeso(cantidad) {
		peso = (peso + cantidad).max(0)
	}

    method sufrirCrisis() {
        peso = pesoInicial
    }

	method comer(comida) {
		self.modificarPeso (comida.peso() /10) 
	} 

    method correr() {
        self.modificarPeso(-1)
    }

    method conversarCon(personaje) {

    } 

    method disfrazarseDeAbuela() {
        estaDisfrazadoDeAbuela = true
    }

    method estaDisfrazado() = estaDisfrazadoDeAbuela
  
} 

object historia{

    method ejecutar(){
        feroz.correr() // pierde 1 unidad de peso, queda en 9
        feroz.conversarCon(caperucita) 

        feroz.correr() // pierde 1 unidad de peso, queda en 8
        feroz.comer(abuelita) // gana 5, queda en 13
        feroz.disfrazarseDeAbuela() 

        caperucita.cruzarBosque() // caperucita queda en 61.0 de peso

        feroz.comer(caperucita) // gana 6.10 de peso 
        //el lobo queda en 19.1 de peso. No saludable.
    } 

    method cazadorGana() {
        self.ejecutar() 
        cazador.intentarDisparar() // vuelve a 10 de peso el lobo y entra en crisis
    } 

    method ferozGana() {
        self.ejecutar() 
        feroz.comer(cazador) 
        // gana 10 de peso por comer al cazador y en total se quedaría con 29.1 de peso. Saludable.
    }
}