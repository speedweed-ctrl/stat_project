ozone = read.table("ozone.txt" , header = T)
#print(ozone)

summary(ozone)
#on  constate qu'on a une concentration maximale d'ozone de 166 pour un temperature max de 33 degree a midi
#est une concentration minimale de 42 pour une temerature min de 14 degree a midi

plot(maxO3~T12, data=ozone)
#-on constate que l'allure du courbe permet de faire une ajustement linéaire

reg=lm(maxO3~T12 , data = ozone)
summary(reg)


plot(maxO3~T12,data=ozone)
T12=seq(min(ozone[,"T12"]),max(ozone[,"T12"]),length=100)
grille = data.frame(T12)
ICdte = predict(reg,new=grille,interval="confidence",level=0.95)
matlines(grille$T12,cbind(ICdte),lty=c(1,2,2),col=1)
#on Remarque qu'on a un mauvais ajustement des donnees avec le model de regression
# le modele propose n'est pas assez precis pour prevoir les concentartion d'ozone 

pente = cov(ozone$maxO3,ozone$T12)/var(ozone$T12)
print(pente)
Ordonnee_origine = mean(ozone$maxO3) - mean(ozone$T12)*pente
print(Ordonnee_origine)


fitted(reg)
res<-resid(reg)
plot(res,main="Résidus")
abline(h=0,col="red")

mean(res)
sd(res)

