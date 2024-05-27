// Función para registrar el consumo de energia diario
SubAlgoritmo  registrarConsumoDiario(consumo, dias Por Referencia)
	Definir i Como Entero;
	Para i <- 1 Hasta dias Hacer
        Escribir "Ingrese el consumo del día ", i, " en kw: " Sin Saltar;
        Leer consumo[i];
	FinPara
FinSubAlgoritmo

// Función para mostrar los datos cargados de consumo
SubAlgoritmo mostrarDatos(consumo, dias Por Referencia)
	Definir i Como Entero;
	Escribir '';
	Para i<-1 Hasta dias Con Paso 1 Hacer
		Escribir "El consumo registrado en el dia ", i , " es: ", consumo[i];
	FinPara
	Escribir "";
FinSubAlgoritmo

// Función para sumar los valores del consumo
Funcion suma <- sumarConsumo(consumo, dias Por Referencia)
    Definir suma Como Real;
	Definir i Como Entero;
    suma <- 0;
    Para i <- 1 Hasta dias Hacer
        suma <- suma + consumo[i];
    FinPara
	
FinFuncion

Proceso Calculadora_Consumo_Energia
    // Definición de la matriz de consumo
    Definir llave Como Logico;
	Definir consumo, dias Como Entero;
	Definir precioKw, totalPagar Como Real;
	Dimension consumo[31];
	llave <- Falso;
	
	// pedimos al usuario que ingrese el valor de cada KW
	Escribir "Ingrese el valor de cada KW: ";
	Leer precioKw;
	
	// pedimos al usuario que ingrese la cantidad de dias que tiene el mes a registrar
	Repetir
		Escribir "Ingrese la cantidad de días del mes: ";
		Leer dias;
		Si (dias > 0 y dias <= 31) Entonces
			llave <- Verdadero;
		SiNo
			Escribir "Cantidad de días ingresados incorrecto";
			llave <- Falso;
		FinSi
	Hasta Que llave = Verdadero;
	
	RegistrarConsumoDiario(consumo, dias);
	
	mostrarDatos(consumo, dias);
	
	totalPagar <- (sumarConsumo(consumo, dias)) * precioKw;
	
	Escribir "El total a pagar es de: $", totalPagar;
	
FinProceso
