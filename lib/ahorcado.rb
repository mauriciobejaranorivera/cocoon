class Ahorcado
	def initialize(tamano, cadena, intentos)
		@tamano = tamano
		@cadena = cadena
		@intentos = intentos
		@letras = ""
		@pos1 = 0
		@pos2 = 0
		@pos3 = 0
		@pos4 = 0
		@pos5 = 0
		@pos6 = 0	
	end

	def descontar_intentos()
		@intentos = @intentos - 1		
	end

	def reiniciar_intentos(intentos)
		@intentos = intentos		
	end

	def reiniciar_posiciones()
		@pos1 = 0
		@pos2 = 0
		@pos3 = 0
		@pos4 = 0
		@pos5 = 0
		@pos6 = 0
	end

	def reiniciar_letras_utilizadas()
		@letras = ""		
	end

	def dibujar_lineas()
		cadena = ""

		if(@pos1 == 0)
			cadena = "_ "
		else
			cadena = "C "	
		end
		
		if(@pos2 == 0)
			cadena = cadena + "_ "
		else
			cadena = cadena + "O "	
		end

		if(@pos3 == 0)
			cadena = cadena + "_ "
		else
			cadena = cadena + "C "	
		end

		if(@pos4 == 0)
			cadena = cadena + "_ "
		else
			cadena = cadena + "O "	
		end

		if(@pos5 == 0)
			cadena = cadena + "_ "
		else
			cadena = cadena + "O "	
		end

		if(@pos6 == 0)
			cadena = cadena + "_ "
		else
			cadena = cadena + "N "	
		end

		return cadena
    end

	def palabra_contiene(letra)
		cadena = ""

		for i in 1..@tamano do
			cadena = cadena + "_ "
        end

		return cadena
    end

	def intentos_restantes()
		return @intentos
	end


	def actualizar_palabra(letra)

		if letra == "C"
			@pos1 = 1
			@pos3 = 1
		end

		if letra == "O"	
			@pos2 = 1
			@pos4 = 1
			@pos5 = 1
		end

		if letra == "N"
			@pos6 = 1
		end
		
	end

	def letras_utilizadas()
		@letras		
	end

	def anadir_letra(letra)

		if(@letras.length == 0)
		  @letras = letra
		else
		 @letras = @letras + ", " + letra
		end	  		

	end
end
