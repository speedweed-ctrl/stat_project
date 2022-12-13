
#créer une base de données contenant 2 colonnes  weight et feed
chickwts
# supprimer les données dupliquées de la colonne de feed
unique(chickwts$feed)
# diviser les données en 3 intervalles de poids
w=cut(chickwts$weight,3)
# représenter les 3 intervalles sous forme de tableau
table(w,chickwts$feed)
# Décrire les données 
summary(chickwts)
# representer les donnees avec un  diagramme de boites du poid on fonction de type d'alimentation 
plot(weight~feed,data=chickwts)

#position
min(chickwts$weight)
max(chickwts$weight)
mean(chickwts$weight)
median(chickwts$weight)
quantile(chickwts$weight,0.25)
quantile(chickwts$weight,0.75)
#dispersion

#calculer l`etendu
etendu <- max(chickwts$weight)-min(chickwts$weight)
cat(etendu)

var(chickwts$weight)
sd(chickwts$weight)

