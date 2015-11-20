

# https://stats.stackexchange.com/questions/108007/correlations-with-categorical-variables
# Calculate Cramers V for ``Müdigkeit in den Beinen'' and ``Hatten Sie in den letzten 3 Monaten Rückenschmerzen?''
library(vcd)
#tab <- xtabs(~Age + Rueckenschmerz_3Monate, data = ship)
#print("Cramers V for ``Age'' and ``Hatten Sie in den letzten 3 Monaten Rückenschmerzen?''")
#summary(assocstats(tab))


tab <- xtabs(~Age + Rueckenschmerz_3Monate, data = filter(ship, Age > 57, Age < 75))
print("Cramers V for ``Age'' and ``Hatten Sie in den letzten 3 Monaten Rückenschmerzen?'' Age 58-74")
summary(assocstats(tab))

tab <- xtabs(~Schweregefuehl + Rueckenschmerz_3Monate, data = ship)
print("Cramers V for ``Müdigkeit in den Beinen'' and ``Hatten Sie in den letzten 3 Monaten Rückenschmerzen?''")
summary(assocstats(tab))

tab <- xtabs(~SEX + Rueckenschmerz_3Monate, data = ship)
print("Cramers V for ``Geschlecht'' and ``Hatten Sie in den letzten 3 Monaten Rückenschmerzen?''")
summary(assocstats(tab))

# ``Körperliche Schwerarbeit''and ``Hatten Sie in den letzten 3 Monaten Rückenschmerzen?''
tab <- xtabs(~Schwerarbeit + Rueckenschmerz_3Monate, data = ship)
print("``Körperliche Schwerarbeit''and ``Hatten Sie in den letzten 3 Monaten Rückenschmerzen?''")
summary(assocstats(tab))