### import the dataset
fertilizer_data <- read.csv("Fertilizer_Soil_Data.csv")
fertilizer_data

### view the dataset
View(fertilizer_data)
### check the data type
str(fertilizer_data)

### biding the dataset with  environment
attach(fertilizer_data)
###check the null values
fertilizer_data[!complete.cases(fertilizer_data),]

### Preparing the data sets( we calles as data preprocessing)
install.packages('plyr')
library('plyr')
fertilizer_datas$Cr <- revalue(rank, c(Prof=3,AsstProf=1,AssocProf=2))
write.csv(Salaries,"Salaries_New.csv")