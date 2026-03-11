#Multiplle Linear Regression
#1
#built in data
data(mtcars)
head(mtcars)
str(mtcars)
#model the MLR
model <- lm(mpg ~ hp + wt + cyl, data = mtcars)
#invesitigate the properties of the model
summary(model)

#split data into train and test sets
data.train<- mtcars[1:22,]
data.test<- mtcars[23:32,]
#modelling
relation <-lm(mpg ~ hp +wt+cyl, data = data.train)
summary(relation)
# Prediction
a <- data.frame(hp = data.test$hp, wt = data.test$wt, cyl = data.test$cyl)
result <- predict(relation, a)
print(round(result, digits = 2))

#MAPE
mape <- mean(abs((data.test$mpg - result)/ data.test$mpg )*100)
paste("The error - MAPE is: ", round(mape,digit=2),"%")

#2
# Creating the dataset from the image
df <- data.frame(
  Ozone = c(11, 11, 11, 12, 12, 13, 13, 13, 13, 14),
  Solar.R = c(290, 44, 320, 149, 120, 137, 112, 27, 238, 274),
  Wind = c(9.2, 9.7, 16.6, 12.6, 11.5, 10.3, 11.5, 10.3, 12.6, 10.9),
  Temp = c(66, 62, 73, 74, 73, 76, 71, 76, 64, 68)
)
set.seed(123) # For reproducibility
sample_size <- floor(0.7 * nrow(df))
train_indices <- sample(seq_len(nrow(df)), size = sample_size)
train_data <- df[train_indices, ]
test_data <- df[-train_indices, ]
# Training the model
model <- lm(Ozone ~ Solar.R + Wind + Temp, data = train_data)
# Summary of the model
summary(model)
# Making predictions on the 30% test data
predictions <- predict(model, test_data)
# Comparing Actual vs Predicted
comparison <- data.frame(Actual = test_data$Ozone, Predicted = predictions)
print(comparison)
print(comparison)
