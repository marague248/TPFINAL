Algoritmo trabajoPracticoFinal
	Definir horUso, opcionElegida como Entero
	Definir asterisco, enuncuadoTarea, presionarTecla como cadena
	//textos que se repiten
	asterisco<-"********************************************"
	enunciadoTarea<- "Debe realizar lo siguiente antes de seguir utilizando el compresor:"
	presionarTecla<- "Presione una tecla para continuar"
	oRings<-3
	aceite<-3
	filtro<-3
	correa<-3
	Repetir
		Limpiar Pantalla
		Escribir "-------------------------------------------------------------------"
		Escribir "Este programa ayuda a llevar el mantenimiento de los equipos del taller"
		Esperar 1 Segundos
		Escribir "También ayuda a conocer el stock de repustos para los equipos de taller"
		Esperar 1 Segundos
		Escribir "¿Qué equipo quiere revisar?"
		Escribir "1. Compresor"
		Escribir "2. Pinza de inflado"
		Escribir "3. Consultar stock repuestos"
		Escribir "Elige la opción (1 a 3), otro número para salir"
		Leer opcionElegida
		Segun opcionElegida Hacer
			1:
				Limpiar Pantalla
				Escribir "Cada vez que realice un mantenimiento complete el registro"
				Escribir "El compresor necesita un mantenimiento cada 100 horas."
				Escribir "Indique las horas de uso que se muestran en el compresor"
				Leer horUso
				Escribir "Horas de uso ",horUso
				horasPMant<-100-horUso
				SI horUso<100 Entonces
					Escribir asterisco
					Escribir "No es necesario realizar mantenimiento"
					Escribir asterisco
					Escribir "Aún faltan ", horasPMant," horas para realizar el próximo mantenimiento."
					Escribir ""
					Escribir presionarTecla
					Esperar Tecla
				SiNo
					si horUso>=100 y horUso<200 Entonces
						Escribir "Revise el registro y confirme si ya realizo el primer mantenimiento"
						Escribir "¿Ya realizó el primer mantenimiento?"
						Escribir "1. Si"
						Escribir "2. No"
						Leer mant1
						horasPMant<-200-horUso
						si mant1=1 Entonces
							Escribir asterisco
							Escribir "Aún faltan ", horasPMant," horas para el próximo mantenimiento."
							Escribir asterisco
							Escribir ""
							Escribir presionarTecla
							Esperar Tecla
						SiNo
							Escribir enunciadoTarea
							Escribir ""
							Escribir "1. Revisar nivel de aceite, completar con 500 ml."
							Escribir "2. Realizar limpieza."
							Escribir "3. Controlar el buen estado de manómetro."
							Escribir "4. Controlar y probar válvula de seguridad."
							Escribir asterisco
							Escribir "Completar el registro indicando el mantenimiento realizado"
							Escribir asterisco
							Escribir "El próximo mantenimiento se debe realizar dentro de ",horasPMant," horas."
							//repuestos usados en el 1er mantenimiento.
							aceite<-aceite-0.5
							si aceite<2 Entonces
								Escribir "Atención: queda poco aceite en stock"
							FinSi
							si filtro<2 Entonces
								Escribir "Atención: quedan pocos filtros"
							FinSi
							si correa<2 entonces
								Escribir"Atención: quedan pocas correas"
							FinSi
							Escribir ""
							Escribir presionarTecla
							Esperar Tecla
						FinSi
					SiNo
						si horUso>=200 y horUso<300
							Escribir "Revise el registro y confirme si ya realizo el primer y segundo mantenimiento"
							Escribir "¿Ya realizó el primer y segundo mantenimiento?"
							Escribir "1. Si"
							Escribir "2. No"
							Leer mant1
							horasPMant<-300-horUso
							si mant1=1 Entonces
								Escribir asterisco
								Escribir "Aún faltan ", horasPMant," horas para el próximo mantenimiento."
								Escribir asterisco
								Escribir ""
								Escribir presionarTecla
								Esperar Tecla
							SiNo
								Escribir "1. ",enunciadoTarea
								Escribir ""
								Escribir "1. Revisar nivel de aceite, completar con 500 ml."
								Escribir "2. Realizar limpieza."
								Escribir "3. Cambiar filtros de aire"
								Escribir "4. Revisar correa."
								Escribir asterisco
								Escribir "Completar el registro indicando el mantenimiento realizado"
								Escribir asterisco
								Escribir "El próximo mantenimiento se debe realizar dentro de ",horasPMant," horas."
								//repuestos usados en el 2do mantenimiento.
								aceite<-aceite-0.5
								filtro<-filtro-1
								si aceite<2 Entonces
									Escribir asterisco
									Escribir "Atención: queda poco aceite en stock"
								FinSi
								si filtro<2 Entonces
									Escribir asterisco
									Escribir "Atención: quedan pocos filtro"
								FinSi
								si correa<2 entonces
									Escribir asterisco
									Escribir"Atención: quedan pocas correas"
								FinSi
								Escribir ""
								Escribir presionarTecla
								Esperar Tecla
							FinSi
							
						SiNo
							si horUso>=300 Entonces
								Escribir enunciadoTarea
								Escribir ""
								Escribir "1. Cambiar todo el aceite."
								Escribir "2. Realizar limpieza completa."
								Escribir "3. Cambiar filtros de aire."
								Escribir "4. Realizar limpieza completa."
								Escribir "5. Controlar el buen estado de manómetro."
								Escribir "6. Controlar y probar válvula de seguridad."
								Escribir "7. Cambiar correa."
								Escribir "8. Realizar prueba hidráulica."
								Escribir "9. Resetear el contador de horas y verificar que volvió a 0."
								Escribir asterisco
								Escribir "Completar el registro indicando el mantenimiento realizado"
								Escribir asterisco
								Escribir "El próximo mantenimiento se debe realizar dentro de 100 horas."
								//repuestos usados en el 3er mantenimiento.
								aceite<-aceite-1
								filtro<-filtro-1
								correa<-correa-1
								//Aviso en caso de que el stock de repuestos sea menor a 2
								si aceite<2 Entonces
									Escribir asterisco
									Escribir "queda poco aceite en stock"
								FinSi
								si filtro<2 Entonces
									Escribir asterisco
									Escribir "quedan pocos filtro"
								FinSi
								si correa<2 entonces
									Escribir asterisco
									escribir"quedan pocas correas"
								FinSi
								Escribir ""
								Escribir presionarTecla
								Esperar Tecla
							FinSi
						FinSi
					FinSi
				FinSi
			2:
				Limpiar Pantalla
				Escribir "Pendiente"
				Escribir ""
				Escribir presionarTecla
				Esperar Tecla
			3:
				Limpiar Pantalla
				Escribir "Actualmente dispone de los siguientes repuestos en stock"
				Escribir "ORings ", oRings, " unidades"
				Escribir "Aceite ", aceite," litros"
				Escribir "Filtro para compresor ",filtro," unidades"
				Escribir "Correa para compresor ",correa," unidades"
				Escribir ""
				Escribir "¿Quiere reponer el stock?"
				Escribir "1. Si"
				Escribir "2. No"
				Leer reponerStock
				si reponerStock=1 Entonces
					Escribir "Indique la cantidad de litros de aceite a reponer"
					Leer aceiteReponer
					aceite<-aceite+aceiteReponer
					Escribir "Indique la cantidad de filtros a reponer"
					Leer filtroReponer
					filtro<-filtro+filtroReponer
					Escribir "Indique la cantidad de ORings a reponer"
					Leer oRingsReponer
					oRings<-oRings+oRingsReponer
					Escribir "Indique la cantidad de correas a reponer"
					Leer correaReponer
					correa<-correa+correaReponer
					//Muestra los nuevos valores en stock
					Escribir "El nuevo stock de repuestos es:"
					Escribir "ORings ", oRings, " unidades"
					Escribir "Aceite ", aceite," litros"
					Escribir "Filtro para compresor ",filtro," unidades"
					Escribir "Correa para compresor ",correa," unidades"
					Escribir presionarTecla
					Esperar Tecla
				FinSi
				
			De Otro Modo:
				Escribir "Salir"
				Escribir ""
				Escribir presionarTecla
				Esperar Tecla
		Fin Segun
	Hasta Que opcionElegida>3
	
FinAlgoritmo
