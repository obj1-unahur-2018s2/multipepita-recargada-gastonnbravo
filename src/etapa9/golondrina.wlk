import comidas.*
class Golondrina{

/*
 * p.ej. pepita.comer(alpiste, 300) o pepita.comer(alcaucil, 50) 
 */
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { return self.energia() < 50 }  
	method estaFeliz() { return self.energia().between(500, 1000) }
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} else if (self.estaFeliz()) {
			self.volar(8)
		} 
	}
}

object prueba{
	var juliana = new Golondrina()
	var enriqueta = new Golondrina()
	var melina = new Golondrina()
	var tatiana = new Golondrina()
	
	method comerJuliana(cosa,gramos){return juliana.comer()}
	method energiaJuliana(cosa,gramos){return juliana.energia()}
	method estaFelizJuliana(){return juliana.estaFeliz()}
	method estaDebilJuliana(){return juliana.estaDebil()}
	
	method comerEnriqueta(cosa,gramos){return enriqueta.comer()}
	method energiaEnriqueta(cosa,gramos){return enriqueta.energia()}
	method estaFelizEnriqueta(){return enriqueta.estaFeliz()}
	method estaDebilEnriqueta(){return enriqueta.estaDebil()}
	
	method comerMelina(cosa,gramos){return melina.comer()}
	method energiaMelina(cosa,gramos){return melina.energia()}
	method estaFelizMelina(){return melina.estaFeliz()}
	method estaDebilMelina(){return melina.estaDebil()}
	
	method comerTatiana(cosa,gramos){return tatiana.comer()}
	method energiaTatiana(cosa,gramos){return tatiana.energia()}
	method estaFelizTatiana(){return tatiana.estaFeliz()}
	method estaDebilTatiana(){return tatiana.estaDebil()}
	
	}
	
	

