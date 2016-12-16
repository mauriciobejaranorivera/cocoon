class Ahorcado
	def initialize(tamano,cadena)
		@tamano = tamano
		@intentos=6
		@cadena=cadena
	end
	def descontar_intentos()
	@intentos = @intentos-1
		
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
