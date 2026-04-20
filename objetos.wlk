object canasta {
    var cantidadDeManzanas = 6  


    method peso() = cantidadDeManzanas * 0.2
    

    method perderManzanas(cantidad) {
        cantidadDeManzanas = (cantidadDeManzanas - cantidad).max(0)
    }
} 


object escopeta{ 
    var cantidadDeBalas = 9 

    method peso() = 5

    method estaCargada() = cantidadDeBalas > 0 

    method usar() {
        if (self.estaCargada()) { 
            cantidadDeBalas = cantidadDeBalas - 1 
            return true
        } else {
            return false
        }

    } 
}