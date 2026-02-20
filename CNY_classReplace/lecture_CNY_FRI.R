names = c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
df = data.frame(names,gender,height,weight,age)
View(df)

df[1] 
df[1,] 
df[1:2]
df[1:2]

df[c(1,3)]
df[c(1,3)] 
df["gender"]
df$gender

df[df$names== "Mike"]
df[df$age>35,]
df[df$height>170 & df$weight>80,]

df[df$gender == "Male"]
df[df$height>170 & df$age<40,]

names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
df =data.frame(names,gender,height,weight,age)
print("Before Adding:\n")
print(df)
newdf = rbind(df, data.frame(names = "Suuria",
                             gender = "Female",
                             height = 156,
                             weight = 56,
                             age = 23 ))
#print("After Added rows:\n")
print(newdf)


print("Before Adding:\n")
print(df)
newDf = rbind(df, data.frame(names = c("Suuria","Malik"),
                             gender = c("Female","Male"),
                             height = c(156,169),
                             weight = c(56,81),
                             age = c(23, 28)))
print("After Added rows:\n")
print(newDf)

#datamerge
gender = c("Female", "Male", "Male","Female","Male")
height = c(160, 175, 173,156,169)
weight = c(49, 89, 77,56,81)
age = c(35, 36, 41,23, 28)
names =c("Carrol","Mike","John","Suuria","Malik")

df1 = data.frame(names,gender,height,weight,age)
states = c("Selangor","Perak","Melaka")
names = c("Carrol","John","Malik")
df2 = data.frame(names, states)

dfMerge = merge(df1, df2, by = "names", all= TRUE)
print(dfMerge)

#removing rows
newDf2 = newDf[-2,]
print(newDF2)

#modifyign dataframe
newDf3 = newDf
newDf3[1,"age"] <- 30
newDf3[4, "height"] <- 152
print(newDf3)







