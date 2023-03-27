#instalamos el paquete
install.packages("qcc")

#llamamos a la libreria
library("qcc")

#Ejercicio 1:

#Leemos la tabla desde el portapapeles
DATOS1<-read.delim("clipboard",col.names = c("Etapa","Frecuencia"))

#generamos un objeto llamado "Frecuencia" que tiene guardadas todas las frecuencias de DATOS1
Frecuencia<-DATOS1$Frecuencia

#Les asignamos nombres a cada uno de los valores  del objeto "Frecuencia"
names(Frecuencia)<-c("Etapa1","Etapa2","Etapa3","Etapa4","Etapa5","Etapa6","Etapa7")

#de esta manera
Frecuencia

#agregué algunas modificaciones para mejorar el gráfico
pareto.chart(Frecuencia, main="Pareto", ylab="Frecuencia", ylab2="Porcentaje acumulado")

#guardamos los cálculos necesarios para el gráfico que calcula la funcion 'pareto.chart'
datos_pareto<-pareto.chart(Frecuencia)

#Ejercicio 2:
#Problema a medir: Falla principal
#Poblacion: Envases con fallas 
#Unidad: Cada envase con falla
#Variable: cualitativa nominal

DATOS2<-read.delim("clipboard", col.names = "Falla")

tabla<-table(DATOS2) #meter datos en una tabla de nombre "tabla"
tabla2<-as.data.frame(tabla) #"tabla2" es un dataframe con el contenido de la unica columna de "tabla"

sum(tabla2$Freq)

sum(tabla[2])

class(tabla2)
class(tabla2$Freq)
class(tabla2$Falla)  #Verificar 

tabla2$Prop<-tabla2$Freq/sum(tabla2$Freq)*100 #Agregar columna al dataframe
tabla2

barplot(tabla2$Freq, ylim=c(0,20), ylab = "Frecuencia", xlab = "Tipos de falla", horiz = FALSE)
min(tabla2$Freq)
max(tabla2$Freq)





#Ejercicio 3
#Objetivo: Estudiar el comportamiento de la cantidad de defectos por metro de tela
#poblacion: todos los trozos de tela
#elemento: cada trozo de tela
#







