Algoritmo CalculadoraMateriales
	Definir opcion Como Entero;
	menu();
FinAlgoritmo

SubProceso eva00
    Definir i, j, k Como Entero;
    Definir matriz Como Caracter;
    Dimension matriz[4, 4];
    Para i <- 0 Hasta 3 Con Paso 1 Hacer
        Para j <- 0 Hasta 0 Con Paso 1 Hacer
			matriz[i, j] <- "| |";
        FinPara
    FinPara
    Para i <- 0 Hasta 3 Con Paso 1 Hacer
        Para j <- 0 Hasta 0 Con Paso 1 Hacer
            Escribir Sin Saltar matriz[i,j];
        FinPara
        Escribir "";
    FinPara
FinSubProceso

SubProceso eva01
    Definir i, j Como Entero;
    Definir matriz Como Caracter;
    Dimension matriz[10, 10];
    Para i <- 0 Hasta 1 Con Paso 1 Hacer
        Para j <- 0 Hasta 0 Con Paso 1 Hacer
            matriz[i, j] <- "| |______|"; 
        FinPara
    FinPara
    Para i <- 0 Hasta 1 Con Paso 1 Hacer
        Para j <- 0 Hasta 0 Con Paso 1 Hacer
            Escribir Sin Saltar matriz[i, j];
        FinPara
        Escribir "";
    FinPara
FinSubProceso

SubProceso eva02
	Definir i, j Como Entero;
	Definir matriz como Caracter;
	Dimension matriz[4, 4];
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			matriz[i,j] <- "/ /"; 
		FinPara
	FinPara
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			Escribir matriz[i, j];
		FinPara
	FinPara
FinSubProceso

SubProceso menu
	Definir opcion Como Entero;
	Escribir  "";
	Escribir  "";
	eva00;
	eva01;
	Escribir  "";
	Escribir  "";
	Mientras Verdadero Hacer
		Escribir "|-|-------------------------------|";
		Escribir "| |  Seleccione una opción: ","      |";
		Escribir "|-|-------------------------------|";
		Escribir "|1| Calcular muro de ladrillos    |";
		Escribir "|2| Calcular viga de hormigón     |";
		Escribir "|3| Calcular columnas de hormigón |";
		Escribir "|4| Calcular contrapisos          |";
		Escribir "|5| Calcular techo                |";
		Escribir "|6| Calcular pisos                |";
		Escribir "|7| Calcular pintura              |";
		Escribir "|8| Calcular iluminaci?n          |";
		Escribir "|9| Salir                         |";
		Escribir "|-|-------------------------------|";
		Escribir "";
		Leer opcion;
		Segun opcion Hacer 
			Caso 1:
				calcularMuros();
			Caso 2:
				calcularViga();
			Caso 3:
				calcularColumna();
			Caso 4:
				calcularContrapisos();
			Caso 5:
				calcularTecho();
			Caso 6:
				calcularPisos();				
			Caso 7:
				calcularPintura();
			Caso 8:
				calcularIluminacion();
			Caso 9:
				salir(opcion);
			De Otro Modo:
				Escribir "Opción inválida";
		FinSegun
	FinMientras
FinSubProceso

SubProceso calcularSuperficie(ancho, largo)
	Definir superficie Como Real;
	superficie <- ancho * largo;
	Escribir superficie;
FinSubProceso

SubProceso calcularVolumen(ancho, largo, espesor)
	Definir volumen Como Real;
	volumen <- ancho * largo * espesor;
	Escribir volumen;
FinSubProceso

SubAlgoritmo calcularMuros
	Definir espesor_muro, cant_ladrillos, ladrillos_final Como Entero;
	Definir altura_muro, ancho_muro, superficie_muro Como Real;
	Definir cemento_final, arena_final Como Real;
	// Pedimos los datos para calcular 1? la superficie del muro
	Escribir 'Digite la altura del muro en metros';
	Leer altura_muro;
	Escribir 'Digite el ancho del muro en metros';
	Leer ancho_muro;
	// C?lculo de la superficie
	superficie_muro <- altura_muro*ancho_muro;
	// Pedimos que indique que espesor tendra el muro (solo hay dos opciones 20 o 30 cm)
	Escribir 'Digite los centímetros de espesor del muro a construir (20cm/30cm)';
	Leer espesor_muro;
	Si espesor_muro <- 20 Entonces
		ladrillos_final <- 90*superficie_muro;
		cemento_final <- 10.9*superficie_muro;
		arena_final <- 0.09*superficie_muro;
		Escribir sin saltar "";
	SiNo
		// Espesor_muro <- 30
		ladrillos_final <- 120*superficie_muro;
		cemento_final <- 15.2*superficie_muro;
		arena_final <- 0.115*superficie_muro;
		Escribir ''Sin Saltar;
		Si espesor_muro <> 30 Y espesor_muro <> 20 Entonces
			Escribir "Ingrese el espesor que se le proporciona (20 o 30) por favor.";
			Leer espesor_muro;
		FinSi
