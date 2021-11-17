crash <- read.table(file = "C:/Users/Raiden/source/sem3-statistik/Übung 2/crashtest.txt", header = TRUE, sep = "/t")

# Die erste Zeile im Datensatz entählt Überschriften, die verwendet werden sollen

crash$Doors # gibt die Doors Spalte aus

crash[,1] # gibt die Spalte aus

crash[10,] # gibt die 10. Zeile aus

abs.ergebnis <- table(crash$Doors) # gibt die Merkmalsausprägung mit abs. Häufigkeit aus

rel.Doors <- abs.ergebnis / length(crash$Doors)

# c)

namen <- c("keine Angabe", "2 Türen", "4 Türen")
farben <- c("blue", "red", "green")
pie(table(crash$Doors), labels=namen, col=farben)

# Es wird ein Kreisdiagram erstellt und angezeigt
# die Farben sind in 'farben' definiert und die Namen in 'namen'
# aus table(crash$Doors) werden die Werte entnommen

barplot(rel.Doors, 100, 5, main= "Türverteilung", xlab = "Türanzahl", ylab =  "rel. H.", col = farben)

abs.weight = table(crash$Wt)
rel.wt = abs.weight / length(crash$Wt)

n = length(crash$Wt)
sturges = 1 + 3.3 * log10(n)
klassenzahl = floor(sturges)

hist(crash$Wt, breaks = seq(min(crash$Wt), max(crash$Wt), length.out = klassenzahl + 1), freq=FALSE)

X = ecdf(crash$Year)
plot(X)
