### import the dataset
fertilizer_data <- read.csv("Fertilizer_Soil_Data.csv")
fertilizer_data

### view the dataset
View(fertilizer_data)
### check the data type
str(fertilizer_data)

### binding the dataset with  environment
attach(fertilizer_data)
### view the dataser
View(fertilizer_data)
###check the null values
fertilizer_data[!complete.cases(fertilizer_data),]

### Preparing the data sets( we calles as data preprocessing)
install.packages('plyr')
library('plyr')
fertilizer_data$Crop_Type <- revalue(Crop_Type, c( Wheat=7,Rice=6,Corn=5,Soybean=4, Barley=3, Oats=2,Potato=1))
write.csv(fertilizer_data,"fertilizer_data_New.csv")

### detach the fertilizer_data dataset
detach(fertilizer_data)
### import the fertilizer_data_New dataset
fertilizer_data_New <- read.csv("fertilizer_data_New.csv")
fertilizer_data_New
### attach the fertilizer_data_New dataset
attach(fertilizer_data_New)
### View the data of new dataset
View(fertilizer_data_New)
