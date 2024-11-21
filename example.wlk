class Persona{
    var property preferida // = new MetodoPago()
    var property metodos = []
    var property dinero = 0
    var property compras = []

    method cantCompras() = compras.size()

    

    method cambiarPreferido(nuevoPreferido){
        if(metodos.contains(nuevoPreferido)){
            preferida = nuevoPreferido
        }
    }

    method agregar(cosa){compras.add(cosa)}

    method compra(algo){
        if(preferida.puedeComprar(algo)){

        } else{
            throw "No puede comprar"
        }
    }
}

class Cosa{
    var property costo = 0

    method puedeSerComprada(dinero) = costo <= dinero
}

class MetodoPago{
    method realizarCompra(algo)

    method puedeComprar(algo)
}

class Efectivo inherits MetodoPago{
    method realizarCompra(algo){}
}

class Debito inherits MetodoPago{

}

class Credito inherits MetodoPago{

}