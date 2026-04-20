import objetos.* 
import feroz.*

object abuelita{ 
    
    method peso(){
        return 50
    }    
} 

object cazador {
    var pesoCazador = 95 

    method peso() { 
        return pesoCazador + escopeta.peso() 
    } 

    method intentarDisparar() {
        if (escopeta.usar()) {
            feroz.sufrirCrisis()
        } 
    }
} 