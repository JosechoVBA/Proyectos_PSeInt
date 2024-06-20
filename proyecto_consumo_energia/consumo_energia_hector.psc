Funcion diasDelMes <- periodoDeConsumo(numMes, anio, mes Por Referencia)
	Definir diasDelMes Como Entero;
	Segun numMes Hacer
		1: 
			diasDelMes <- 31;
			mes <- "Enero";
		2: 
			diasDelMes <- esBisiesto(anio);
			mes <- "Febrero";
		3:
			diasDelMes <- 31;
			mes <- "Marzo";
		4: 
			diasDelMes <- 30;
			mes <- "Abril";
		5: 
			diasDelMes <- 31;
			mes <- "Mayo";
		6: 
			diasDelMes <- 30;
			mes <- "Junio";
		7: 
			diasDelMes <- 31;
			mes <- "Julio";
		8: 
			diasDelMes <- 31;
			mes <- "Agosto";
		9: 
			diasDelMes <- 30;
			mes <- "Septiembre";
		10: 
			diasDelMes <- 31;
			mes <- "Octubre";
		11: 
			diasDelMes <- 30;
			mes <- "Noviembre";
		12: 
			diasDelMes <- 31;
			mes <- "Diciembre";
		De Otro Modo:
			diasDelMes <- 0;
	FinSegun
FinFuncion

Funcion resultado <- esBisiesto(anio Por Valor)
	Definir resultado Como entero;
	Si (anio % 400 = 0) O (anio % 4 = 0 Y anio % 100 <> 0) Entonces
		resultado <- 29;
	SiNo
		resultado <- 28;
	FinSi
FinFuncion

SubAlgoritmo crearCalendario(dias, calendario Por Referencia)
	Definir i, j, contador Como Entero;
	contador <- 1;
	Para i <- 0 Hasta 6 Hacer
		Para j <- 0 Hasta 6 Hacer
			Si contador > dias Entonces
				calendario[i,j] <- 0;
			SiNo
				calendario[i,j] <- contador;
			FinSi
			contador <- contador + 1;
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo mostrarCalenario(dias, calendario Por Referencia, mes, anio)
	Escribir "";
	Escribir "Periodo elejigo: ", mes, " del ", anio;
	crearCalendario(dias, calendario);
	Definir i, j Como entero;
	Para i <- 0 Hasta 6 Hacer
		Para j <- 0 Hasta 6 Hacer
			si calendario[i,j] < 10 Entonces
				Escribir Sin Saltar " ", calendario[i,j], " ";
			SiNo
				Escribir Sin Saltar calendario[i,j], " ";
			FinSi
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinSubAlgoritmo

// Funcion para calcular el consumo
SubAlgoritmo  calculoDeConsumo(dias, precioKw)
	Definir total Como Real;
	total <- precioKw * dias;
	Escribir "En precio del consumo de energía en el periodo mes y año seleccionado es de: $", total;
FinSubAlgoritmo

Proceso Calculadora_Consumo_Energia
    Definir precioKw Como Real;
	Definir mes Como Caracter;
	Definir dias, numMes, anio, calendario Como Entero;
	Definir llave Como Logico;
	Dimension calendario[7,7];
	
	llave <- Falso;
	Repetir
		Escribir "Ingrese el periodo (mes y año) en el cual basar el cálculo.";
		Escribir Sin Saltar "Mes (1 al 12): ";
		Leer numMes;
		Escribir Sin Saltar "Año: ";
		Leer anio;
		dias <- periodoDeConsumo(numMes, anio, mes);
		Si dias <> 0 Entonces
			llave <- Verdadero;
		Sino 
			Escribir "Error al reconocer los datos ingresados. Vuelva a intentar.";
		FinSi
	Hasta Que llave = Verdadero;
	
	Escribir "Ingrese el precio del KW: ";
	Leer precioKw;
	
	mostrarCalenario(dias, calendario, mes, anio);
	calculoDeConsumo(dias, precioKw);
FinProceso
