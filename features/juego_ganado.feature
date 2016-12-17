Feature: Juego Ganado

Scenario: Juego Ganado
	Given Dado el juego Ganado
	Then se debe mostrar mensaje "Juego Ganado"

Scenario: Boton para volver Juego Principal, en un Juego Ganado
	Given Dado el juego Ganado
	Then cuando presiono el boton "volver a jugar"

Scenario: Volver a juego inicial, desde Juego Ganado
	Given Dado el juego Ganado
	When cuando presiono el boton "volver a jugar"
	Then mostrar el mensaje "Bienvenido al Juego"
