# Jetzt sind Sie dran

# Aufgabe 1.2

# Vektor wird erzeuget und "gewicht" genannt. 4 int werte
gewicht <- c(65.4, 78.3, 80.5, 68.5)

# Vektor gewicht wird ausgegeben
gewicht

# Vektor geschlecht mit 4 string werten wird erzeugt
geschlecht <- c("m", "m", "w", "m")

# Prüfung auf numerischer Werte des vektors "geschlecht"
is.numeric(geschlecht)

# Prüfung auf boolische Werte des vektors "geschlecht"
is.logical(geschlecht)

# Prüfung auf alphanumerische Werte des vektors "geschlecht"
is.character(geschlecht)

# Bei jeder is Funktion wird das Ergebnis TRUE / FALSE ausgegeben

# lustige Berechnungen mit overflow und anderen artefacten des computerrechnens
c(4, 1.4 / 0, NA, 0 / 0, -exp(1000))

# Aufgabe 1.3
# a

x <- 4:10 # Erstellung von Vektor mit Werten von 4 bis 10
x # Ausgabe
y <- c(2, 9) # Erstellung von Vektor mit Werten 2 und 9
y # Ausgabe
x / y # Versuch von Teilen eines array der ldnge 6 durch eines d ldnge 2
# Division wird nicht ausgeführt

# b
x <- seq(1, 3, length = 8) # Sequenz gleichm Abstdände v 1 b 3 als vektor
x[4] # Ausgabe des 4. Wertes
x[-8] # Ausgabe des Vektors ohne dem Wert an der Stelle 8
x[c(1, 3, 7)] # Ausgabe der Werte an Stelle 1, 3 und 7
x[x > 1.5] # Ausgabe der Werte, die grf<U+03AF>er als 1.5 sind


# Aufgabe 1.4

# Syntax s(Wohnform, Geschlecht, Miete, Entfernung FH, Note)
s1 <- c("allein", "m", 300, 25, 2)
s2 <- c("WG", "m", 400, 28, 4)
s3 <- c("WG", "d", 300, 25, 2)
s4 <- c("WG", "m", 3100, 25, 3)
s5 <- c("allein", "m", 300, 98, 5)
s6 <- c("allein", "m", 300, 999, 1)
s7 <- c("allein", "w", 800, 66, 2)
s8 <- c("bei Eltern", "w", 700, 26, 1)
s9 <- c("bei Eltern", "w", 3900, 25, 5)
s10 <- c("bei Eltern", "m", 3400, 95, 3)
s11 <- c("bei Eltern", "m", 6300, 825, 3)
s12 <- c("sonstiges", "w", 200, 75, 4)
s13 <- c("sonstiges", "m", 500, 35, 4)
s14 <- c("allein", "w", 300, 28, 2)
s15 <- c("allein", "m", 800, 29, 1)

wohnform <- c(
    "allein", "allein", "allein", "allein", "WG",
    "WG", "WG", "WG", "WG", "Bei Eltern",
    "Bei Eltern", "Bei Eltern", "Studentenwohnheim",
    "Studentenwohnheim", "Studentenwohnheim"
)
geschlecht <- c(
    "m", "m", "m", "m", "m",
    "m", "m", "w", "w", "w",
    "w", "w", "w", "w", "d"
)
miete <- c(
    123, 234, 345, 456, 321,
    1243, 9438, 10921, 8128, 123,
    435, 4, 516, 164, 623
)
entfernung <- c(
    25, 28, 25, 25, 25,
    98, 999, 66, 26, 25,
    95, 825, 75, 35, 28
)
note <- c(1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5)

studierende <- data.frame(wohnform, geschlecht, miete, entfernung, note)

subset(studierende, geschlecht == "w")
subset(studierende, miete <= 300)

# 1.6

rep(6, 8)