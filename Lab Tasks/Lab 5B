#activity 1 - leap year check
year <- as.integer(readline(prompt="Input year: "))

if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
print(paste(year, "is a leap year."))
} else {
print(paste(year, "is not a leap year."))
}

#activity 2 - cube of numbers
n <- as.integer(readline(prompt="Input an integer: "))

for (i in 1:n) {
cube <- i^3
cat(paste("Number is:", i, "and cube of the", i, "is:", cube, "\n"))
}

#activity 3 - armstrong number (n digits)
num <- as.integer(readline(prompt="Input an integer: "))

temp <- num
n <- nchar(as.character(num))
sum_val <- 0

while (temp > 0) {
digit <- temp %% 10
sum_val <- sum_val + (digit^n)
temp <- temp %/% 10
}

if (num == sum_val) {
print(paste(num, "is an Armstrong number."))
} else {
print(paste(num, "is not an Armstrong number."))
}
