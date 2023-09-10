//***************************************************************************************************************************************************
//Función que da de baja los contratos.
Funcion ContratosBajas (CR Por Referencia)
	//Declaro las variables a utilizar.
	//CR=Iniciales de la variable ContratosRegistros.
	//Se declara porque lo solicita el programa Pseint al ejecutar.
	Definir I Como Entero
	Definir ContratoIngresado Como Caracter
	Definir UnCaracter Como Caracter
	Definir DatoCorrecto Como Logico
	
	Escribir "Ingrese el contrato a eliminar: " Sin Saltar
	Leer ContratoIngresado
	//Se verifica que el dato ingresado se encuentre dentro del rango de los contratos.
	//----------------------------------------------------------------------------------------------------------------------------------------------
	UnCaracter=Subcadena(ContratoIngresado,1,1)
	
	Segun UnCaracter Hacer
		"1":
			DatoCorrecto=Verdadero
		"2":
			DatoCorrecto=Verdadero
		"3":
			DatoCorrecto=Verdadero
		"4":
			DatoCorrecto=Verdadero
		"5":
			DatoCorrecto=Verdadero
		De Otro Modo:
			DatoCorrecto=Falso
	FinSegun
	//-----------------------------------------------------------------------------------------------------------------------------------------------	
	Si DatoCorrecto Entonces
		//Se elimina el número de contrato.
		Para I=1 Hasta 11 Con Paso 1 Hacer
			CR[ConvertirANumero(UnCaracter),I]=0
		FinPara
		Escribir ""
		Escribir "Transacción realizada. - Contrato eliminado."
		Escribir ""	
	SiNo
		Escribir "Debe ingresar un número de contratro en el rando de 1 a 5."
	FinSi
	
FinFuncion
//***************************************************************************************************************************************************
//Función que verifica los contratos libres actuales.
Funcion ContratosCapacidadOciosa (CR Por Referencia)
	//Declaro las variables a utilizar.
	//CR=Iniciales de la variable ContratosRegistros.
	//Se declara porque lo solicita el programa Pseint al ejecutar.
	Definir I Como Entero
	Definir CapacidadVacia Como Entero	
	//Se inicializa las variables.
	I=0
	CapacidadVacia=0
	
	Para I=1 hasta 5 Con Paso 1 Hacer
		Si CR[I,1]=0 Entonces
			CapacidadVacia=CapacidadVacia+1
		SiNo
		FinSi
	FinPara
	
	Escribir "Cantidad de contratos libres: ", CapacidadVacia
	
FinFuncion
//***************************************************************************************************************************************************
//Función que verifica si es un número el valor ingresado.
//Funcion EsUnNumeroDeContrato(DatoCorrecto Por Referencia, ValorIngresado Por Valor)	
	//Declaro las variables a utilizar.	
	//Definir UnCaracter Como Caracter
	//UnCaracter=Subcadena(ValorIngresado,1,1)
	//Segun UnCaracter Hacer
		//"1":
			//DatoCorrecto=Verdadero
		//"2":
			//DatoCorrecto=Verdadero
		//"3":
			//DatoCorrecto=Verdadero
		//"4":
			//DatoCorrecto=Verdadero
		//"5":
			//DatoCorrecto=Verdadero
		//De Otro Modo:
			//DatoCorrecto=Falso
	//FinSegun
//FinFuncion
//***************************************************************************************************************************************************
Funcion MenuPrincipal
	
	Limpiar Pantalla
	Escribir "------------------------------------------------------------------------------------------------------------"	
	Escribir "        Menú Principal"
	Escribir "------------------------------------------------------------------------------------------------------------"
	Escribir "     1. Parametros."
	Escribir "     2. Contratos (Altas / Bajas / Consultas)"
	Escribir "     3."
	Escribir "     4."
	Escribir ""
	Escribir "     9. Finalizar"
	Escribir "------------------------------------------------------------------------------------------------------------"
	Escribir "        Eliga una opción: "
	Escribir "------------------------------------------------------------------------------------------------------------"
	
