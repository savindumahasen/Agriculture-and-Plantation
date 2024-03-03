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
fertilizer_datas$Crop_Yield <- revalue(Crop_Yield, c(Wheat=7,Rice=6,Corn=5,Soybean=4, Barley=3, Oats=2,Potato=1))
write.csv(fertilizer_data,"fertilizer_data_New.csv")
