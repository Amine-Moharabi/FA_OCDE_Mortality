#mortality Factorial Analysi in R
# Installer le package 'FactoMineR' si ce n'est pas encore fait
if (!require(FactoMineR)) install.packages("FactoMineR")
if (!require(factoextra)) install.packages("factoextra")

# Créer les données directement
data <- data.frame(
  Pays = c("Allemagne", "Espagne", "Etats-Unis", "France", "Irlande", "Italie", "Japon", "Portugal", "Royaume Uni"),
  Accidents = c(7838, 6331, 44519, 8007, 402, 7857, 12864, 1678, 3492),
  Suicides = c(11157, 3218, 29180, 10268, 424, 4115, 31413, 545, 4448),
  Agressions = c(719, 347, 16749, 419, 37, 705, 788, 118, 440)
)

# Vérifiez les données
print(data)
summary(data)
# Convertir les données en tableau de contingence
contingency_table <- as.matrix(data[, -1])  # Exclure la colonne 'Pays'
rownames(contingency_table) <- data$Pays   # Ajouter les noms des pays comme étiquettes de ligne

# Vérifier le tableau de contingence
print("Tableau de contingence :")
print(contingency_table)
# Charger les bibliothèques nécessaires
library(FactoMineR)
library(factoextra)

# Réaliser l'AFC
afc_result <- CA(contingency_table, graph = FALSE)

# Résumé des résultats
summary(afc_result)

# Visualiser les résultats
fviz_ca_biplot(afc_result, repel = TRUE, title = "Biplot de l'AFC")
