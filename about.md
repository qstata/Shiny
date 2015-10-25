## Help documentation

### Introduction
This Shiny App is for Course Project of [Developing Data Products](https://class.coursera.org/devdataprod-033/)

The application includes the following:

    1. Some form of input (widget: textbox, radio button, checkbox, ...)
    2. Some operation on the ui input in sever.R
    3. Some reactive output displayed as a result of server calculations
    4. It also includes help documentation, as follow, so that a novice user could use this application. 

### Usage
    1. This Shiny App includes a navigtion bar with three tabs, "Explore the Data", "Visualize the Data" and "About", respectively.
    2. The source of the data is "mpg" data set of ggplot2 (one of R packages).
    3. Using the "Explore the Data" to expore the data.
	     This dataset contains a subset of the fuel economy data that the
	     EPA makes available on <URL: http://fueleconomy.gov>.  It contains
	     only models which had a new release every year between 1999 and
	     2008 - this was used as a proxy for the popularity of the car.
	
	     Details:
	          manufacturer.
	          model.
	          displ. engine displacement, in litres
	          year.
	          cyl. number of cylinders
	          trans. type of transmission
	          drv. f = front-wheel drive, r = rear wheel drive, 4 = 4wd
	          cty. city miles per gallon
	          hwy. highway miles per gallon
	          fl.
	          class.

    4. Using the "Visualize the Data" to expore the relationship between cty (city miles per gallon) and hwy (highway miles per gallon).
     

-------------------------
Date updated: 10/25/2015
