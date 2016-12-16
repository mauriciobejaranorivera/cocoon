class Ahorcado
	def initialize(tamano)
		@tamano = tamano
	end
	def dibujar_lineas()
		cadena = ""

		for i in 1..@tamano do
			cadena = cadena + "_ "
        end

		return cadena
    end
end
