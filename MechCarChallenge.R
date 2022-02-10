# Linear Regression to Predict MPG

# Use library() to load the dplyr pkg
library(dplyr)

# Import and read MechaCar_mpg.csv as a dataframe
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform mulitple linear regression using all columns in the dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df)

# Use summary() to determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df))

# Create Visualizations for the Trip Analysis

# Import and read Suspension_Coil.csv as a dataframe
susp_coil_df <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

# Create a dataframe using summarize() to get the mean, median, variance and standard deviation from the PSI column
total_summary <- susp_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = (sd(PSI))**2, SD = sd(PSI))

# Create a dataframe using group_by() and Summarize() to group each mfg lot by the mean, median, variance and standard deviation of the PSI column
lot_summary <- susp_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = (sd(PSI))**2, SD = sd(PSI))

# T-Tests on Suspension Coils

# Use t.test() to determine if the PSI across all mfg lots is statistically different from the pop. mean of 1500 PSI
t.test(susp_coil_df$PSI, mu=1500)

# Write 3 RScripts using t.test() and its subset() argument to determine if the PSI for each mfg lot is statistically different from the pop. mean of 1500 PSI
t.test(formula = PSI ~ 1, data = susp_coil_df, subset = Manufacturing_Lot == "Lot1", mu=1500)
t.test(formula = PSI ~ 1, data = susp_coil_df, subset = Manufacturing_Lot == "Lot2", mu=1500)
t.test(formula = PSI ~ 1, data = susp_coil_df, subset = Manufacturing_Lot == "Lot3", mu=1500)