// Colores

object rojo {
  method esFuerte() = true
}

object verde {
  method esFuerte() = true
}

object celeste {
  method esFuerte() = false
}

object pardo {
  method esFuerte() = false
}

object naranja {
  method esFuerte() = true
}

// Materiales

object cobre {
  method esBrillante() = true
}

object vidrio {
  method esBrillante() = true
}

object lino {
  method esBrillante() = false
}

object madera {
  method esBrillante() = false
}

object cuero {
  method esBrillante() = false
}

// Objetos

object remera {
  method peso() = 800
  method color() = rojo
  method material() = lino
}

object pelota {
  method peso() = 1300
  method color() = pardo
  method material() = cuero
}

object biblioteca {
  method peso() = 8000
  method color() = verde
  method material() = madera
}

object muñeco {
  var peso = 100
  method peso() = peso
  method nuevoPeso(nuevoValor) {
    peso=nuevoValor
  }

  method color() = celeste
  method material() = vidrio
}

object placa {
  var peso = 100
  method peso() = peso
  method nuevoPeso(unValor) {
    peso=unValor
  }

  var color = rojo
  method color() = color
  method nuevoColor(unColor) {
    color=unColor
  }
  method material() = cobre
}

object arito {
  method peso() = 180
  method color() = celeste
  method material() = cobre
}

object banquito {
  var color = naranja
  method color() = color
  method nuevoColor(unColor) {
    color=unColor
  }
  method peso() = 1700
  method material() = madera
}

object cajita {
  var objeto = remera
  method objeto() = objeto
  method nuevoObjeto(unObjeto) {
    objeto = unObjeto
  }

  method peso() = 400 + objeto.peso()
  method color() = rojo
  method material() = cobre
}