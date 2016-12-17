require 'ahorcado'
describe Ahorcado do
	it "Al gnar el juego deberia mostrar la palabra secreta cocoon" do
		ahorcado = Ahorcado.new(6,"cocoon",6)
		palabra_secreta = ahorcado.get_palabra_secreta()
		palabra_secreta.should =="cocoon"
	end
end
