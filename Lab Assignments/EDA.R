# 1. Load the new data
laptops <- read.csv("laptopData.csv")

# 2. Data Cleaning (Lab 5b)
# Remove the 30 rows that are completely empty
laptops <- na.omit(laptops)

# Clean the 'Ram' column (remove "GB" and make it numeric)
laptops$Ram_Numeric <- as.numeric(gsub("GB", "", laptops$Ram))

# 3. Factor Construction (Lab 4a)
# Convert TypeName into a Factor
laptops$TypeName <- factor(laptops$TypeName)

# 4. Selection Logic (Lab 5b)
avg_price <- mean(laptops$Price, na.rm = TRUE)
if (avg_price > 50000) {
  print("The average laptop price is quite high.")
} else {
  print("The average laptop price is affordable.")
}

# 5. Save the cleaned version
write.csv(laptops, "laptops_cleaned.csv", row.names = FALSE)
