# Final-Project: Salary Prediction
## Introduction

### Project Goal

Income is one of the most important aspects of our daily life. Our project tries to explore two questions of Canadian income. That's why we will evaluate selected variables to forecast what variables attribute to salary/income. We used the multivariate regression on 2016 Canadian census data to determine how different variables correlated with one's wage.

### Questions we want to answer
 - What variables can predict one's income?

### Data Source
The data source that was selected for our analysis is the 2016 Canadian Census Data. We will be using 2016 Census Public use Microdata Files (PUMF), which contains 2.7% of total census data.
Original Dataset contains two files: 
 - data.csv which contains the real data
 - Manual.pdf which contains deep explanations about the variables

### Group communication protocols
 - Team communication channel on Slack for group discussions.
 - Live meetings on Zoom for after-class discussions.

### Variables Selected
#### Age
We included Age variable because an individual's age is known to affect one's wage. If someone is young, they might be perceived to be without experience by employers.
#### Years of Education (YrEd, YrEd2)
We included Years of Education variables in our regression. We believe that years of education would increase someone's productivity and therefore increase someone's wage. However, we also believe the just having long years of education does not necessarily increase one's wage (e.g., one with Ph.D. might lower wage than one with a Master's degree.) Therefore, we used Mincer earning function to include a squared term of YrEd. This would give us wage = a0 + a1YrEd + a2YrEd^2, and taking derivative with respect to YrEd and make it equal to zero would tell us what the optimal years of education is.
#### STEM
We included a binary variable that indicated whether one's higher education is considered to be in the field of STEM (Science, technology, engineering, and mathematics). It is widely believed that people with STEM degrees receive a higher wage compared to their counterparts without a STEM degree. If someone without higher education, we would consider them without STEM (i.e., STEM = 0)
#### Minimum Wage of residence: (PrMinWage_V)
We believe that the provincial minimum wage would affect one's wage because a higher minimum wage might push up wage for the overall population by serval economic mechanism; thus, we included a variable indicating the min wage of the province of one's residence.
#### Sex
We included a Sex variable indicating the reported gender/sex of the observation. It is observed that there is a wage discrepancy between males and females.
#### Married
We included a current marital status in our independent variables because it has been observed that marital status can affect someone's wage.
#### Visible minority (VinMin)
We included a variable that is a binary asking respondents whether they identified as a visible minority (i.e. VinMin = 1 if yes). It has been widely documented that being a visible minority would decrease one's wage
#### Part-Time
We included a binary variable that indicates whether one has a part-time job or not. It is believed that a part-time worker earns less than that of full-time workers.


## Machine Learning
Since the original dataset was too large to upload on jupyter notebook and clean, We filtered it and removed individuals below 20 years old and above 70 years old. The rationale is that the said population is considered unlikely to produce stable income. From that, we randomly selected half of the total rows of dataset. Now We are left with 128,032 observations.
 - For Predicting income, we will use multivariate regression, take wage variable as are dependent variable, and all other variables as independent variables.


## Result
We found that age, STEM, PrMinWage, Being a Male, and Being married is associated with higher education. We also found that being part-time workers, being a female, and being identified as a visible minority is associated with a negative effect on their wages. (See Table 1)

![Screen Shot 2021-09-29 at 3 14 12 PM](https://user-images.githubusercontent.com/80184581/135357291-5515aab5-216b-4103-891f-3a3ddb9cacaf.png)

The results do not surprise us as we, as a society, have long been known how gender, race, and marital status can affect one's economic condition, and our result further supports this knowledge.
### Tableau Dashboard
![image](https://user-images.githubusercontent.com/80184581/135359990-e0d7d978-3b74-4642-a04e-e4caeff58056.png)

https://public.tableau.com/app/profile/ashwani.sharma3952/viz/WagesAnalysis_16329557669810/Dashboard12?publish=yes

