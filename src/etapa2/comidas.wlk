
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil { 
	method energiaPorGramo(){
		return 20
	} // OK - //completar
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo(){
		return 9
	}
	// OK  - //completar
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 } // OK
}

// despues, agregar mijo - OK y canelones - 

object mijo{  // OK
	var estadoMijo=1;
	
	method estado(){return estadoMijo}
	method mojarse(){estadoMijo=1}
	method secarse(){estadoMijo=0}
	
	method energiaPorGramo() {
		if (estadoMijo==0){ return 20}
		else{ return 15}
	}
}

object canelones{ // chequear este objeto y sus métodos no esta correcto
	var salsa=1;
	var queso=1;
	
	method ponerSalsa(){salsa=1}
	method sacarSalsa(){salsa=0}
	method ponerQueso(){queso=1}
	method sacarQueso(){queso=0}
	
	method energiaPorGramo(){
		if (salsa==1){return 5}
		else if (queso==1){return 7}
		else {return 20}
	}
}
