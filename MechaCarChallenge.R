#Deliverable 1
#load dplyr using library()
library('dplyr')
#install.packages('dplyr')

#Import and read in the MechaCar_mpg.csv file as a dataframe. (15.2.3)
MechaCar <- read.csv(file = 'MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)

#Perform linear regression using the lm() function.(15.7.3)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.(15.7.3)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))

#Deliverable 2
#import and read Suspension_Coil.csv file
SusCoil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.(15.2.5)
total_summary <- SusCoil %>% summarize("Mean"=mean(PSI),"Median"=median(PSI), "Variance"=var(PSI), "SD"=sd(PSI))

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.(15.2.5)
lot_summary <- SusCoil %>%group_by(Manufacturing_Lot)%>% summarize("Mean"=mean(PSI),"Median"=median(PSI), "Variance"=var(PSI), "SD"=sd(PSI))

#Deliverable 3
#Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(SusCoil$PSI,mu=1500)

#Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.(15.3.4)
t.test(subset(SusCoil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(SusCoil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(SusCoil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)