# Final-Project (Predicting Salaray)

## Project Goal

Income is one of the most important aspect of our daily life. Our project tries to explore two questions of Canadian income. We will also evaluate selected variables to forecast what variables attribute to salary 
 

## Questions we want to answer
1. What variables can predict one's income.
2. What variables contribute to being a low-income status

## Data Source
Data source that we selected for our analysis is 2016 Canadian Census Data. We will be using 2016 Census Public use Microdata Files (PUMF), which contains 2.7% of total census data.

Original Dataset contains two files: 
pumf-98M0001-E-2016-individuals_F1.csv
pumf-98M0001-E-2016-individual_F1.pdf


## Group communication protocols
Team communication channel created on Slack for group discussions
Using Zoom for after class discussions.


## Getting started

We removed individuals below 20 years old and above 70 years old. The rational is that the said population is consider unlikely to produce stable income. From that, we randomly selected half of the total rows of dataset. We are then left with (128032) observations.

For Predicting income, we will use regression to predict amount of after-tax income.
for predicting low-income status, we will use machine learning to predict, whether the persone is in low-income status or not.


