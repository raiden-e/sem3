

# Aufgabe 4A

# Datei importieren

schuhe <- read.table(file = "C:\\Users\\Raiden\\source\\sem3-statistik\\Uebung 4\\schuhe.txt", header = TRUE, sep = " ")

plot(schuhe$Schuhgroesse, schuhe$Groesse, xlab = "Schuhgröße", ylab = "Körpergröße in cm", main = "Schuhgröße vs. Körpergröße")

# Aufgabe 4B

?points

plot(schuhe$Schuhgroesse, schuhe$Groesse, xlab = "Schuhgröße", ylab = "Körpergröße in cm", main = "Schuhgröße vs. Körpergröße", type = "n")

male <- data.frame(subset(schuhe, schuhe$Geschlecht == "m"))
female <- data.frame(subset(schuhe, schuhe$Geschlecht == "w"))

points(male$Schuhgroesse, male$Groesse, pch = 1, col = "blue")
points(female$Schuhgroesse, female$Groesse, pch = 1, col = "red")

?legend

legend(36, 195, legend = c("Männlich", "Weiblich"), col = c("blue", "red"), lty = 3:3)

# Aufgabe 4C

cor(schuhe$Schuhgroesse, schuhe$Groesse)
cor(male$Groesse, male$Schuhgroesse)
cor(female$Groesse, female$Schuhgroesse)