FinFuncion
//***************************************************************************************************************************************************
Funcion MenuParametros
	//Declaro las variables a utilizar
	Definir A Como Entero
	
	Limpiar Pantalla
	Escribir "------------------------------------------------------------------------------------------------------------"	
	Escribir "   1.   Menú Parametros"
	Escribir "------------------------------------------------------------------------------------------------------------"
	Escribir "   1.1. Contratos"
	Escribir "   1.2. Clase de rodados"
	Escribir "   1.3. Clase de costos "
	Escribir "   1.4. Clase de listas de precios"
	Escribir "   1.5. Clase de servicios"
	Escribir ""
	Escribir ""
	Escribir "   1.0. Volver menú anterior"
	Escribir "------------------------------------------------------------------------------------------------------------"
	Escribir "        Eliga una opción: "
	Escribir "------------------------------------------------------------------------------------------------------------"
	
FinFuncion
//***************************************************************************************************************************************************
Funcion MenuContratos
	//Declaro las variables a utilizar
	Definir A Como Entero
	
	Limpiar Pantalla
	
	Escribir "------------------------------------------------------------------------------------------------------------"	
	Escribir "   2.   Menú Contratos"
	Escribir "------------------------------------------------------------------------------------------------------------"
	Escribir "   2.1. Altas"
	Escribir "   2.2. Bajas"
	Escribir "   2.3. Listado de contratos"
	Escribir "   2.4. Capacidad ociosa"
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir "   2.0. Volver menú anterior"
	Escribir "------------------------------------------------------------------------------------------------------------"
	Escribir "        Eliga una opción: "
	Escribir "------------------------------------------------------------------------------------------------------------"
	
