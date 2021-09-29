# Final-Project: Salary Prediction
## Introduction

### Project Goal

Income is one of the most important aspect of our daily life. Our project tries to explore two questions of Canadian income. That's why we will evaluate selected variables to forecast what variables attribute to salary/income. We used the mutivalrate regression on 2016 Canadian census data to determine how differnet variables corrleated with one's wage.

### Questions we want to answer
 - What variables can predict one's income?

### Data Source
The data source that was selected for our analysis is the 2016 Canadian Census Data. We will be using 2016 Census Public use Microdata Files (PUMF) which contains 2.7% of total census data.
Original Dataset contains two files: 
 - data.csv which contains the real data
 - Manual.pdf which contains deep explanations about the variables

### Group communication protocols
 - Team communication channel on Slack for group discussions.
 - Live meetings on Zoom for after class discussions.

### Variables Selected
#### Age
We included Age variable beause an individual's age is known to affect one's wage. If someone is young, they might be precieved to be without experience by employers.
#### Years of Education (YrEd, YrEd2)
We included Years of Education variables in our regression. We believe that years education would increase someone's productivity and therefore incrase someone's wage. However, we also believe the just having long years of education does not nesseasry increase one's wage (e.g., one with PhD with might lower wage than one with Master's degree.) Therefore, we used Mincer earning function to include a squared term of YrEd. This would give us wage = a0 + a1YrEd + a2YrEd^2, and taking derivative with respect to YrEd and make it equal to zero would tell us what is the optimal years of education.
#### STEM
We included a binary variable that indicated whether one's higher education is considred to be in the field of STEM (Science, technology, engineering, and mathematics). It is widely believed that people with STEM degree recives a higher wage compare their counterparts without STEM degree. If someone without a higher education, we would consider them without STEM (i.e., STEM = 0)
#### Minimum Wage of residence: (PrMinWage_V)
We believe that the provincial minium wage would effect one's wage because higher minimum wage might push up wage for overall population by serval economic mechanism; thus, we included a variable indicating the min wage of the provence of one's residence.
#### Sex
We included a Sex variable indicating the reported gender/sex of the observation. It is observed that there is a wage discrptance between male and female.
#### Married
We included a current marrial status in our independent variables becuase it has been observed that marrital status can affect someone's wage.
#### Visible minority (VinMin)
We included a variable that is a binary asking repondents wheather they identified as a visiable minority (i.e. VinMin = 1 if yes). It was been widly documented that being a visible minority would decrease one's wage
#### Part Time
We included a binary variable that indicates whetehr one is having a part-time job or not. It is believed that a part-time worker earns less than that of full-time workers.


## Machine Learning
Since the original dataset was too large to upload on jupyter notebook and clean, We filtered it and removed individuals below 20 years old and above 70 years old. The rational is that the said population is considered unlikely to produce stable income. From that, we randomly selected half of the total rows of dataset. Now We are left with 128,032 observations.
 - For Predicting income, we will use multivariate regression, take wage variable was are dependent variable, and all other variables as independent variables.


## Result
We found that age, STEM, PrMinWage, Being a Male, and Being married is assocated with a higher education. We also found that being a part-time workers, being a female, and being identify as a visible minority is assoicated with negative effect on their wage. (See Table 1)

The results does not suprise us as we, as a society, has long know how gender, race, and marrital status can affect one's economic condition, and our result further supports the these knowledge.