FinSi
// Mostramos al usuario la superficie total en m2
Escribir "";
Escribir "|-----------------------------------CALCULO DEL MURO------------------------------------|";
Escribir "|";
	Escribir '| La superficie total del muro es: ', superficie_muro, 'm2';
	// Ahora mostramos la cantidad de material que requerirá	
	Escribir "| Para su construcción necesitará: ",cemento_final,"kg de cemento, ",redon(ladrillos_final)," ladrillos y ",arena_final,"m3 de arena.";
	Escribir "|";	
	Escribir "|---------------------------------FIN CALCULO DEL MURO----------------------------------|";
	Escribir "";
FinSubAlgoritmo

SubProceso calcularViga
    Definir largo, cemento, arena, piedra, hierro Como Real;
    Definir respuesta Como Caracter;
    Definir totalCemento, totalArena, totalPiedra, totalHierro Como Real;
	
    // Inicializaci?n de acumuladores
    totalCemento <- 0;
    totalArena <- 0;
    totalPiedra <- 0;
    totalHierro <- 0;
	
    // Ciclo para calcular materiales de m?ltiples vigas
    Repetir
        // Solicitar el largo de la viga al usuario
        Escribir "Ingrese el largo de la viga en metros: ";
        Leer largo;
		
        // Calcular materiales necesarios para la viga actual
        cemento <- largo * 9;
        arena <- largo * 0.02;
        piedra <- largo * 0.02;
        hierro <- largo * 4;
		
        // Mostrar materiales necesarios para la viga actual
        Escribir "Materiales necesarios para una viga de ", largo, " metros:";
        Escribir "Cemento (kg): ", cemento;
        Escribir "Arena (m3): ", arena;
        Escribir "Piedra (m2): ", piedra;
        Escribir "Hierro del 4 (metros): ", hierro;
		
        // Acumular materiales para el total
        totalCemento <- totalCemento + cemento;
        totalArena <- totalArena + arena;
        totalPiedra <- totalPiedra + piedra;
        totalHierro <- totalHierro + hierro;
		
        // Preguntar al usuario si desea calcular materiales para otra viga
        Escribir "?Desea calcular los materiales de otra viga? (s/n): ";
        Leer respuesta;
    Hasta Que respuesta = "n";
	
    // Mostrar el total de materiales utilizados
    Escribir "Materiales totales calculados:";
    Escribir "Cemento (kg): ", totalCemento;
    Escribir "Arena (m3): ", totalArena;
    Escribir "Piedra (m2): ", totalPiedra;
    Escribir "Hierro del 4 (metros): ", totalHierro;
	
FinSubProceso

Subproceso calcularColumna
    Definir largoColumna, anchoColumna, cantidadColumna, columnaTotal Como Real;
	Definir cemento, arena, piedra, hierro10, hierro4 Como Real;
	
    Escribir "Ingrese el largo de la columna en metros: ";
    Leer largoColumna;
	
    Escribir "Ingrese el ancho de la columna en metros: ";
    Leer anchoColumna;
	
	Escribir "Ingrese la cantidad de columnas: ";
	Leer cantidadColumna;
	
	columnaTotal <- largoColumna * anchoColumna * cantidadColumna;
	
    cemento <- 7.5 * columnaTotal;   //Por metro lineal se necesitan 7,5kg de cemento.
    arena <- 0.016 * columnaTotal;   //Por metro lineal se necesitan 0.016m3 de arena.
    piedra <- 0.016 * columnaTotal;  //Por metro lineal se necesitan 0.016m2 de piedra.
    hierro10 <- 6 * columnaTotal;    //Por metro lineal se necesitan 6m de hierro del 10".
    hierro4 <- 3 * columnaTotal;     //Por metro lineal se necesitan 3m de hierro del 4".
	
    Escribir "Para ", cantidadColumna, " columna/s de ", largoColumna, " metros de largo y ", anchoColumna, " metros de ancho, se necesitar?n:";
    Escribir "Cemento: ", cemento, " kg";
    Escribir "Arena: ", arena, " m3";
    Escribir "Piedra: ", piedra, " m2";
    Escribir "Hierro del 10: ", hierro10, " m";
    Escribir "Hierro del 4: ", hierro4, " m";
FinSubproceso

