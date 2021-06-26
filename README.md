# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
<img width="567" alt="lm(mpg ~" src="https://user-images.githubusercontent.com/79742633/123391752-2da83e00-d551-11eb-80cd-e70afd622c3f.png">

**_Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?_**

After using the lm() function we can see that vehicle_length and ground_clearance are significant by looking at the p-values. The p-value of vehicle_length is 2.60e-12 and the p-value of ground_clearance is 5.21e-08. This shows these two variables would provide a non-random amount of variance to the mpg values since the rest of the variables in this dataset’s p-values are close to zero.

**_Is the slope of the linear model considered to be zero? Why or why not?_**

The slope of the linear model is NOT considered to be zero because the p-value we got was 5.35e-11, which means it’s smaller than 0.05. Since the p-value is less than 0.05, that means the probability of it meeting the null hypothesis is false so it would reject our null hypothesis.

**_Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?_**

The linear model does predict the mpg of the MechaCar prototype effectively. It predicts the protypes effectively because we can see that it has a multiple R-squared value of 0.7149, which is 71% so this can show it can be used to predict the mpg effectively.


## Summary Statistics on Suspension Coils

**total_summary:**

<img width="321" alt="total_summary" src="https://user-images.githubusercontent.com/79742633/123391798-3862d300-d551-11eb-9c4e-8d9311f19ddc.png">

**lot_summary:**

<img width="459" alt="lot_summary" src="https://user-images.githubusercontent.com/79742633/123391750-2da83e00-d551-11eb-99b2-22c4af2ec087.png">

**_The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?_**

Looking at the tables above and at the total_summary table, we can see that the variance is 62.29356 for all suspension coils combined. When looking at the lot_summary table, lot 1 and lot 2 would meet the current design specification. Lot 1 has a variance of 0.9795918 and lot 2 has a variance of 7.4693878, which means these two lots would meet the design specification because the variance does not exceed 100 pounds per square inch. Lot 3 has a variance of 170.2861224 so it would not meet the design specification since it exceeds 100 pounds.

## T-Tests on Suspension Coils

### t.test() to determine if PSI is statistically different from the population mean of 1,500 pounds/square inch

<img width="458" alt="t test()" src="https://user-images.githubusercontent.com/79742633/123391796-3862d300-d551-11eb-9a3f-b82dbffc314f.png">

### Lot 1

<img width="575" alt="lot_1" src="https://user-images.githubusercontent.com/79742633/123391754-2e40d480-d551-11eb-858d-2b3de488714e.png">

### Lot 2

<img width="584" alt="lot_2" src="https://user-images.githubusercontent.com/79742633/123391744-2d0fa780-d551-11eb-8f42-17e8362d3c4b.png">

### Lot 3

<img width="572" alt="lot_3" src="https://user-images.githubusercontent.com/79742633/123391747-2d0fa780-d551-11eb-95b6-a6b512ecbb9c.png">

**_Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary._**

- Lot 1 has a p-value of 1, which means it’s above our p-value significance level of 0.05. Since the p-value is above 0.05, that means we can’t reject the null hypothesis about having a significant difference between the sample and the population mean of 1500.

- Lot 2 has a p-value of 0.6072, which means it’s above our p-value significance level of 0.05. Since the p-value is above 0.05, that means we can’t reject the null hypothesis about having a significant difference between the sample and the population mean of 1500.

- Lot 3 has a p-value of 0.04168, which means it’s below the p-value significance level of 0.05. Since the p-value for lot 3 is below 0.05, that means we would reject the null hypothesis and say that there is a statistically significant difference between the sample and population mean.

## Study Design: MechaCar vs Competition
**_What metric or metrics are you going to test?_**

I am going to test the maintenance cost metric. This metric can be tested because we have some data for MechaCar, so we would just need the same data for the competitor’s car.

**_What is the null hypothesis or alternative hypothesis?_**

The null hypothesis is that the maintenance cost can be affected depending on the qualities of the car such as the original cost of the whole car, while the alternative hypothesis can be that the maintenance cost is not affected by the qualities of the car.

**_What statistical test would you use to test the hypothesis? And why?_**

I would use a t.test to test this hypothesis because it can help compare data the of the different cars, which is similar to the t.test we did in deliverable 3. A t.test could help us to compare each individual car to the overall average numbers. I would also make a line plot using ggplot2 to help visualize the data better and to show the relationship between variables better.

**_What data is needed to run the statistical test?_**

We would need data from the competitor’s cars and also data to know what they usually use the car for. It would be helpful to know the data about the competitor’s car because then we can have a specific car to compare it to. It would also be good to have data to know what they usually use the car for because it can be like a stress test. Some car types can’t handle too many difficult activities compared to cars that are meant for more difficult terrain so this would be important to know too.
