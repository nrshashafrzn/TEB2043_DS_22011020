#activity 1 - bmi calculator
weight <- as.numeric(readline(prompt = "Enter weight (kg): "))
height <- as.numeric(readline(prompt = "Enter height (m): "))
bmi <- weight / (height^2)
cat("Underweight:", bmi <= 18.4, "\n")
cat("Normal:", bmi >= 18.5 & bmi <= 24.9, "\n")
cat("Overweight:", bmi >= 25.0 & bmi <= 39.9, "\n")
cat("Obese:", bmi >= 40.0, "\n")

#activity 2 - case insensitive string comparison
str1<-readline(prompt="Enter string 1: ")
str2=readline(prompt="Enter string 2: ")
is_similar<-tolower(str1)==tolower(str2)
cat("This program compare 2 strings.\n")
cat("Both inputs are similar: ", is_similar)

#activity 3 - name and phone number formatting
name<-readline(prompt="Enter name: ")
phone<-readline(prompt="Enter phone number (e.g., 0123445678): ")
phoneformatted_name<-toupper(name)
part1<-substr(phone, 1, 3)
part2<-substr(phone, nchar(phone)-3, nchar(phone))
verification_msg<-paste("A verification code has been sent to:", part1, "-xxxxx", part2)
cat("Hi,",formatted_name, "\n")
cat(verification_msg)


