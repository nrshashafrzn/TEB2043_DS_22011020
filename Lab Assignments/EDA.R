# View the first 6 rows
head(weatherdata)
str(weatherdata)
weatherdata[weatherdata == -999] <- NA
weatherdata[weatherdata == 999] <- NA
colSums(is.na(weatherdata))
weatherdata$PrecipType <- factor(weatherdata$RSKF,level= c(0, 1, 6, 7, 8, 9),labels = c("None", "Rain", "Rain", "Snow", "Rain/Snow", "Missing"))
table(weatherdata$PrecipType)
avg_temp <- mean(weatherdata$TMK, na.rm = TRUE)
cat("The average temperature in Munich (1954-2022) is:", avg_temp, "°C")
if (avg_temp > 10) {
print("Munich is warmer than 10 degrees on average.")
} else {
print("Munich is quite cold on average.")
}
hist(weatherdata$TMK,
main="Temperature Distribution in Munich",
xlab="Daily Mean Temp (°C)",
col="orange",
border="white")
