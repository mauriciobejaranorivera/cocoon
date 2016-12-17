Feature: Mostrar pista a requerimiento del usuario

Scenario: Mostrar pista a requerimiento del usuario
	Given estoy jugando
	When click en boton "mostrar_pista"
	Then deberia mostrar la pista "es una pelicula de los 90"
