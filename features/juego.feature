Feature: Juego (pantalla principal)

Scenario: Recibe una letra
	Given Ingresa a la pagina de bienvenida 
	  And El usuario ingresa una letra "C"
	When Se presiona el boton "adivinar"
	Then  deberia compararse la letra con la palabra secreta "C _ C _ _ _"
