# MechaCar Statistical Analysis

## Deliverable One
### 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?  
I first set the intended p-value to 0.05 and run all the variables against mpg as the dependent variable.

#### First Model
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechaCar_mpg)

Residuals:    
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:  
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***  
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***  
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .    
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069      
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***  
AWD              -3.411e+00  2.535e+00  -1.346   0.1852      

Because spoiler_angle has a P value of 0.30, remove it and rerun the model.

#### Second Model
lm(formula = mpg ~ vehicle_length + vehicle_weight + ground_clearance + 
    AWD, data = MechaCar_mpg)  

Residuals:  
     Min       1Q   Median       3Q      Max  
-19.1546  -5.6069   0.6985   6.1669  19.0554  

Coefficients:  
                   Estimate Std. Error t value Pr(>|t|)       
(Intercept)      -9.728e+01  1.448e+01  -6.717 2.68e-08 ***  
vehicle_length    6.233e+00  6.550e-01   9.516 2.40e-12 ***  
vehicle_weight    1.169e-03  6.857e-04   1.706    0.095 .    
ground_clearance  3.419e+00  5.276e-01   6.481 6.03e-08 ***  
AWD              -3.749e+00  2.515e+00  -1.490    0.143       

After spoiler_angle was removed, AWD became the least statistically significant. Remove AWD and rerun the model.

#### Third Model
lm(formula = mpg ~ vehicle_length + vehicle_weight + ground_clearance, 
    data = MechaCar_mpg)  

Residuals:  
     Min       1Q   Median       3Q      Max   
-21.1845  -6.0392   0.1843   7.0213  17.6710   

Coefficients:  
                   Estimate Std. Error t value Pr(>|t|)      
(Intercept)      -1.000e+02  1.455e+01  -6.874 1.41e-08 ***  
vehicle_length    6.196e+00  6.632e-01   9.343 3.37e-12 ***  
vehicle_weight    1.190e-03  6.946e-04   1.714   0.0933 .    
ground_clearance  3.522e+00  5.299e-01   6.647 3.09e-08 ***  

After AWD was removed, vehicle_weight became the least statistically significant. Remove vehicle_weight and rerun the model

#### Fourth Model
lm(formula = mpg ~ vehicle_length + ground_clearance, data = MechaCar_mpg)  

Residuals:  
    Min      1Q  Median      3Q     Max   
-17.493  -7.705   1.344   6.642  18.500   

Coefficients:  
                 Estimate Std. Error t value Pr(>|t|)      
(Intercept)      -91.5573    13.9649  -6.556 3.86e-08 ***  
vehicle_length     6.0811     0.6732   9.033 7.68e-12 ***  
ground_clearance   3.5669     0.5401   6.604 3.26e-08 ***  

At this point, all variables are statisically significant, indicating tht vehicle_length and ground_clearnace provided a non-random amount of variance to the mpg values in the dataset. So this will be my final model. 

### 2. Is the slope of the linear model considered to be zero? Why or why not?
As shown by the P value of the coefficients, the slop of the linear model is considered to be statisically significant given a 95% confidence level. Therefore the slope of the model is not zero.

### 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
As shown by the R-squared below, this model can predicate 67.4% of the dependent variable (mpg). Therefore, it is considered relatively effective. 

Residual standard error: 9.078 on 47 degrees of freedom  
Multiple R-squared:  0.674,	Adjusted R-squared:  0.6601   
F-statistic: 48.59 on 2 and 47 DF,  p-value: 3.637e-12  


## Deliverable Two
Summary Statistics on Suspension Coils, and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.The current manufacturing data meet this design specification for all manufacturing lots in total. 

However, the by lot analysis shows that Lot3 has a variance of 170.3 and does not meet this design specification.


