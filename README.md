# Salary Prediction

## Introduction

### Project Goal

Income is one of the most important aspect of our daily life. Our project tries to explore two questions of Canadian income. That's why we will evaluate selected variables to forecast what variables attribute to salary/income.

### Questions we want to answer
 - What variables can predict one's income?
 - What variables contribute to being a low-income status?

### Data Source
The data source that was selected for our analysis is the 2016 Canadian Census Data. We will be using 2016 Census Public use Microdata Files (PUMF) which contains 2.7% of total census data.
Original Dataset contains two files: 
 - data.csv which contains the real data
 - Manual.pdf which contains deep explanations about the variables

### Group communication protocols
 - Team communication channel on Slack for group discussions.
 - Live meetings on Zoom for after class discussions.


## Machine Learning
Since the original dataset was too large to upload on jupyter notebook and clean, We filtered it and removed individuals below 20 years old and above 70 years old. The rational is that the said population is considered unlikely to produce stable income. From that, we randomly selected half of the total rows of dataset. Now We are left with 128,032 observations.
 - For Predicting income, we will use **logical regression analysis** to predict amount of after-tax income.
 - For predicting low-income status, we will use the **Random Forest** machine learning to predict whether the person is in low-income status or not. The reason behind choosing the Random Forest is that this model is able to train on the large dataset and predict values in seconds. In addition, the random forest model is able to achieve comparable predictive accuracy on large tabular data with less code and faster performance.

This machine learning will help us to train and test all the input variables in the dataset in order to predict the salary/income target variable.

## Database
In order to achieve our goal, the dataset provided above is enough. That's why the dataset will be imported to the machine learning process on python to predict the results and exported to the created table on our database using the following code example:

-- Creating a table for Salary Prediction dataset
 - CREATE TABLE Salary_Prediction (
 -   Column1 VARCHAR(4) NOT NULL,
 -   Column2 VARCHAR(40) NOT NULL,
 -   PRIMARY KEY (Column1),
 -   UNIQUE (Column2)
);

