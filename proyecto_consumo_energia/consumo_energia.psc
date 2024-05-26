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

Proceso Calculadora_Consumo_Energia
    // Definición de la matriz de consumo
    Definir consumo, dias Como Entero;
	Dimension consumo[31];
	Escribir "Ingrese la cantidad de días del mes: ";
	Leer dias;

	
	RegistrarConsumoDiario(consumo, dias);
	
	mostrarDatos(consumo, dias);
	
	
	
FinProceso
