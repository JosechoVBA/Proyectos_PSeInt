SubProceso carta(n)
	
	Segun n Hacer
		1:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|______________|";
		2:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|  #           |";
			Escribir "|  #           |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		3:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		4:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|______________|";
		5:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #           |";
			Escribir "|  #           |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		6:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #           |";
			Escribir "|  #           |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		7:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|______________|";
		8:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		9:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		11:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|          ##  |";
			Escribir "|          ##  |";
			Escribir "|  ########    |";
			Escribir "|______________|";
		12:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  #     #  #  |";
			Escribir "|  #       ##  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		13:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  #       #   |";
			Escribir "|  #     #     |";
			Escribir "|  #   #       |";
			Escribir "|  # #         |";
			Escribir "|  #   #       |";
			Escribir "|  #     #     |";
			Escribir "|  #       #   |";
			Escribir "|______________|";
		10:
			Escribir "________________";
			Escribir "|              |";
			Escribir "| #  ######### |";
			Escribir "| #  #       # |";
			Escribir "| #  #       # |";
			Escribir "| #  #       # |";
			Escribir "| #  #       # |";
			Escribir "| #  #       # |";
			Escribir "| #  ######### |";
			Escribir "|______________|";
	FinSegun
FinSubProceso

Proceso BlackJack
	Definir n,n1,n2, opc, banca como enteros;
	Definir gana, pierde Como Logico;
	Escribir "*******************";
	Escribir "***  BlackJack! ***";
	Escribir "*******************";
	
	Escribir "";
	Escribir 'Bienvenido a Blackjack!!";
	Escribir "";
	
	gana<-Falso;
	pierde<-Falso;
	n1<-azar(12)+1;
	n2<-azar(12)+1;
	Escribir "Sus Cartas son: ";
	carta(n1);
	carta(n2);
	Si ((n1 = 11) o (n1 = 12) o (n1=13)) Entonces
		n1<-10;
	SiNo
		Si ((n2 = 11) o (n2 = 12) o (n2 = 13)) Entonces
			n2<-10;
		FinSi
	FinSi
	n<- n1 + n2;
	Repetir
		Escribir "Tiene: ",n;
		Escribir "Desea una carta mas?: ";
		Escribir "Ingresa 1 para si";
		Escribir "Ingresa 2 para no";
		Leer opc;
		Si opc = 1 Entonces
			n2 <- azar(12)+1;
			carta(n2);
			Si ((n2 = 11) o (n2 =12) o (n2=13)) Entonces
				n2<-10;
			FinSi
			n<- n+n2;
		FinSi
	Hasta Que n>21 o opc = 2
	Escribir "";
	Escribir "Usted saco: ", n;
	Si n>21 Entonces
		Escribir "La banca saco: ";
		n1<- azar(12)+1;
		n2<-azar(12)+1;
		carta(n1);
		carta(n2);
		Si n1 = 11 o n1 =12 o n1=13 Entonces
			n1<-10;
		SiNo
			Si n2 = 11 o n2 =12 o n2=13 Entonces
				n2<-10;
			FinSi
		FinSi
		banca <- n1 + n2;
		Escribir "La banca saco: ",banca;
		Escribir "Tiene mas de 21 puntos, Ud ha PERDIDO!!!";
	SiNo
		Escribir "La banca juega!";
		n1<- azar(12)+1;
		n2<-azar(12)+1;
		carta(n1);
		carta(n2);
		Si n1 = 11 o n1 =12 o n1=13 Entonces
			n1<-10;
		SiNo
			Si n2 = 11 o n2 =12 o n2=13 Entonces
				n2<-10;
			FinSi
		FinSi
		banca <- n1 + n2;
		Mientras banca < n Hacer
			n2<-azar(12)+1;
			carta(n2);
			Si n2 = 11 o n2 =12 o n2=13 Entonces
				n2<-10;
			FinSi
			banca <- banca +n2;
		FinMientras
		Escribir "La banca saco: ",banca;
		Si n >banca y banca>21 Entonces
			Escribir "Usted GANÓ esta mano";
		SiNo
			Si n = banca Entonces
				Escribir "Es un Empate!!";
			SiNo
				Escribir "La banca gana, PERDIÓ esta mano";
			FinSi
		FinSi
	FinSi
	
FinProceso













