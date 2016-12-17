require 'ahorcado'
describe Ahorcado do
	it "Al crearse las etras deberia estar vacio" do
		ahorcado = Ahorcado.new(6, "COCOOM", 6)
		letras=	ahorcado.letras_utilizadas()
		letras.length.should==0
	end
	it "Los intentos deben disminuir en 1 en cada falla" do
		ahorcado = Ahorcado.new(6, "COCOOM", 6)
		ahorcado.descontar_intentos()
		intentos_restantes = ahorcado.intentos_restantes()
		intentos_restantes.should==5
	end
	it "Despues del primer intento las letras utiliazdas deben ser distinto de 0" do
		ahorcado = Ahorcado.new(6, "COCOOM", 6)
		ahorcado.descontar_intentos()
		ahorcado.anadir_letra("C")
		letras=	ahorcado.letras_utilizadas()
		letras.length.should>0
	end
	it "Al volver a jugar los intentos de reinicia" do
		ahorcado = Ahorcado.new(6, "COCOOM", 6)
		ahorcado.descontar_intentos()
		ahorcado.anadir_letra("C")
		ahorcado.reiniciar_intentos(6).should==6
	end
end
		
