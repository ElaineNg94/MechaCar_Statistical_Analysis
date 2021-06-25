# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
<img width="567" alt="lm(mpg ~" src="https://user-images.githubusercontent.com/79742633/123391752-2da83e00-d551-11eb-80cd-e70afd622c3f.png">

**_Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?_**

After using the lm() function which was used to find the linear regression…

**_Is the slope of the linear model considered to be zero? Why or why not?_**

The slope of the linear model is NOT considered to be zero because the p-value we got was 5.35e-11, which means it’s smaller than 0.05. Since the p-value is less than 0.05, that means the probability of it meeting the null hypothesis is false so it would reject our null hypothesis.

**_Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?_**

The linear model DOES/DOES NOT predict the mpg of the MechaCar prototype effectively. It does/doesn’t predict the protypes effectively because…


## Summary Statistics on Suspension Coils
<img width="459" alt="lot_summary" src="https://user-images.githubusercontent.com/79742633/123391750-2da83e00-d551-11eb-99b2-22c4af2ec087.png">

When looking at the lot_summary table shown above, lot 1 and lot 2 would meet the current design specification. Lot 1 has a variance of 0.9795918 and lot 2 has a variance of 7.4693878, which means these two lots would meet the design specification because the variance does not exceed 100 pounds per square inch. Lot 3 has a variance of 170.2861224 so it would not meet the design specification since it exceeds 100 pounds. The "total_summary" table is shown below.

**total_summary:**

<img width="321" alt="total_summary" src="https://user-images.githubusercontent.com/79742633/123391798-3862d300-d551-11eb-9c4e-8d9311f19ddc.png">

## T-Tests on Suspension Coils
### t.test() to determine if the PSI for each manufacturing lot

<img width="458" alt="t test()" src="https://user-images.githubusercontent.com/79742633/123391796-3862d300-d551-11eb-9a3f-b82dbffc314f.png">

### Lot 1

<img width="575" alt="lot_1" src="https://user-images.githubusercontent.com/79742633/123391754-2e40d480-d551-11eb-858d-2b3de488714e.png">

### Lot 2

<img width="584" alt="lot_2" src="https://user-images.githubusercontent.com/79742633/123391744-2d0fa780-d551-11eb-8f42-17e8362d3c4b.png">

### Lot 3

<img width="572" alt="lot_3" src="https://user-images.githubusercontent.com/79742633/123391747-2d0fa780-d551-11eb-95b6-a6b512ecbb9c.png">

## Study Design: MechaCar vs Competition
**_What metric or metrics are you going to test?_**

I am going to test the maintenance cost metric. This metric can be tested because we have some data for MechaCar and would just need the same data for the competitor’s car.

**_What is the null hypothesis or alternative hypothesis?_**

The null hypothesis is that the maintenance cost can be affected depending on the qualities of the car such as the original cost of the whole car, while the alternative hypothesis can be that the maintenance cost is not affected by the qualities of the car.

**_What statistical test would you use to test the hypothesis? And why?_**

I would use a t.test to test this hypothesis because it can help me compare data the of the different cars, similar to what we did in this analysis in deliverable 3 with the manufacturing_lot and lot_summary tables…

**_What data is needed to run the statistical test?_**

We would need data from the competitor’s cars…
