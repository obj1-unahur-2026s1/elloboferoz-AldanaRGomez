import objetos.*

object caperucita{
    var pesoCaperucita = 60  

    method peso(){
        return pesoCaperucita + canasta.peso()
    } 

    method cruzarBosque() {
        canasta.perderManzanas(1)
    }
} 
