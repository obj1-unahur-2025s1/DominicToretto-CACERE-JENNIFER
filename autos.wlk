object dominic{
    const autos = []

 method comprar(unAuto){autos.add(unAuto)}
 method autosNoEstanEnCondiciones()= autos.filter({a => not a.enCondiciones()})
 method autosEnCondiciones()= autos.filter({a => a.enCondiciones()})
 method mandarAutosAlTaller(){taller.recibirAutos(self.autosNoEstanEnCondiciones())}
 method realizarPruebaDeVelocidad(){autos.forEach({a => a.hacerPrueba()})}
 method venderAutos(){autos.clear()}
 method promedioVelocidad()= autos.sum({a => a.velocidadMaxima()}) / autos.size()
 method masRapido()= self.autosEnCondiciones() .max({a => a.velocidadMaxima()})
 method hayUnAutoMuyRapido() = self.masRapido().velocidadMaxima()> 2* self.promedioVelocidad()

}
object taller{
 const autosAReparar=[]
 method recibirAutos(listaDeAutos){autosAReparar.addAll(listaDeAutos)}
 method repararAutos(){
     autosAReparar.forEach({a => a.reparar()})
     autosAReparar.clear()
    }
}
object ferrari {
 var motor = 87
 method enCondicones()= motor >= 65
 method reparar(){motor = 100}
 method velocidadMaxima()= 110 +  if (motor >75) 15 else 0
 method hacerPrueba(){motor = (motor - 30).max(0)}
}
object flecha{
 var cantidadLitrosCombustible = 100
 var color = azul
 var property combustible = gasolina
 method enCondiciones() =
 cantidadLitrosCombustible > combustible.nivelMinimo() && color == rojo
 method hacerPueba(){
    cantidadLitrosCombustible =(cantidadLitrosCombustible -5).max(0)}
 method reparar(){
    cantidadLitrosCombustible = cantidadLitrosCombustible * 2
    color = color.cambiarColor()
 }   
 method velocidadMaxima(){
    return cantidadLitrosCombustible *2 + combustible.calculoAdicional(cantidadLitrosCombustible)
 }
}
object gasolina{
    method nivelMinimo()= 85
    method calculoAdicional(litros) = -1*((litros *2) *0.10)
}
object nafta{
     method nivelMinimo()= 50
}
object nitrogeno{
     method nivelMinimo()= 0
     method calculoAdicional(litros) = (litros *2 *10)
}
object azul{ method cambiarDeColo()= verde}
object rojo{method cambiarDeColor()= azul}
object verde{method cambiarDeColor()= rojo}

object elIntocable{
}
