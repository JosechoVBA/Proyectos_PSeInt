// Función para registrar el consumo diario
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

// Funcion para sumar la totalidad del consumo registrado
Funcion suma <- sumaConsumo(consumo, dias)
	Definir suma Como Real;
	Definir i Como Entero;
	suma <- 0;
	Para i<-1 Hasta dias Con Paso 1 Hacer
		suma <- suma + consumo[i];
	FinPara
FinFuncion

Proceso Calculadora_Consumo_Energia
    // Definición de la matriz de consumo
    Definir consumo, precioKw Como Real;
	Definir dias Como Entero;
	Definir llave Como Logico;
	Dimension consumo[31];
		
	llave <- Falso;
	Repetir
		Escribir "Ingrese la cantidad de días del mes (valor numérico): ";
		Leer dias;
		Si dias > 0 y dias <= 31 Entonces
			llave <- Verdadero;
		Sino 
			Escribir "Valor ingresado incorrecto, ingrese un valor numerico entre 1 y 31";
		FinSi
	Hasta Que llave = Verdadero;
	
	Escribir "Ingrese el precio del KW: ";
	Leer precioKw;
	
	RegistrarConsumoDiario(consumo, dias);
	
	mostrarDatos(consumo, dias);
	
	Escribir "En precio del consumo de energía en el mes es de: $", sumaConsumo(consumo, dias) * precioKw;
	
FinProceso
