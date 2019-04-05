import pepita.*
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


object canelones{ //OK CANELONES
	var salsa=false;
	var queso=false;
	
	method ponerSalsa(){salsa=true}
	method sacarSalsa(){salsa=false}
	method ponerQueso(){queso=true}
	method sacarQueso(){queso=false}
	
	//metodos que tambien sirven para el get
//	method sinNada(){
//		salsa=false
//		queso=false
//	}
//	
//	method conSalsa(){
//		salsa =true
//		queso =false
//
//	}
//    
//   method conQueso(){
//   	    queso = true
//   	    salsa = false
//   } 
//   
//   method completo(){
//   	    queso = true
//   	    salsa = true
//   }
	
	
	
	method energiaPorGramo(){
		var valor=20; // esta variable se coloca dentro de este metodo que es que la utiliza 
						//para que se use solo cuando se ejecuta, si se coloca arriba bajo el objeto 
						//la variable se incrementará con cada ejecucion del metodo energiaPorGramo
		
		
		if (salsa){valor = valor + 5}
		if (queso){valor = valor + 7}
		return valor
		
	}
	
}
