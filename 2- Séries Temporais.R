                                   #2 - SÃ©ries Temporais

                                       #Aula 2

x <- 1:20                 #Cria objeto x cujos elementos sÃ£o os valores inteiros de 1 a 20
y <- 20:30                #Cria objeto y cujos elementos sÃ£o os valores inteiros de 20 a 30


                                 #Operadores de ComparaÃ§Ã£o

x>15                      #Retorna como verdaeiros (TRUE)  os valores maiores que 15
x<15                      #Retorna como verdaeiros (TRUE)  os valores menores que 15
x>=5                      #Retorna como verdaeiros (TRUE)  os valores maiores e iguais a 5
x<=5                      #Retorna como verdaeiros (TRUE)  os valores menores ou iguais a 5
x==10                      #Retorna como verdaeiros (TRUE)  os valores iaguais a 10

                                  #Noções Básicas - Continuação

ls()                      #Retorna uma lista de todos objetos criados
rm(x)                     #Apaga objeto x
rm(list = "x","y")        #Apaga uma lista de objetos, no caso os objetos listados foram x e y
rm(list=ls())             #Apaga todos os objetos
getwd()                   #Retorno o atual diretório de trabalho do R
setwd("c:/EconometriaA")  #Altera a pasta de trabalho do R

                                   #Carregando e Instalando Pacotes

install.packages("pwt8")                       #Instala o Pacote PWT8.0
library(pwt8)                                  #Carrega o pacote PWT8.0
data("pwt8.0")                                 #Carrega os dados elencados "pwt8.0" dispoinÃ­veis no pacote
View(pwt8.0)                                   #Visualiza os dados na tabela pwt8.0

                                   #Extraindo dados de tabelas e renomeando colunas

br <- subset(pwt8.0, country=="Brazil", select = c("rgdpna","avh","xr"))  #Cria a tabela "br" com dados das linhas que assumem o valor "country" (paÃ­s) igual a "Brazil", selecionando as colunas cujas variáveis são "rgdpna" (PIB), "avh" (TRABALHO)  e "xr" (CÃ‚MBIO)
colnames(br) <-  c("PIB","Trabalho","Câmbio")  #Renomeia as colunas para PIB, Trabalho e CÃ¢mbio

                                   #Criando Gráficos

plot(br$PIB)                                   #Plota os valores da coluna PIB da tabela br
plot(br$PIB, type = "l")                       #Plota os valores  coluna PIB da tabela br em forma de linha.
dados <- ts(br, start = 1950, frequency = 10)   #Cria uma tabela denominada "dados" cuja estrutura é uma série temporal com início em 1950, com peridiocidade de 10 anos (1)
plot(dados, main="Dados Barsileiros", xlab="Ano")                                #Cria um gráfico para cada uma das três variáveis
plot(dados, main="Dados Barsileiros", xlab="Ano", plot.type = "single")          #Cria um Ãºnico grÃ¡fico com as trÃªs sÃ©ries juntas
plot(dados, col="blue", main="Dados Barsileiros", xlab="Ano", plot.type = "single")                   #Cria um Ãºnico grÃ¡fico com as trÃªs sÃ©ries juntas, com linhas azuis
plot(dados, col=c("blue","yellow","green"), main="Dados Barsileiros", xlab="Ano", plot.type = "single")   #Cria um Ãºnico grÃ¡fico com as trÃªs sÃ©ries juntas, com linhas azuis para  PIB, amarela para trabalho e verde para o cÃ¢mbio
write.csv(br,file = "br.csv")                 #Grava os dados da tabela br no arquivo br.csv


