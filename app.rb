require 'sinatra'
require './lib/ahorcado.rb'

configure do
	@palabra = "cocoon"
	@@ahorcado = Ahorcado.new(@palabra.length)
end

get '/' do
	erb:inicio    
end