FinFuncion
//***************************************************************************************************************************************************
//Función que realiza el alta de los contratos.
Funcion ContratosAltas (CR Por Referencia)
	//Declaro las variables a utilizar.
	//CR=Iniciales de la variable ContratosRegistros.
	Definir ContratoIngresado Como Caracter
	//-------------------------------------------------------------------------------------------------------------------------------------------------
	//Se utilizan para la funcion de "SubCadena".
	Definir UnCaracter Como Caracter
	Definir DosCaracteres Como Caracter
	Definir CuatroCaracteres Como Caracter
	//Se utiliza para saber la posición dentro de una cadena de caracteres en el ciclo "Para".
	Definir Posicion Como Entero
	//Se utiliza para determinar la longitud de la cadena de texto que representa el importe ingresado.
	Definir LargoImporteIngresado Como Entero
	//Se utiliza para determinar si el caracter ingresado representa un valor numerico.
	Definir UnCaracterImporteIngresado Como Caracter
	//-------------------------------------------------------------------------------------------------------------------------------------------------
	//Se utilizan para el ingreso de las fechas.	
	Definir Dia Como Caracter
	Definir Mes Como Caracter
	Definir Anio Como Caracter
	//-------------------------------------------------------------------------------------------------------------------------------------------------
	//Se utilizan para cortar los ciclos si los datos ingresados son correctos.
	Definir DatoCorrecto Como Logico
	Definir DatoIncorrecto Como Logico
	Definir FechaCorrecta Como Logico
	//Se utiliza para validar que la fecha final sea mayor a la fecha inicial.
	Definir VolverIngresarFechas Como Logico  
	//-------------------------------------------------------------------------------------------------------------------------------------------------
	//Se utiliza para verificar el codigo del rodado.
	Definir RodadoIngresado Como Caracter
	//Se utiliza para verificar el valor ingresado que sea un número entero.
	Definir ImporteIngresado Como Caracter
	Definir ValorIngresado Como Caracter
	//-------------------------------------------------------------------------------------------------------------------------------------------------
	//Se utiliza para verificar el codigo del servicio.
	Definir ServicioIngresado Como Caracter
	//-------------------------------------------------------------------------------------------------------------------------------------------------
   
	
	Escribir "Número de contrato: " Sin Saltar
	Leer ContratoIngresado
	//Se verifica que el dato ingresado se encuentre dentro del rango de los contratos.
	//-------------------------------------------------------------------------------------------------------------------------------------------------
	UnCaracter=Subcadena(ContratoIngresado,1,1)
	
	Segun UnCaracter Hacer
		"1":
			DatoCorrecto=Verdadero
		"2":
			DatoCorrecto=Verdadero
		"3":
			DatoCorrecto=Verdadero
		"4":
			DatoCorrecto=Verdadero
		"5":
			DatoCorrecto=Verdadero
		De Otro Modo:
			DatoCorrecto=Falso
	FinSegun
	//-----------------------------------------------------------------------------------------------------------------------------------------------
	Si DatoCorrecto Entonces
		//El dato ingresado se encuentra dentro del rango de los contratos.
		//Se asigna a la fila que representa el contrato.
		CR[ConvertirANumero(UnCaracter),1]=Trunc(ConvertirANumero(UnCaracter))
		Escribir "Número de contrato ingresado: " CR[ConvertirANumero(UnCaracter),1]
		//------------------------------------------------------------------------------------------------------------------------------------------
		//Se valida la fecha de inicio del contrato.
		//Se inicializa la variable para validar otros datos.
		//Se utiliza el bucle Repetir para verificar que la fecha final sea superior a la fecha inicial.
		Repetir
			FechaCorrecta=Falso
			DosCaracteres=""
			VolverIngresarFechas=Falso
			//No se sale del bucle hasta que se ingrese un dia correcto del mes.
			Mientras NO(FechaCorrecta) Hacer
				Escribir "Ingrese el DÍA de INICIO de la locación: " Sin Saltar
				Leer Dia
				DosCaracteres=Subcadena(Dia,1,2)
				Segun DosCaracteres Hacer
					"1","2","3","4","5","6","7","8","9":
						FechaCorrecta=Verdadero					
					"01","02","03","04","05","06","07","08","09","10":
						FechaCorrecta=Verdadero
					"11","12","13","14","15","16","17","18","19","20":
						FechaCorrecta=Verdadero					
					"21","22","23","24","25","26","27","28","29","30":
						FechaCorrecta=Verdadero		
					"31":
						FechaCorrecta=Verdadero	
					De Otro Modo:
						FechaCorrecta=Falso
						Escribir "Datos ingresado no corresponde a un día del mes"
				FinSegun
			FinMientras
			//Se inicializa la variable para validar otros datos.
			FechaCorrecta=Falso
			DosCaracteres=""		
			//No se sale del bucle hasta que se ingrese un mes correcto del año calendario.
			Mientras NO(FechaCorrecta) Hacer
				Escribir "Ingrese el MES de INICIO de la locación: " Sin Saltar
				Leer Mes
				DosCaracteres=Subcadena(Mes,1,2)
				Segun DosCaracteres Hacer
					"1","2","3","4","5","6","7","8","9":
						FechaCorrecta=Verdadero					
					"01","02","03","04","05","06","07","08","09":
						FechaCorrecta=Verdadero
					"10","11","12":
						FechaCorrecta=Verdadero
					De Otro Modo:
						FechaCorrecta=Falso
						Escribir "Datos ingresado no corresponde a un mes del año"
				FinSegun
			FinMientras
			//Se inicializa la variable para validar otros datos.
			FechaCorrecta=Falso
			CuatroCaracteres=""		
			//No se sale del bucle hasta que se ingrese el año calendario.
			Mientras NO(FechaCorrecta) Hacer
				Escribir "Ingrese el AÑO de INICIO de la locación: " Sin Saltar
				Leer Anio
				CuatroCaracteres=Subcadena(Anio,1,4)
				Segun CuatroCaracteres Hacer
					"2023","2024","2025","2026","2027","2028","2029","2030":
						FechaCorrecta=Verdadero					
					De Otro Modo:
						FechaCorrecta=Falso
						Escribir "Datos ingresado no corresponde a un número de año"
				FinSegun
			FinMientras
			//---------------------------------------------------------------------------------------------------------------------------------------
			//Se guarda los valores ingresados por el inicio del contrato del año, mes y dia, en la fila que representa al contrato.
			CR[ConvertirANumero(UnCaracter),2]=Trunc(ConvertirANumero(Anio))
			CR[ConvertirANumero(UnCaracter),3]=Trunc(ConvertirANumero(Mes))
			CR[ConvertirANumero(UnCaracter),4]=Trunc(ConvertirANumero(Dia))
			//---------------------------------------------------------------------------------------------------------------------------------------
			//Se valida la fecha de fin del contrato.
			//Se inicializa la variable para validar otros datos.
			FechaCorrecta=Falso
			DosCaracteres=""
			//No se sale del bucle hasta que se ingrese un dia correcto del mes.
			Mientras NO(FechaCorrecta) Hacer
				Escribir "Ingrese el DÍA de FIN de la locación: " Sin Saltar
				Leer Dia
				DosCaracteres=Subcadena(Dia,1,2)
				Segun DosCaracteres Hacer
					"1","2","3","4","5","6","7","8","9":
						FechaCorrecta=Verdadero					
					"01","02","03","04","05","06","07","08","09","10":
						FechaCorrecta=Verdadero
					"11","12","13","14","15","16","17","18","19","20":
						FechaCorrecta=Verdadero					
					"21","22","23","24","25","26","27","28","29","30":
						FechaCorrecta=Verdadero		
					"31":
						FechaCorrecta=Verdadero	
					De Otro Modo:
						FechaCorrecta=Falso
						Escribir "Datos ingresado no corresponde a un día del mes"
				FinSegun
			FinMientras
			//Se inicializa la variable para validar otros datos.
			FechaCorrecta=Falso
			DosCaracteres=""		
			//No se sale del bucle hasta que se ingrese un mes correcto del año calendario.
			Mientras NO(FechaCorrecta) Hacer
				Escribir "Ingrese el MES de FIN de la locación: " Sin Saltar
				Leer Mes
				DosCaracteres=Subcadena(Mes,1,2)
				Segun DosCaracteres Hacer
					"1","2","3","4","5","6","7","8","9":
						FechaCorrecta=Verdadero					
					"01","02","03","04","05","06","07","08","09":
						FechaCorrecta=Verdadero
					"10","11","12":
						FechaCorrecta=Verdadero
					De Otro Modo:
						FechaCorrecta=Falso
						Escribir "Datos ingresado no corresponde a un mes del año"
				FinSegun
			FinMientras
			//Se inicializa la variable para validar otros datos.
			FechaCorrecta=Falso
			CuatroCaracteres=""		
			//No se sale del bucle hasta que se ingrese el año calendario.
			Mientras NO(FechaCorrecta) Hacer
				Escribir "Ingrese el AÑO de FIN de la locación: " Sin Saltar
				Leer Anio
				CuatroCaracteres=Subcadena(Anio,1,4)
				Segun CuatroCaracteres Hacer
					"2023","2024","2025","2026","2027","2028","2029","2030":
						FechaCorrecta=Verdadero					
					De Otro Modo:
						FechaCorrecta=Falso
						Escribir "Datos ingresado no corresponde a un número de año"
				FinSegun
			FinMientras
			//Se guarda los valores ingresados por el fin del contrato del año, mes y dia, en la fila que representa al contrato.
			CR[ConvertirANumero(UnCaracter),5]=Trunc(ConvertirANumero(Anio))
			CR[ConvertirANumero(UnCaracter),6]=Trunc(ConvertirANumero(Mes))
			CR[ConvertirANumero(UnCaracter),7]=Trunc(ConvertirANumero(Dia))
			//---------------------------------------------------------------------------------------------------------------------------------------
			//Se verifica que el año final sea mayor o igual al año inicial.
			Si CR[ConvertirANumero(UnCaracter),5] >= CR[ConvertirANumero(UnCaracter),2] Entonces
				//El año final es mayor o igual al año inicial.
				Si CR[ConvertirANumero(UnCaracter),5] > CR[ConvertirANumero(UnCaracter),2] Entonces
					//El año final es mayor al año inicial.
					VolverIngresarFechas=Verdadero
				SiNo
					//El año final es igual al año inicial.
					//Se verifica el mes final sea mayor o igual al mes inicial.
					Si CR[ConvertirANumero(UnCaracter),6] >= CR[ConvertirANumero(UnCaracter),3] Entonces
						//El mes final es mayor o igual al mes final.
						Si CR[ConvertirANumero(UnCaracter),6] > CR[ConvertirANumero(UnCaracter),3] Entonces
							//El mes final es mayor al mes inicial.
							VolverIngresarFechas=Verdadero							
						SiNo
							//El mes final es igual al mes inicial.
							//Se verifica el día final sea mayor o igual al día inicial.
							Si CR[ConvertirANumero(UnCaracter),7] > CR[ConvertirANumero(UnCaracter),4] Entonces
								//El día final es mayor al día incial.
								//Estadia mínima un día.
								VolverIngresarFechas=Verdadero
							SiNo
								Escribir "Fechas ingresadas INCORRECTAS."
							FinSi
						FinSi
					SiNo
						Escribir "Fechas ingresadas INCORRECTAS."
					FinSi
				FinSi
			Sino
				Escribir "Fechas ingresadas INCORRECTAS."
			FinSi
			//---------------------------------------------------------------------------------------------------------------------------------------
		Hasta Que VolverIngresarFechas
		//-------------------------------------------------------------------------------------------------------------------------------------------
		//Se valida los rodados.
		DatoCorrecto=Falso
		//No se sale del bucle hasta que se ingrese el codigo del rodado.
		Repetir
			Escribir "Ingrese el codigo del rodado: " Sin Saltar
			Leer RodadoIngresado
			RodadoIngresado=Subcadena(RodadoIngresado,1,1)
			Segun RodadoIngresado Hacer
				"1":
					DatoCorrecto=Verdadero
				"2":
					DatoCorrecto=Verdadero
				"3":
					DatoCorrecto=Verdadero
				"4":
					DatoCorrecto=Verdadero
				"5":
					DatoCorrecto=Verdadero					
				De Otro Modo:
					DatoCorrecto=Falso
					Escribir "Codigo de rodado INCORRECTO."
			FinSegun			
		Hasta Que DatoCorrecto
		//Se asigna el codigo del rodado.
		CR[ConvertirANumero(UnCaracter),9]=Trunc(ConvertirANumero(RodadoIngresado))
		//-------------------------------------------------------------------------------------------------------------------------------------------
		//Se valida el valor ingresado que sea un número entero.
		DatoCorrecto=Falso
		DatoIncorrecto=Falso
		//No se sale del bucle hasta que se ingrese el valor de un número entero.
		Repetir
			//Se inicializa la variable que va a representar un valor numerico.
			ValorIngresado=""
			Escribir "Ingrese el importe total del servicio contratado ($) "
			Escribir "(Sin comas, ni puntos, seran elimninados) :" Sin Saltar
			Leer ImporteIngresado
			//Se obtiene la longitud de la cadena de texto ingresada que representa un valor númerico.
			LargoImporteIngresado=Longitud(ImporteIngresado)
			//Se recorre caracter por caracter según la longitud de valor ingresado.
			Para Posicion=1 Hasta LargoImporteIngresado Con Paso 1 Hacer
				UnCaracterImporteIngresado=Subcadena(ImporteIngresado, Posicion, Posicion)
				Segun UnCaracterImporteIngresado Hacer
					"1":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					"2":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					"3":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero						
					"4":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					"5":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					"6":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					"7":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					"8":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					"9":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					"0":
						ValorIngresado=Concatenar(ValorIngresado,UnCaracterImporteIngresado)
						DatoCorrecto=Verdadero
					De Otro Modo:
						DatoIncorrecto=Verdadero
				FinSegun					
			FinPara
			//Se utiliza el condicional para no repertir por cada caracter ingresado si es erroneo.
			Si (DatoCorrecto) Y (DatoIncorrecto) Entonces
				//Hay datos no numericos en el valor ingresado.
				Escribir "Importe ingresado INCORRECTO."
				DatoCorrecto=Falso
				DatoIncorrecto=Falso
			SiNo
				//Se asgina el valor ingresado.
				CR[ConvertirANumero(UnCaracter),10]=Trunc(ConvertirANumero(ValorIngresado))
			FinSi
		Hasta Que (DatoCorrecto) Y No(DatoIncorrecto)
		//-------------------------------------------------------------------------------------------------------------------------------------------
		//Se valida los servicios.
		DatoCorrecto=Falso
		//No se sale del bucle hasta que se ingrese el codigo del rodado.
		Repetir
			Escribir "Ingrese el codigo del servicio: " Sin Saltar
			Leer ServicioIngresado
			ServicioIngresado=Subcadena(ServicioIngresado,1,1)
			Segun ServicioIngresado Hacer
				"1":
					DatoCorrecto=Verdadero
				"2":
					DatoCorrecto=Verdadero
				"3":
					DatoCorrecto=Verdadero
				"4":
					DatoCorrecto=Verdadero
				De Otro Modo:
					DatoCorrecto=Falso
					Escribir "Codigo de servicio INCORRECTO."
			FinSegun			
		Hasta Que DatoCorrecto
		//Se asigna el codigo del servicio.
		CR[ConvertirANumero(UnCaracter),11]=Trunc(ConvertirANumero(ServicioIngresado))		
	SiNo
		Escribir "Debe ingresar un número de contratro en el rango de 1 a 5."
	FinSi
