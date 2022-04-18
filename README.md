![Dashboard on Tableau Public](https://github.com/MatthewLSnell/Philadelphia-Pedestrian-Fatalities-Analysis-in-SQL-Tableau/blob/main/Images/Case%20Study%20Analysis%20of%20Philadelphia's%20Motor%20Vehicle%20Collisions%20Cover.png)

# Background

For this case study, I was tasked with analyzing motor vehicle collisions in Philadelphia, PA from January 2015 - December 2020 and provide recommendations on how to reduce the occurrence of motor vehicle collisions within Philadelphia. 

# Data Source

The dataset is comprised of 67,333 reportable crash incidents and may be accessed [here](https://pennshare.maps.arcgis.com/apps/webappviewer/index.html?id=8fdbf046e36e41649bbfd9d7dd7c7e7e).

# Tableau Dashboard

[Philadelphia Motor Vehicle Collisions Dashboard](https://public.tableau.com/app/profile/matthew.snell1329/viz/PhiladelphiaMotorVehicleCollisionsDashboard/PHLMVADashboard-Summary)

![Tableau Dashboard Cover](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Philadelphia%20Motor%20Vehicle%20Collisions%20Dashboard%20Tableau%20Cover.png)

![Tableau Time Series](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Philadelphia%20Motor%20Vehicle%20Collisions%20Dashboard%20Tableau%20Time%20Seriespng.png)

![Tableau Collision Prone Areas](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Philadelphia%20Motor%20Vehicle%20Collisions%20Dashboard%20Tableau%20Collisions%20Prone%20Areas.png)

![Tableau Fatality Analysis](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Philadelphia%20Motor%20Vehicle%20Collisions%20Dashboard%20Tableau%20Fatality%20Analysis.png)

# Explore the Jupyter Notebook

[Jupyter Notebook](https://nbviewer.org/github/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Crash%20Data%20Analysis.ipynb)

* I utilized Python to concatenate the individual year datasets into one large dataset that contains all of the crash data from 2015 through 2020/
* I cleaned and transformed the dataset by selecting features that were relevant to my analysis and assigning the appropriate data type to each feature.
* I used the Openstreet Nominatim API to reverse geocode the dataset to extract a zip code from the latitude and longitude data. 

# SQL Queries

After cleaning the dataset in Python, I imported the data into Postgresql and began to query the data. 

[SQL Queries](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/tree/main/SQL%20Queries)

# Insights

* **Deaths by Collision Type:** My analysis revealed that collisions involving pedestrians were the deadliest type of motor vehicle collision.  Since 2015, pedestrians accounted for 34.9% of traffic related deaths in Philadelphia. 

![Deaths by Collision Type](https://github.com/MatthewLSnell/Case-Study-Analysis-of-Philadelphia-Motor-Vehicle-Collisions/blob/main/Images/Deaths%20by%20Collision%20Type.PNG)



