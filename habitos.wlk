import persona.*
import metodosPago.*

class CompradoresCompulsivo inherits Persona{
    override method comprar(costo){
        metodos.any{metodo => metodo.puedePagar(self, costo)}
    }
}

class PagadoresCompulsivo inherits Persona{

}