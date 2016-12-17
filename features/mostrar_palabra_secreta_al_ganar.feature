Feature: Mostrar palabra secreta al ganar

Scenario: Mostrar la palabra secreta cuando se gana el juego
	Given el juego ganado
	Then deberia mostrar la palabra secreta "cocoon"
