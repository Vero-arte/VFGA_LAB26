#
#Hecho con gusto por Veronica F. Garcia Arteaga
#
library(data.table)
library(dplyr)

## dplyr agiliza proceso summarize

choose.files()

data2013 <- read.csv("C:\\Users\\Dell\\Downloads\\greenR_2013 (1).csv")
data2013 <- as.data.table(data2013)

class(data2013)

resultados2013 <- data2013%>%
  group_by(location_name)%>%
  summarise(suma_GCI_2013 = sum(GCI_2013, na.rm = T),
            suma_GP_SINVCR = sum(GP_SINVCR, na.rm = T),
            suma_GCP_2013 = sum(GCP_2013, na.rm = T),
            count = n())
