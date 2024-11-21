class Persona{
    var property dineroEfectivo = 0
    var property dineroDebito = 0
    var property dineroCredito = 0
    var property metodoPreferido = efectivo
    var property salario = 100
    var property cantCompras = 0

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

}

class MetodoPago{
    method puedoPagar(persona, costo)

    method descontar(persona, costo)
}

object efectivo{
    method puedoPagar(persona, costo) = persona.dineroEfectivo() >= costo

    method descontar(persona, costo){persona.modificarEfectivo(costo)}
}

object debito{
    method puedoPagar(persona, costo) = persona.dineroDebito() >= costo

    method descontar(persona, costo){persona.modificarDebito(costo)}
}

object credito{
    const property cantCuota = []
    var property cuotas = 10
    var property costoCuota = 0
    var property numeroMes = 0

    method cantidadPorCuota(costo){costoCuota = costo * banco.interes() / cuotas}

    method agregar(costo){cuotas.times{cantCuota.add(self.cantidadPorCuota(costo))}}

    method puedoPagar(persona, costo){
        banco.montoMaximo() > costo
    }
}

object banco{
    var property montoMaximo = 5000
    var property interes = 2/100

    method descontar(persona, costo){}
}

object meses{
    var property mes = 0
    method pasoMes(persona){
        mes+=1
        if(persona.deudas() == 0){
            //persona.cobrarSalario(sobrante)
        }
    }
}