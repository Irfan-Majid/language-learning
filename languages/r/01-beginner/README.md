# Beginner Guide - R

**Time:** 2 weeks | **Use case:** Statistics, data science

## Step 1: Install
- https://cran.r-project.org/ or RStudio Desktop

## Step 2: Run example
```bash
Rscript examples/hello.R
```

## Step 3: Core concepts
```r
x <- c(1, 2, 3, 4, 5)
mean(x)
df <- data.frame(name = c("Alice", "Bob"), score = c(90, 85))
summary(df)
```

## Practice
1. Calculate mean, median, sd of a numeric vector
2. Read CSV with `read.csv()` and plot histogram
3. Simple linear model `lm(y ~ x, data=df)`

-> [02-fundamentals/](../02-fundamentals/)
