Laptop Market Analysis
================
Nur Shasha
2026-02-24

## Data Cleaning and Factor Construction

We use the Laptop Data from Kaggle. First, we remove empty rows and
convert the `TypeName` column into **Factors** to categorize laptops
correctly.

``` r
# Load and clean data
laptops <- read.csv("laptopData.csv")
laptops <- na.omit(laptops)

# Create Factor for Laptop Types
laptops$TypeName <- factor(laptops$TypeName)

# Display table of counts
table(laptops$TypeName)
```

    ## 
    ## 2 in 1 Convertible             Gaming            Netbook           Notebook 
    ##                116                203                 24                710 
    ##          Ultrabook        Workstation 
    ##                191                 29

## Visualization and Selection Logic (Lab 5b)

In this section, we visualize the price distribution and use a selection
statement to provide market insights.

``` r
# This code MUST be inside these three backticks to run!
hist(laptops$Price, 
     main="Laptop Price Distribution", 
     xlab="Price (INR)", 
     col="lightblue", 
     border="white")
```

![](Laptop-Analysis-EDA_files/figure-gfm/analysis-1.png)<!-- -->

``` r
# Selection Logic (Lab 5b)
avg_price <- mean(laptops$Price)

if (avg_price > 60000) {
  print(paste("Insight: Market average is premium:", round(avg_price, 2)))
} else {
  print(paste("Insight: Market average is budget-friendly:", round(avg_price, 2)))
}
```

    ## [1] "Insight: Market average is budget-friendly: 59955.81"
