Algoritmo ordenar_tres_numeros
	Definir a, b, c Como Entero
	
	// Entrada de datos
	Escribir "Ingrese el primer valor: "
	Leer a
	Escribir "Ingrese el segundo valor: "
	Leer b
	Escribir "Ingrese el tercer valor: "
	Leer c
	
	// Procesos y Estructuras Condicionales
	Si a > b Y a > c Entonces
		Escribir "El número mayor es: ", a
		Si b > c Entonces
			Escribir "El número intermedio es: ", b
			Escribir "El número menor es: ", c
		SiNo
			Escribir "El número intermedio es: ", c
			Escribir "El número menor es: ", b
		FinSi
	FinSi
	
	Si b > a Y b > c Entonces
		Escribir "El número mayor es: ", b
		Si a > c Entonces
			Escribir "El número intermedio es: ", a
			Escribir "El número menor es: ", c
		SiNo
			Escribir "El número intermedio es: ", c
			Escribir "El número menor es: ", a
		FinSi
	FinSi
	
	Si c > a Y c > b Entonces
		Escribir "El número mayor es: ", c
		Si a > b Entonces
			Escribir "El número intermedio es: ", a
			Escribir "El número menor es: ", b
		SiNo
			Escribir "El número intermedio es: ", b
			Escribir "El número menor es: ", a
		FinSi
	FinSi
FinAlgoritmo