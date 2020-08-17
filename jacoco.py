import os
import csv

linesCov = 0
linesMis = 0
with open('./target/site/jacoco/jacoco.csv', newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        linesCov += int(row["LINE_COVERED"])
        linesMis += int(row["LINE_MISSED"])
totalLines = linesCov + linesMis
print("Lines covered: " + str(linesCov))
print("Total lines: " + str(totalLines))
print("Coverage: " + str(linesCov/totalLines * 100)[:5] + "%")
