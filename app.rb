require 'sinatra'
require './lib/ahorcado.rb'

configure do
	@palabra = "cocoon"
	@@ahorcado = Ahorcado.new(@palabra.length,@palabra)
end

get '/' do
	erb:inicio    
end
post '/' do
	erb:inicio    
end
get '/juego_terminado' do
    erb:juego_terminado
end

get '/juego_ganado' do
    erb:juego_ganado
end
