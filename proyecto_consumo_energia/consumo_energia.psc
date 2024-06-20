// Funcion para solicitar al usuario que ingrese el año sobre el que se va a realizar el cálculo
SubProceso pedirAnio(anio Por Referencia)
	Definir llave Como Logico;
	// Solicitamos al usuario ingrese el año
	llave <- Falso;
	Repetir
		Escribir 'Ingrese el año sobre el cual desea calcular el consumo: ';
		Leer anio;
		Si (anio >= 1900) y (anio <= 2024) Entonces
			llave <- Verdadero;
		SiNo
			Escribir "Valor ingresado incorrecto, escriba un año válido (no ingrese espacios en blanco): ";
		FinSi
	Hasta Que llave = Verdadero;
FinSubProceso

// Función para establecer si el año ingresado por el usuario es bisiesto o no. Conforme ello se asigna el valor al mes de febrero.
Funcion diasFebrero <- calculoDiasFebrero(anio)
	Definir diasFebrero Como Entero;
	
	diasFebrero <- 0; 
	Si ((anio MOD 4=0) Y (anio MOD 100<>0) O anio MOD 400=0) Entonces
		diasFebrero <- 29;
	SiNo
		diasFebrero <- 28;
	FinSi
FinFuncion

// Funcion definir el mes sobre el que se hará el calculo
SubProceso pedirMes(mes Por Referencia)
	Definir llave Como Logico;
	llave <- Falso;
	Repetir
		Escribir "Escriba el nombre del mes que desea calcular el consumo: ";
		Leer mes;
		mes <- Minusculas(mes);
		Si (mes = "enero") o (mes = "febrero") o (mes = "marzo") o (mes = "abril") o (mes = "mayo") o (mes = "junio") o (mes = "julio") o (mes = "agosto") o (mes = "septiembre") o (mes = "octubre") o (mes = "noviembre") o (mes = "diciembre") Entonces
			llave <- Verdadero;
		SiNo
			Escribir "Valor ingresado incorrecto, escriba el nombre del mes con caracteres (no ingrese espacios en blanco): ";
		FinSi
	Hasta Que llave = Verdadero;
FinSubProceso

// Funcion para asignar los días al mes ingresado por el usuario
Funcion dias <- calculoDias(mes,febrero)
	Definir dias Como Entero;
	
	Si (mes = "enero") o (mes = "marzo") o (mes = "mayo") o  (mes = "julio") o (mes = "agosto") o (mes = "octubre") o (mes = "diciembre") Entonces
		dias <- 31;
	SiNo
		Si (mes = "abril") o (mes = "junio") o (mes = "septiembre") o  (mes = "noviembre")  Entonces
			dias <- 30;
		SiNo
			Si mes = "febrero" Entonces
				dias <- febrero;
			FinSi
		FinSi 
	FinSi
FinFuncion

// Función para registrar el consumo diario
SubAlgoritmo  registrarConsumoDiario(consumo Por Referencia)
	Escribir "Ingrese los KW consumidos en el mes a calcular";
	Leer consumo;
FinSubAlgoritmo

// Creamos un calendario
SubAlgoritmo crearCalendario(cantidadDias, calendario Por Referencia)
	Definir i, j, contador Como Entero;
	contador <- 1;
	Para i <- 0 Hasta 5 Hacer
		Para j <- 0 Hasta 5 Hacer
			Si contador > cantidadDias Entonces
				calendario[i,j] <- 0;
			SiNo
				calendario[i,j] <- contador;
			FinSi
			contador <- contador + 1;
		FinPara
	FinPara
FinSubAlgoritmo



// Función para mostrar los datos cargados de consumo
SubAlgoritmo mostrarDatos(consumo, cantidadDias, precioKw, calendario, mes Por Referencia)
	Definir i, j Como Entero;
	Definir nombreMes Como Cadena;
	
	// Obtener el nombre del mes con la primera letra en mayúscula
	nombreMes <- Concatenar(Mayusculas(Subcadena(mes, 0, 0)), Subcadena(mes, 1, Longitud(mes)-1));
	
	Escribir '';
	Escribir '=================================';
	Escribir "Consumo ", nombreMes, " 2023: $", (consumo * precioKw), Sin Saltar;
	Escribir '';	
	Escribir '=================================';
	Escribir '';
	
	crearCalendario(cantidadDias, calendario);
	Para i <- 0 Hasta 5 Hacer
		Para j <- 0 Hasta 5 Hacer
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

Proceso Calculadora_Consumo_Energia
    // Definición las variables a emplear
    Definir consumo, precioKw Como Real;
	Definir cantidadDias, anio, febrero, calendario Como Entero;
	Definir mes Como Caracter;
	Definir llave Como Logico;
	Dimension calendario[6,6];
	
	Escribir "********************************************************************************************************************************************************";
	Escribir "Bienvenido! este es un programa que le permitirá calcuar el valor a pagar conforme el consumo de energía que ha tenido durante un mes y año determiando.";
	Escribir "********************************************************************************************************************************************************";
	Escribir '';
	
	// Pedimos al usuario que ingrese el año sobre el cual se quiere hacer el cálculo.
	pedirAnio(anio);
	
	// Determinamos si el año ingresado es bisiesto o no
	febrero <- calculoDiasFebrero(anio);
	
	// Pedimos al usuario que ingrese el nombre del mes a calcular
	pedirMes(mes);
	
	// Vamos a calcular la cantida de días que contiene el mes ingresado por el usuario
	cantidadDias <- calculoDias(mes, febrero);
	
	// Pedimos al usuario que ingrese el precio del KW
	Escribir "Ingrese el precio del KW: ";
	Leer precioKw;
	
	// Registramos el consumo con los datos que vaya ingresando el usuario
	RegistrarConsumoDiario(consumo);
	
	// Mostramos datos de consumo por día y el total a pagar
	mostrarDatos(consumo, cantidadDias, precioKw, calendario, mes);
FinProceso
