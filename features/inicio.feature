Feature: Inicio

Scenario: Muestra mensaje de Bienvenida al Juego del Ahorcado
	Given visito la pagina inicial
	Then  deberia ver el mensaje "Bienvenido al Juego del Ahorcado!"
