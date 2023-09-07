//***********************************************************************************************************************//
Funcion MenuPrincipal
	
	Limpiar Pantalla
	
	Escribir "      Menú Principal"
	Escribir ""
	Escribir "   1. Parametros."
	Escribir "   2."
	Escribir "   3."
	Escribir "   4."
	Escribir "   5. Salir."
	Escribir ""
	Escribir "      Eliga una opción (1-5): "
	Escribir ""
	
FinFuncion
//***********************************************************************************************************************//
Funcion MenuParametros
	//Declaro las variables a utilizar
	Definir A Como Entero
	
	Limpiar Pantalla
	
	Escribir "        Menú Parametros"
	Escribir ""
	Escribir "   1.1. Contratos"
	Escribir "   1.2. Clase de rodados"
	Escribir "   1.3. Clase de costos "
	Escribir "   1.4. Clase de listas de precios"
	Escribir "   1.5. Clase de servicios"
	Escribir "   1.6. Volver menú anterior"
	Escribir ""
	Escribir "      Eliga una opción (1-6): "
	
FinFuncion
//***********************************************************************************************************************//
Algoritmo GestionDeContratos
	//Declaro las variables a utilizar
	Definir I Como Entero
	//Se utiliza para definir la cantidad de contratos que se pueden realizar dependiendo de la dimensión del negocio.
	Definir CantidadDeContratos Como Entero
	//Se utiliza para definir la clase de rodados del parque automotor actual.
	Definir ClaseDeRodados Como Caracter
	//Se utiliza para definir la clase de costos.
	Definir ClaseDeCostos Como Caracter
	//Se utiliza para definir la clase de la listas de precios.
	Definir ClaseDeListasDePrecios Como Caracter
	//Se utiliza para definir el precio por cada clase de rodados.
	Definir ClaseDeListasDePreciosImporte Como Real
	//Se utilizar para definir los servicios que pudiesen ofrecer la activdad del negocio.
	Definir ClaseDeServicios Como Caracter
	//Se utiliza para salir del bucle Repetir
	Definir Opcion Como Entero
	
	//Se declara la dimensión del negocio como si tuviera cinco espacios disponibles.
	Dimension CantidadDeContratos[5]
	//Se declara la dimensión de la cantidad de rodados. (Autos/Camionetas/Motos/Bicicleta/Monopatin.)
	Dimension ClaseDeRodados[5]
	//Se declara la dimensión de la cantidad de costos. (Bienes/Servicios/Impuestos/Otros).
	Dimension ClaseDeCostos[4]
	//Se declara la dimension de los diferentes precios segun la clase del rodado.
	//(Autos/Camionetas/Motos/Bicicleta/Monopatin.) + (Grande/Mediano/Pequeño)
	Dimension ClaseDeListasDePrecios[11]
	Dimension ClaseDeListasDePreciosImporte[11]
	//Se declara la dimension de los diferentes servicios que puede ofrecer el negocio
	Dimension ClaseDeServicios[5]
	
	//Se realiza el alta de los contratos.
	//Eventualmente a modo de presentación se realiza el alta de la cantidad de 5 (cinco) contratos.
	Para I=1 Hasta 5 Con Paso 1
		CantidadDeContratos[I]=I
	FinPara
	
	//Se realiza el alta de las clases de rodados.
	ClaseDeRodados[1]="Autos"
	ClaseDeRodados[2]="Camionetas"
	ClaseDeRodados[3]="Motos"
	ClaseDeRodados[4]="Bicicletas"
	ClaseDeRodados[5]="Monopatin"
	
	//Se realiza el alta de las clases de costos.
	ClaseDeCostos[1]="Bienes"
	ClaseDeCostos[2]="Servicios"
	ClaseDeCostos[3]="Impuestos"
	ClaseDeCostos[4]="Otros"
	
	//Se realiza el alta de las clases de listas de precios y el precio correspondiente.
	ClaseDeListasDePrecios[1]="Autos-Grandes"
	ClaseDeListasDePreciosImporte[1]=1000.00
	ClaseDeListasDePrecios[2]="Autos-Medianos"
	ClaseDeListasDePreciosImporte[2]=900.00
	ClaseDeListasDePrecios[3]="Autos-Pequeños"
	ClaseDeListasDePreciosImporte[3]=800.00
	ClaseDeListasDePrecios[4]="Camionetas-Grandes"
	ClaseDeListasDePreciosImporte[4]=2000.00
	ClaseDeListasDePrecios[5]="Camionetas-Medianos"
	ClaseDeListasDePreciosImporte[5]=1900.00
	ClaseDeListasDePrecios[6]="Camionetas-Pequeños"
	ClaseDeListasDePreciosImporte[6]=1800.00	
	ClaseDeListasDePrecios[7]="Motos-Grandes"
	ClaseDeListasDePreciosImporte[7]=600.00
	ClaseDeListasDePrecios[8]="Motos-Medianos"
	ClaseDeListasDePreciosImporte[8]=500.00
	ClaseDeListasDePrecios[9]="Motos-Pequeños"
	ClaseDeListasDePreciosImporte[9]=400.00
	ClaseDeListasDePrecios[10]="Bicicletas"
	ClaseDeListasDePreciosImporte[10]=300.00			
	ClaseDeListasDePrecios[11]="Monopatin"
	ClaseDeListasDePreciosImporte[11]=200.00			
	
	//Se realiza el alta de los servicios que pudiese ofrecer
	ClaseDeServicios[1]="Lavado"
	ClaseDeServicios[2]="Mecanica"
	ClaseDeServicios[3]="Electricidad"
	ClaseDeServicios[4]="Verficación VTV"
	ClaseDeServicios[5]="Gestoría"
	
	Repetir 
	MenuPrincipal
	
	Leer Opcion
	
	Segun Opcion Hacer
		1:
			MenuParametros
			Leer Opcion
			Segun Opcion Hacer
					"A":
						Escribir ""
						Escribir "         Contrato número: "
						Escribir ""
						Para I=1 Hasta 5 Con Paso 1
							Escribir "         " CantidadDeContratos[I]
						FinPara
						Escribir ""
					"B":	
						Escribir ""
						Escribir "         Clases de rodados: "
						Escribir  ""
						Para I=1 Hasta 5 Con Paso 1
							 Escribir "         " ClaseDeRodados[I]
						FinPara						
						Escribir ""
					"C":
						Escribir ""
						Escribir "          Clases de costos: "
						Escribir ""
						Para I=1 Hasta 4 Con Paso 1
							Escribir "         " ClaseDeCostos[I]
						FinPara						
						Escribir ""
					"D":
						Escribir ""
						Escribir "         Lista de precios"
						Escribir ""
						Para I=1 Hasta 11 Con Paso 1
							Escribir "         " ClaseDeListasDePrecios[I] ," $ ", ClaseDeListasDePreciosImporte[I]
						FinPara						
						Escribir ""
					"E":
						Escribir ""
						Escribir "         Lista de servicios"
						Escribir ""
						Para I=1 Hasta 5 Con Paso 1
							Escribir "         " ClaseDeServicios[I]
						FinPara						
						Escribir ""						
					De otro modo:
						Escribir "Opción no válida"			
			FinSegun			
		2:			
		5:	
		De otro modo:
			Escribir "Opción no válida"			
	FinSegun
	Hasta Que Opcion=5
FinAlgoritmo