
# Deliverable 1

library('dplyr')
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(MechaCar_mpg)
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_mpg))

# Because spoiler_angel has a P value of 0.30, remove it and rerun the model.
lm(mpg ~ vehicle_length+vehicle_weight+ground_clearance+AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length+vehicle_weight+ground_clearance+AWD,data=MechaCar_mpg))

#Remove AWD and rerun the model
lm(mpg ~ vehicle_length+vehicle_weight+ground_clearance,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length+vehicle_weight+ground_clearance,data=MechaCar_mpg))

#Remove vehicle_weight and rerun the model
lm(mpg ~ vehicle_length+ground_clearance,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length+ground_clearance,data=MechaCar_mpg))

# Deliverable 2

Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
head(Suspension_Coil)

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns


# Deliverable 3

t.test(Suspension_Coil$PSI,mu=1500) #compare sample versus population means

Lot_1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1") #filter by Lot 1
t.test(Lot_1$PSI,mu=1500) #compare sample Lot 1 versus population means

subset(Suspension_Coil,Manufacturing_Lot=="Lot3")

Lot_2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2") #filter by Lot 2
t.test(Lot_2$PSI,mu=1500) #compare sample Lot 2 versus population means

Lot_3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3") #filter by Lot 3
t.test(Lot_3$PSI,mu=1500) #compare sample Lot 3 versus population means