FinFuncion
//***************************************************************************************************************************************************
//Funcion que muestra los contratos vigentes del negocio.
Funcion ContratosVigentes (CR Por Referencia)
	//Declaro las variables a utilizar.
	//CR=Iniciales de la variable ContratosRegistros.
	//Se declara porque lo solicita el programa Pseint al ejecutar.
	Definir ContratosFilas Como Entero
	Definir ContratosColumnas Como Entero
	Definir Dias Como Entero
	
	Limpiar Pantalla
	//Se inicializa las variables.
	ContratosFilas=1
	ContratosColumnas=1
	
	//Se muestra los contratos vigentes.
	Para ContratosFilas=1 Hasta 5 Con Paso 1 Hacer
		//Se obtiene la cantidad de días vigentes del contrato.		
		
		Escribir""
		Escribir "*******************************************************************************************************************************"
		Escribir "(Número de contrato): " , CR[ContratosFilas,1]	," (Inicio): ", CR[ContratosFilas,4] ,"/",CR[ContratosFilas,3] ,"/",CR[ContratosFilas,2] ," (Fin): ",CR[ContratosFilas,7] ,"/",CR[ContratosFilas,6] ,"/",CR[ContratosFilas,5] , " (Días): ",CR[ContratosFilas,8]
		Escribir "(Rodado):             " , CR[ContratosFilas,9] 
		Escribir "(Importe total):      " , CR[ContratosFilas,10] ," $"
		Escribir "(Servicio):           " , CR[ContratosFilas,11]
		Escribir "*******************************************************************************************************************************"
	FinPara
	