SubProceso calcularContrapisos
	Definir espesor, ancho, largo, volumenCemento, volumenArena, volumenPiedra, aux como Real;
	
	Escribir "Ingrese el espesor del contrapiso en cent?metros:";
	Leer espesor;
	Escribir "Ingrese el ancho del contrapiso en metros:";
	Leer ancho;
	Escribir "Ingrese el largo del contrapiso en metros:";
	Leer largo;
	
	aux <- espesor / 100;
	espesor <- aux;
	
	volumenCemento <- espesor * ancho * largo * 105;
	volumenArena <- espesor * ancho * largo * 0.45;
	volumenPiedra <- espesor * ancho * largo * 0.9;
	
	Escribir "Para un contrapiso de ", espesor, " cent?metros de espesor, ", ancho, " metros de ancho y ", largo, " metros de largo se necesitan:";
	Escribir " * ", volumenCemento, " kilogramos de cemento";
	Escribir " * ", volumenArena, " metros c?bicos de arena";
	Escribir " * ", volumenPiedra, " metros c?bicos de piedra";
FinSubProceso

SubProceso Calculartecho
	Definir espesor, ancho,largo, areaTecho Como Real;
	Definir cantidadCemento, cantidadArena, cantidadPierda, cantidadHierro8 Como Real;
	Definir cantidadHierro6 Como Real;
	
	Escribir Sin Saltar "Ingrese el espesor del techo en metros: ";
	Leer espesor;
	
	Escribir Sin Saltar "Ingrese el ancho del techo en metros: ";
	Leer ancho; 
	
	Escribir Sin Saltar "Ingrese el largo del techo en mentros: ";
	Leer largo;
	
	//Calcular el area del techo 
	areaTecho <-  largo * ancho;
	//Calcular la cantidad de materiales necesarios por metro cuadrado 
	cantidadCemento <- 33 * areaTecho; //Kg
	cantidadArena<- 0.072 *areaTecho; //m^3
	cantidadPiedra <- 0.072 * areaTecho; //m^3
	cantidadHierro8 <- 7* areaTecho; //metros
	cantidadHierro6 <- 4* areaTecho; // metros
	
	//Mostar los resultados al usuario 
	Escribir "Para constuir el techo necesitar?s: ";
	Escribir "Cantidad de cemento: ", cantidadCemento, " kg";
	Escribir "Cantidad de arena: ", cantidadArena," m?";
	Escribir "Cantidad de piedra: ", cantidadPierda, "m?";
	Escribir "Cantidad de hierro del 8: ", cantidadHierro8, " m";
	Escribir "Cantidad de hierro del 6: ", cantidadHierro6, " m";
	
FinSubProceso

SubProceso calcularPisos
	Definir ancho_piso, largo_piso, superficie_piso Como Real;
	
	Escribir "";	
	Escribir "";
	//Se solicita el largo y el ancho a cubrir
	Escribir " A continuacion puede calcular la superficie total a cubrir y el precio total de los materiales para el piso. ";
	Escribir " Ingrese en metros, la medida de ancho del area a cubrir ";
	Leer ancho_piso;
	Escribir " Ingrese en metros, la medida de largo del area a cubrir ";
	Leer largo_piso;
	//Se calcula la superficie agregandole un 10% extra por recorte de material
	superficie_piso<-(ancho_piso*largo_piso);
	Escribir "";
	Escribir "Superficie del piso: ", superficie_piso+(0.10*superficie_piso), " m?";
	Escribir "";
FinSubProceso

subProceso calcularPintura
	Definir litros_pintura, superficie, altura, long, num como reales;
    Escribir "Cálculo de la cantidad de litros de pintura que necesita por superficie";
	Escribir "";
	Escribir "";
	pedirDatos(altura, long);
	superficie <- altura * long;
	litros_pintura <- superficie / 6;
	Escribir "|------------------------------CALCULO DE PINTURA-------------------------------|";
	Escribir "|                                                                               |";
	Escribir "| Usted necesita ", litros_pintura, " litros de pintura para pintar una superficie ",superficie,"m²";
	Escribir "|                                                                               |";
	Escribir "|----------------------------FIN CALCULO DE PINTURA-----------------------------|";
	Escribir "";
FinSubProceso

SubProceso pedirDatos(altura Por Referencia, long Por Referencia)
	Escribir "Ingrese la altura del muro";
	Leer altura;
	Escribir "Ingrese la longitud del muro";
	Leer long;
FinSubProceso

SubProceso  CalcularIluminacion
    Definir superficie, iluminacion Como Real;
    
    Escribir "Ingrese la superficie de la habitaci?n en metros cuadrados:";
    Leer superficie;
    
    iluminacion <- superficie * 0.20;
    
    Escribir "Superficie m?nima de iluminaci?n natural: ", iluminacion;
FinSubProceso

SubProceso salir(opcion)
	Escribir "Programa terminado";
	Leer opcion;
FinSubProceso
	