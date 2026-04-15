import objetos.*
import personas.*
object bolichito {
    var objetoEnVidriera = pelota
    var objetoEnMostrador = biblioteca
   method objetoEnVidriera (){
        return objetoEnVidriera
   } 
   method objetoEnMostrador (){
        return objetoEnMostrador
   }

   method cambiarObjetoEnVidriera(nuevoObjeto) {
        objetoEnVidriera = nuevoObjeto
        return objetoEnVidriera     
   } 
   method cambiarObjetoEnMostrador(nuevoObjeto){
        objetoEnMostrador = nuevoObjeto
        return objetoEnMostrador
   }
  method sonBrillantes(){
    return objetoEnMostrador.material().esBrillante() && objetoEnVidriera.material().esBrillante()
  } 
  method esMonocromatico(){
    return objetoEnVidriera.color() == objetoEnMostrador.color()
  }
  method esEquilibrado(){
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
  }
  
  method ofrecer(aPersona){
        return aPersona.leGusta(objetoEnMostrador) || aPersona.leGusta(objetoEnVidriera)
  }

  method elObjetoEsColor(unObjeto, unColor){
     return unObjeto.color()== unColor
  }

method tieneAlgoDeColor(unColor){
        return self.elObjetoEsColor (self.objetoEnMostrador(), unColor) ||  self.elObjetoEsColor (self.objetoEnVidriera(), unColor) && self.esMonocromatico() || not self.esEquilibrado()
  }

}