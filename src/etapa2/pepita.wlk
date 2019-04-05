import comidas.*

/*
 * p.ej. pepita.comer(alpiste, 300) o pepita.comer(alcaucil, 50) 
 */
object pepita {

	var energia = 0

	method energia() {
		return energia
	}

	method comer(cosa, gramos) {
		energia += cosa.energiaPorGramo() * gramos
	}

	method volar(kms) {
		energia -= kms + 10
	}

	// metodos nuevos
	method estaDebil() {
		return energia < 50
	}

	// implementar OK
	method estaFeliz() {
		return energia.between(500, 1000)
	} // OK - implementar

	method cuantoQuiereVolar() {
		var cuanto = energia / 5
		if (energia.between(300, 400)) {
			cuanto += 10
		} // si la energia esta entre 300 y 400 entonces suma 10 / between(entre)
		if (energia % 20 == 0) {
			cuanto += 15
		} // si la energia es multiplo de 20 entonces entonces suma 15km (% da como resultado el resto de la division, si es cero es multiplo de 20)
		return cuanto
	}

	method salirAComer() {
		self.volar(5) // "self" es una referencia al objeto que recibe el mensaje
		self.comer(alpiste, 80) // uso el self para referirme a pepita y decirle que haga algo que ya defini como metodo.
		self.volar(5) // ... completar este metodo con las otra acciones sobre self
	}

	method haceLoQueQuieras() { //OK COMPLETO completar el método, de acuerdo a la estructura // que se deja comentada aca abajo
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} else if (self.estaFeliz()) {
			self.volar(8)
		}
	}

}