FinFuncion

//***************************************************************************************************************************************************
//Cuerpo principal del programa.
Algoritmo GestionDeContratos
	//Declaro las variables a utilizar
	//Se declara porque lo solicita el programa Pseint al ejecutar.
	Definir I Como Entero
	//Se utiliza para definir la cantidad de contratos que se pueden realizar dependiendo de la dimensión del negocio.
	Definir IdentifcaciónDeContratos Como Entero
	//Se utiliza para definir la clase de rodados del parque automotor actual.
	Definir ClaseDeRodados Como Caracter
	//Se utiliza para definir la clase de costos.
	Definir ClaseDeCostos Como Caracter
	//Se utiliza para definir la clase de la listas de precios.
	Definir ClaseDeListasDePrecios Como Caracter
	//Se utiliza para definir el precio por cada clase de rodados.
	Definir ClaseDeListasDePreciosImporte Como Real
	//Se utiliza para definir los servicios que pudiesen ofrecer la activdad del negocio.
	Definir ClaseDeServicios Como Caracter
	//Se utilizar para registrar los contratos vigentes de la actividad del negocio.
	Definir ContratosRegistros Como Entero
	//Se utiliza para salir del bucle Repetir
	Definir Opcion Como Entero
	
	//Se declara la dimensión del negocio como si tuviera cinco espacios disponibles.
	Dimension IdentifcaciónDeContratos[5]
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
	//Se declara la dimension de en donde se va a registrar los contratos vigentes.
	//Estructura de la variable= Contrato/FechaDeInicio=Año*Mes*DiaFechaDeFin=Año*Mes*Dia/Dias/Rodados/ImporteTotal/ServicioAsociado.
	//Columna1=Contrato.
	//Columna2=AñoInicio.
	//Columna3=MesInicio.
	//Columna4=DiaInicio.
	//Columna5=AñoFin
	//Columna6=MesFin.
	//Columna7=DiaFin.
	//Columna8=Dias.
	//Columna9=Rodados.
	//Columna10=ImporteTotal.
	//Columna11=ServicioAsociado.
	Dimension ContratosRegistros[5,11]
	
	//Se realiza el alta de los contratos.
	//Eventualmente a modo de presentación se realiza el alta de la cantidad de 5 (cinco) contratos.
	Para I=1 Hasta 5 Con Paso 1
		IdentifcaciónDeContratos[I]=I
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
				
				Repetir
					
					Leer Opcion
					
					Segun Opcion Hacer
						1:					
							Limpiar Pantalla
							Escribir "----------------------------------------------------"
							Escribir "         Contrato número: "
							Escribir "----------------------------------------------------"
							Para I=1 Hasta 5 Con Paso 1
								Escribir "         "  IdentifcaciónDeContratos[I]
							FinPara
							Escribir ""
							Escribir "Presione una tecla"
							Esperar Tecla
							MenuParametros
						2:	
							Limpiar Pantalla							
							Escribir "----------------------------------------------------"
							Escribir "         Clases de rodados: "
							Escribir "----------------------------------------------------"
							Para I=1 Hasta 5 Con Paso 1
								Escribir "         "  , I, " ",ClaseDeRodados[I]
							FinPara						
							Escribir ""
							Escribir "Presione una tecla"
							Esperar Tecla
							MenuParametros
						3:
							Limpiar Pantalla							
							Escribir "----------------------------------------------------"
							Escribir "          Clases de costos: "
							Escribir "----------------------------------------------------"
							Para I=1 Hasta 4 Con Paso 1
								Escribir "         "  , I, " ", ClaseDeCostos[I]
							FinPara						
							Escribir ""
							Escribir "Presione una tecla"
							Esperar Tecla
							MenuParametros
						4:
							Limpiar Pantalla							
							Escribir "----------------------------------------------------"
							Escribir "         Lista de precios"
							Escribir "----------------------------------------------------"
							Para I=1 Hasta 11 Con Paso 1
								si I<10 Entonces
									Escribir "         " , I, "  ", ClaseDeListasDePrecios[I] ," $ ", ClaseDeListasDePreciosImporte[I]
								SiNo
									Escribir "         " , I, " ", ClaseDeListasDePrecios[I] ," $ ", ClaseDeListasDePreciosImporte[I]
								FinSi
							FinPara						
							Escribir ""
							Escribir "Presione una tecla"
							Esperar Tecla
							MenuParametros
						5:
							Limpiar Pantalla							
							Escribir "----------------------------------------------------"
							Escribir "         Lista de servicios"
							Escribir "----------------------------------------------------"
							Para I=1 Hasta 5 Con Paso 1
								Escribir "         "  , I, " ",ClaseDeServicios[I]
							FinPara						
							Escribir ""
							Escribir "Presione una tecla"
							Esperar Tecla
							MenuParametros					
						6:
							Limpiar Pantalla							
							Escribir ""
							Escribir ""
							Escribir "Presione una tecla"
							Esperar Tecla
							MenuParametros								
						0:	
						De otro modo:
							Escribir ""
							Escribir "(Opción no válida)"
							Escribir "Presione una tecla"
							Esperar Tecla
							MenuParametros												
					FinSegun
				Hasta Que Opcion=0	
			2:								
				Repetir
					MenuContratos
					Leer opcion
					Segun Opcion Hacer
						1:
							ContratosAltas(ContratosRegistros)
						2:
							ContratosBajas(ContratosRegistros)
						3:
							ContratosVigentes(ContratosRegistros)
						4:
							ContratosCapacidadOciosa(ContratosRegistros)
						De Otro Modo:
							
					FinSegun
					Esperar Tecla
				Hasta Que Opcion=0
			3:	
			4:
			5:
			9:
			De otro modo:
				Escribir "Opción no válida"
		FinSegun
	Hasta Que Opcion=9
	
	Escribir ""
	
FinAlgoritmo