
#creating a vector of integers having NAs.
a<-c(1:5, rep(NA,3),6:10)
a
#performing sum on the vector
sum(a)
#selecting only integer values
b<-a[!is.na(a)]
b
#performing sum on the new vector
sum(b)

#creating a vector of integers having NAs.
a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
a
#assigning 0 to NAs
a[is.na(a)]<-m <- mean(a, na.rm = TRUE)
a

#removing bad value
library(readr)

df_raw <- read.csv("file1.csv")
df_cleaned <- df_raw
df_logrm <- data.frame(TagsValue=character(), Definition=character(),
                       Value=character())
rows_to_remove <- c()
for (i in 1:nrow(df_raw))
{
  if (df_raw[i, 2] == "Bad value" && df_raw[i, 3] == "Garbage")
  {
    rows_to_remove <- c(rows_to_remove, i)
    df_logrm <- rbind(df_logrm, c(df_raw[i, 1], df_raw[i, 2],df_raw[i, 3]))
  }
}
df_cleaned <- df_cleaned[-rows_to_remove, ]
View(df_cleaned)
View (df_logrm)

data normalization
data(iris)
head(iris)
str(iris)
iris$Sepal.Length_norm <- (iris$Sepal.Length -
                             min(iris$Sepal.Length)) /
  (max(iris$Sepal.Length) - min(iris$Sepal.Length))
head(iris)

#data standardization
iris$Sepal.Length
mean_value <- mean(iris$Sepal.Length)
mean_value
sd_value <- sd(iris$Sepal.Length)
sd_value
z_manual <- (iris$Sepal.Length - mean_value) / sd_value
z_manual
iris$Sepal.Length_z_manual <- (iris$Sepal.Length - mean_value) / sd_value
head(iris)
iris$Sepal.Length_z <- scale(iris$Sepal.Length)
head(iris)

#convert categorical to numerical
data(iris)
head(iris)
class(iris$Species)
levels(iris$Species)
iris$Species_numeric <- as.numeric(iris$Species)
head(iris)