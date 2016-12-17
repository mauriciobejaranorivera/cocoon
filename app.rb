require 'sinatra'
require './lib/ahorcado.rb'

configure do
	@palabra = "cocoon"
	@intento = 6
	@@ahorcado = Ahorcado.new(@palabra.length, @palabra, @intento)
end

get '/' do
	@intento = 6
	@@ahorcado.reiniciar_intentos(@intento)
	@@palabraoculta = @@ahorcado.dibujar_lineas()
	erb:inicio    
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

	@@palabraoculta = @@ahorcado.actualizar_palabra(@letra)

	@@ahorcado.anadir_letra(@letra)
    @@ahorcado.descontar_intentos()
	@intento = @@ahorcado.intentos_restantes()
	@letras = @@ahorcado.letras_utilizadas()
	@lineas = 	""


	if (@intento < 1)
		erb:juego_terminado
	else
		erb :inicio
	end  

end
