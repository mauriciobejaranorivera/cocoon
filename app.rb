require 'sinatra'
require './lib/ahorcado.rb'

configure do
	@palabra = "COCOON"
	@intento = 6
	@@ahorcado = Ahorcado.new(@palabra.length, @palabra, @intento)
end

get '/' do
	@intento = 6
	@@ahorcado.reiniciar_intentos(@intento)
	@@ahorcado.reiniciar_posiciones()
	@@ahorcado.reiniciar_letras_utilizadas()
	erb :inicio    
end

post '/' do
    @@ahorcado.descontar_intentos()
	@intento = @@ahorcado.intentos_restantes()
	@letras = @@ahorcado.letras_utilizadas()
	
	if (@intento < 1)
		erb:juego_terminado
	else
		erb :inicio
	end    
end

get '/juego_terminado' do
    erb:juego_terminado
end

get '/juego_ganado' do
    erb:juego_ganado
end

post '/comparar_letra' do
	@letra = params[:letra]
	@@ahorcado.anadir_letra(@letra.upcase)
    @@ahorcado.descontar_intentos()
	@intento = @@ahorcado.intentos_restantes()
	@letras = @@ahorcado.letras_utilizadas()
	@@ahorcado.actualizar_palabra(@letra)
	@gano = @@ahorcado.gano()
	@lineas = 	""

	if (@intento < 1)
		erb :juego_terminado
	elsif (@gano == 1)
		erb :juego_ganado
	else
		erb :inicio
	end  

end
