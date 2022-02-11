# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![LR for MPG](https://github.com/mshideler/MechaCar_Statistical_Analysis/blob/main/Resources/Multi_lrm_summary.PNG)

Above is the summary output for the linear regression performed using the MechaCar's vehicle length, vehicle weight, spoiler angle, ground clearance and AWD to see which variables would predict the MechaCar's MPG.  It appears vehicle length and ground clearance provided a non-random amount of varience to the mpg values in the dataset due to their p-values (both practically 0) being less than the significant value of 0.05.  Overall, the slope of the linear model is considered non-zero based on the values for a couple of variables in the above summary.  First, the multiple R-squared and Adjusted R-squared are high, which implies the regression model is a good fit.  Second, the p-value is practically 0, which is less than the significance level of 0.05, implying evidence against a null hypothesis.  This being said, there are only two significant variables (vehicle length and ground clearance), so there may be evidence of overfitting, making the linear model an ineffective predictor for the MechaCar's MPG.

## Summary Statistics on Suspension Coils

### Summary Statistics across All Lots

![total_summary](https://github.com/mshideler/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.PNG)

### Summary Statistics per Lot

![lot_summary](https://github.com/mshideler/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.PNG)

Above are summary statistics based on the weights of suspension coils produced at three manufacturing lots.  The top table shows the statistics across all three lots.  The bottom table shows the statistics for each lot.  While the mean and median values are at or close to the population mean of 1500 PSI for suspension coils, the variance per lot tells a different story.  By design, the MechaCar's suspension coils should exceed a variance of 100 PSI.  The variance values for Lots 1 and 2 are both under 100 PSI; however, Lot 3's variance exceeds the design specification, indicating manufacturing isues at this lot that need to be addressed.

## T-Tests on Suspension Coils

### T-Test Results across All Lots

![t-test all lots](https://github.com/mshideler/MechaCar_Statistical_Analysis/blob/main/Resources/all_lots_t_test.PNG)

### T-Test Results per Lot

![t-test per lot](https://github.com/mshideler/MechaCar_Statistical_Analysis/blob/main/Resources/lots_1_2_3_t_test.PNG)

Here, we have the t-test results for determining if the PSI for suspension coils across all manufacturing lots is statistically different from the population mean of 1500 PSI or if there is a statistical difference exists at the manufacturing lot level.  The top test results show a p-value of 0.06028, which is greater than a signficance level of 0.05.  This indicates no statistical difference between the mean PSI across all lots and the population mean.  The lower test results show p-values of 1, 0.6072 and .04168 for manufacturing lots 1, 2 and 3, respectively.  Because the p-values for lots 1 and 2 are higher than the significance value of 0.05, there is no statistical difference between their means and the population mean.  Lot 3's p-value of 0.04168 is lower than the significance level of 0.05, therefore indicating a statistical difference between Lot 3's mean and population mean.  This supports the claim made in the prior section with summary statistics that there appears to be manufacturing issues at Lot 3.

## Study Design: MechaCar vs. Competition

Cost
Safety Rating
Technology
Fuel Efficiency
Comfort Rating
Number of Cylinders

null H:  the MechaCar's performance meets or exceeds the performance of other manufacturer's vehicles
alt H:  the MechaCar's performance is lower than the performance of other manufacturer's vehicles


In order to compare the MechaCar's performance against the performance of other manufacturer's vehicles, there are many factors to consider.  For this particular study, we'll use the following metrics for all vehicles:

- Cost
- Safety Rating
- Technology
- Fuel Efficiency
- Comfort Rating
- Number of Cylinders

The ratings for each of these metrics will need to be obtained for each vehicle likely through customer surveys.  The higher the rating, the more favorable the metric is.  We'll determine the mean of each metric/performance rating for both MechaCars and non-MechaCars and then test for statistical differences between each.  Therefore, we'll use the Two-Sample T-Test to test for these differences.  For example, we'll determine the mean rating for cost for non-MechaCars as well as MechaCars.  The null hypothesis here is there is no statistical difference between the mean cost for MechaCars and the mean cost for non-MechaCars.  This test needs to be repeated for each metric.  If there are no statistical differences between any of the metrics, there's no statistical difference between the MechaCar's performance and non-MechaCars' performance.