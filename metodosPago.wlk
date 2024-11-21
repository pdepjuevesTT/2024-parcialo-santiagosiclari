import persona.*
object efectivo{
    method puedoPagar(persona, costo) = persona.dineroEfectivo() >= costo

    method descontar(persona, costo){persona.modificarEfectivo(costo)}
}

class Debito{
    method monto(persona) = persona.dineroDebito()

    method puedoPagar(persona, costo) = persona.dineroDebito() >= costo

    method descontar(persona, costo){persona.modificarDebito(costo)}
}

class Credito{
    const property cantCuota = []
    var property cuotas = 10
    var property costoCuota = 0
    var property numeroMes = 0

    method cantidadPorCuota(costo){costoCuota = costo * banco.interes() / cuotas}

    method agregar(costo){cuotas.times{cantCuota.add(self.cantidadPorCuota(costo))}}

    method puedoPagar(persona, costo) =
        banco.montoMaximo() > costo
}

object banco{
    var property montoMaximo = 5000
    var property interes = 2/100

    method descontar(persona, costo){}
}
