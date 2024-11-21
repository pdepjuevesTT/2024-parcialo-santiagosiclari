import metodosPago.*
class Persona{
    var property dineroEfectivo = 0
    var property dineroDebito = 0
    var property dineroCredito = 0
    var property metodoPreferido = efectivo
    var property salario = 100
    var property cantCompras = 0
    var property metodos = []
    var property deudas = []

    method pagarDeuda(){}

    method administrarPagos(){

    }

    method comprar(costo){
        if(metodoPreferido.puedoPagar(self,costo)){
            metodoPreferido.descontar(self, costo)
        }
    }

    method modificarEfectivo(cantidad){self.dineroEfectivo(self.dineroEfectivo() - cantidad)}

    method modificarDebito(cantidad){self.dineroDebito(self.dineroEfectivo() - cantidad)}

    method cobrarSalario(sobrante){dineroEfectivo += sobrante} //Sueldo

    method cambiarSalario(cantidad){ //Cambiar salario
        if(cantidad > salario){
            salario = cantidad
        }
    }

    method pagoParcial(){
    }

}

object meses{
    var property mes = 0
    const property personas = []

    method pasaMes(){mes += 1}

    method transcurre(){
        self.pasaMes()
        personas.forEach({persona => persona.administrarPagos()})
    }
}