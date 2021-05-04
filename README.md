# Philadelphia Pedestrian Traffic Fatality Analysis in SQL & Tableau
SQL & Tableau Data Analysis and Data Visualization of Philadelphia, Pennsylvania's pedestrian traffic fatalities from 2017 - 2019. 

### Database and Data Visualization Tools
+ Postgresql
+ Tableau Public
+ Microsoft Excel

### Live Demo
+ [View the Tableau Public Dashboard](https://public.tableau.com/profile/matthew.snell1329#!/vizhome/PhiladelphiaPedestrianFatalities/PhiladelphiasFatalPedestrianCrashes2017-2019)

function initializeViz() {
var placeholderDiv = document.getElementById("tableauViz");
var url = "http://public.tableau.com/views/WorldIndicators/GDPpercapita";
var options = {
 width: '600px',
 height: '600px',
 hideTabs: true,
 hideToolbar: true,
 };
viz = new tableau.Viz(placeholderDiv, url, options);
}

