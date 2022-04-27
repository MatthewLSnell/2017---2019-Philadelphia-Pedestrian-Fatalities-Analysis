![Dashboard on Tableau Public](https://github.com/MatthewLSnell/Philadelphia-Pedestrian-Fatalities-Analysis-in-SQL-Tableau/blob/main/Images/Case%20Study%20Analysis%20of%20Philadelphia's%20Motor%20Vehicle%20Collisions%20Cover.png)

# Background

I utilized Python & SQL to analyze motor vehicle collisions in Philadelphia, Pennsylvania from January 2015 through December 2020 and created a Tableau dashboard to visualize my findings. 

# Data Source

The dataset is comprised of 67,333 reportable crash incidents and may be accessed [here](https://pennshare.maps.arcgis.com/apps/webappviewer/index.html?id=8fdbf046e36e41649bbfd9d7dd7c7e7e).

# Case Study Approach
[Case Study Approach](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Case%20Study%20Approach.png)

# Tableau Dashboard

[Philadelphia Motor Vehicle Collisions Dashboard](https://public.tableau.com/app/profile/matthew.snell1329/viz/PhiladelphiaMotorVehicleCollisionsDashboard/PHLMVADashboard-Summary)

![Tableau Dashboard Cover](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Philadelphia%20Motor%20Vehicle%20Collisions%20Dashboard%20Tableau%20Cover.png)

![Tableau Time Series](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Philadelphia%20Motor%20Vehicle%20Collisions%20Dashboard%20Tableau%20Time%20Seriespng.png)

![Tableau Collision Prone Areas](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Philadelphia%20Motor%20Vehicle%20Collisions%20Dashboard%20Tableau%20Collisions%20Prone%20Areas.png)

![Tableau Fatality Analysis](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Philadelphia%20Motor%20Vehicle%20Collisions%20Dashboard%20Tableau%20Fatality%20Analysis.png)

# Explore the Jupyter Notebook

[Jupyter Notebook](https://nbviewer.org/github/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Crash%20Data%20Analysis.ipynb)

* I utilized Python to concatenate the individual annual crash datasets into one large dataset that contains all of the crash data from 2015 through 2020.
* I cleaned and transformed the dataset by selecting features that were relevant to my analysis and assigning the appropriate data type to each feature.
* I used the Openstreet Nominatim API to reverse geocode the dataset to extract a zip code from the latitude and longitude data. 

# SQL Queries

After cleaning the dataset in Python, I imported the data into Postgresql and began to query the data. 

[SQL Queries](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/tree/main/SQL%20Queries)

# Insights

**Deaths by Collision Type:** My analysis revealed that collisions involving pedestrians were the deadliest type of motor vehicle collision.  Since 2015, pedestrians accounted for 34.9% of traffic related deaths in Philadelphia. 

![Deaths by Collision Type](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Deaths%20by%20Collision%20Type.PNG)

**Time Series Analysis:** In Philadelphia, the majority of motor vehicle collisions occur during peak rush hour 8AM and 4PM - 6PM.  However, most traffic related deaths occur on the weekends between 9PM and 2AM.  

**Collisions Per Day of Week, Time of Day**

![Collisions Per Day of Week, Time of Day](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Collisions%20Per%20Time%20of%20Week%2C%20Time%20of%20Day.PNG)

**Deaths Per Day of Week, Time of Day**

![Deaths Per Day of Week, Time of Day](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Deaths%20Per%20Day%20of%20Week%2C%20Time%20of%20Day.PNG)

**Collision Prone Areas:** Since 2015, Zip Code 19114 has had 1,501 motor vehicle collisions and 29 deaths with average rate of 20.22 deaths per 1,000 collisions.  This part of Philadelphia contains a portion of Roosevelt Boulevard, which is widely considered the [deadliest road in Philadelphia.](https://billypenn.com/2017/02/06/how-roosevelt-boulevard-became-the-most-dangerous-road-in-philadelphia/)

**Deaths Per 1,000 Collisions**

![Deaths Per 1,000 Collisions](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Deaths%20Per%201000%20Collisions%20by%20Zip%20Code.PNG)





