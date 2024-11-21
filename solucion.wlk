//HACER DOS TEST UNO COMPRA EN CUOTAS Y OTRO COBRO SUELDO CON CUOTAS
/* class Dinero{
    var property dineroEfectivo = 0
    var property dineroDebito = 0
    var property dineroCredito = 0
} */
class Persona{
    var property dineroEfectivo = 0
    var property dineroDebito = 0
    var property dineroCredito = 0

    var property preferida // = new MetodoPago()
    var property metodos = []
    var property compras = []
    var property salario = 100

    method cantCompras() = compras.size() //Pto 6

    method cambiarPreferido(nuevoPreferido){ //Pto 2
        if(metodos.contains(nuevoPreferido)){
            preferida = nuevoPreferido
        }
    }

    method agregar(cosa){compras.add(cosa)} //Post compra

    //method cobrarSalario(){dinero += salario} //Sueldo

/*     method cambiarSalario(cantidad){ //Cambiar salario
        if(cantidad > salario){
            dinero += cantidad
        }
    } */

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

    method gastar(persona, cantidad){persona.dinero(persona.dinero() - cantidad)}
}

class Efectivo inherits MetodoPago{
    var property cantidad = 0

    method cantidad(persona) = persona.dinero()

    method realizarCompra(algo){}
}

class Debito inherits MetodoPago{

}

class Credito inherits MetodoPago{
    var property cuotas = 6

    method realizarCompra(algo){

    }

}

object bancoCentral{
    var property tasa = 2
}

//500 + 2% para el interes -> si son 6 cuotas => (500 + 2%) / 6 = valorCuota