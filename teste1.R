library(plotly)
library(gridExtra)
diamonds
cor(diamonds$carat, diamonds$price, method="pearson")

todos<-ggplot(data = diamonds,
              aes(carat, price))    #d?vida, d? pra fazer uma fun??o que aplica oq eu escrevi n vezes?
#tentei gerar uma por?m nao consegui pensar em como fazer ele plotar o return
D<-ggplot(data = diamonds[diamonds$color == 'D',],
          aes(diamonds[diamonds$color == 'D',]$carat,
              diamonds[diamonds$color == 'D',]$price))

E<-ggplot(data = diamonds[diamonds$color == 'E',],
          aes(diamonds[diamonds$color == 'E',]$carat,
              diamonds[diamonds$color == 'E',]$price))

F<-ggplot(data = diamonds[diamonds$color == 'F',],
          aes(diamonds[diamonds$color == 'F',]$carat,
              diamonds[diamonds$color == 'F',]$price))

G<-ggplot(data = diamonds[diamonds$color == 'G',],
          aes(diamonds[diamonds$color == 'G',]$carat,
              diamonds[diamonds$color == 'G',]$price))

H<-ggplot(data = diamonds[diamonds$color == 'H',],
          aes(diamonds[diamonds$color == 'H',]$carat,
              diamonds[diamonds$color == 'H',]$price))

I<-ggplot(data = diamonds[diamonds$color == 'I',],
          aes(diamonds[diamonds$color == 'I',]$carat,
              diamonds[diamonds$color == 'I',]$price))

J<-ggplot(data = diamonds[diamonds$color == 'J',],
          aes(diamonds[diamonds$color == 'J',]$carat,
              diamonds[diamonds$color == 'J',]$price))

grid.arrange(D+geom_point()+geom_smooth()+labs(y='price',x='cor D'),
             E+geom_point()+geom_smooth()+labs(y='price',x='cor E'),
             F+geom_point()+geom_smooth()+labs(y='price',x='cor F'),
             G+geom_point()+geom_smooth()+labs(y='price',x='cor G'),
             todos+geom_point(aes(color=color))+geom_smooth()+labs(y='price',x='carat'),
             H+geom_point()+geom_smooth()+labs(y='price',x='cor H'),
             I+geom_point()+geom_smooth()+labs(y='price',x='cor I'),
             J+geom_point()+geom_smooth()+labs(y='price',x='cor J'),
             ncol=3, nrow=3)      #outra d?vida: como fazer limites pro grafico globais, ao inves de escrever um aum


