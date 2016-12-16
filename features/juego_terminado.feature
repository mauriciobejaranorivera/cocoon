Feature: Juego Terminado

Scenario: Juego terminado
	Given Dado el juego terminado
	Then se debe mostrar mensaje "Juego Terminado"

Scenario: boton para juego terminado
	Given Dado el juego terminado
	Then cuando presiono el boton "volver_juego"

Scenario: Volver a juego inicial
	Given Dado el juego terminado
	When cuando presiono el boton "volver_juego"
	Then mostrar el mensaje "Bienvenido al Juego"


