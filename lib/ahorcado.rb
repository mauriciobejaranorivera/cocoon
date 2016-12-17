class Ahorcado
	def initialize(tamano, cadena, intentos)
		@tamano = tamano
		@cadena = cadena
		@intentos = intentos
	end

	def descontar_intentos()
		@intentos = @intentos - 1		
	end

	def reiniciar_intentos(intentos)
		@intentos = intentos		
	end

	def dibujar_lineas()
		cadena = ""

		for i in 1..@tamano do
			cadena = cadena + "_ "
        end

		return cadena
    end

	def intentos_restantes()
		return @intentos
	end
end
