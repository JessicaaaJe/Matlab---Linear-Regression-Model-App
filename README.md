# Matlab---Linear-Regression-Model-App


## PartI Introduction

Linear regression is one of the most basic and important models in machine learning in which
the model finds the best fit linear line between the independent variable and the dependent
variable. The general equation of a linear regression model can be written as:
y = a0 + a1x1 +a2x2 +... +anxn. The linear regression model is trained using the existing
dataset, and we usually use it to make future mathematical predictions.
We want to make the modeling process accessible to others who don't have a background in
programming or matlab language. To achieve this, we create an app with graphical user
interfaces(GUI). It provides point-and-click control of the software application, so the users don’t
need to run the matlab command line to execute the function.
To conclude, this project aims to build a linear regression model graphical user interface to
help users easily visualize quantitative data and make mathematical predictions.


## Part II UIFigures and Call Back Functions

There are overall three steps involved in writing this app.

__ Step1: Lay out the visual components

There are seven graph components in this app.
app.UIAxes: It is used to visualize the relationship between the response variable (y) and each
variable (x) in the dataset.
app.LoadNewDataSetButton: It is expected that when users click this button, the app will load in
the dataset that we want to analyze.
app.UITable: This table figure names x and y in the columns and presents data in each row.
app.next: Users will use this button to view the relationship between the next available x and y.
App.previous: Users will use this button to view the relationship between the previous available
x and y.
app.UITable2: This table asks user input of the x and shows the result of the predicted value of
y.
app.makePredictionButton: When users click this button, the app will read the data from the
given input value in UITable2 and make a prediction on y.

__ Step2: Write the callback functions
Call back functions are executed when users interact with the UI figure in the app. The callback
defines the behavior of this app. As users will interact with four graph components in the app :
LoadNewDataSetButton, nextButton, previousButton, MakePredictionButton, we will then write
four call back functions in the matlab app.


**Callback function 1 : LoadNewDataButtonPushed

![Screen Shot 2023-11-17 at 3 24 30 PM](https://github.com/JessicaaaJe/Matlab---Linear-Regression-Model-App/assets/94040700/13ea3298-c209-459c-9795-32316326ec27)
*Figure.1 - callback function of LoadNewDataSetButtonPushed*


We can first look at the callback function of LoadNewDataSetButton. Once the users click the
button, we want the UITable to be filled up with the corresponding dataset, and UITable2 to have
the initialized value of 0 in each x, and UIAxes to draw the plot of the relationship between the
first variable x1 and y. From line 30 to 37, we consider the input file is in ‘xlsx’ form and process
it to get the matrix containing fitted model, x, and y by using the RLM function (Figure.2 RLM
function). Line 41 to line 43 fills the UITable with x and y. Line46 initializes all x to 0. Line 48 to
line 50 draw the graph of y ~ x1. From 53 to 61, it implements a special function. Users may
want to have the coefficients of each parameter in hand, so here is the message box which
wraps the coefficients message of the fitted model.


<img width="953" alt="Screen Shot 2023-11-17 at 3 25 16 PM" src="https://github.com/JessicaaaJe/Matlab---Linear-Regression-Model-App/assets/94040700/65602a3b-2ecc-4a6f-a7e7-243ccba3047b">



**Callback function 2 : nextButtonPushed
<img width="698" alt="Screen Shot 2023-11-17 at 3 26 17 PM" src="https://github.com/JessicaaaJe/Matlab---Linear-Regression-Model-App/assets/94040700/2318ce06-1419-4e37-b5db-75a5d67d76a5">

As from Figure3, we write an if statement. As long as the value of k is smaller than the size of x,
whenever the ‘nextButton’ is pushed, we increment the value of k by 1 and draw the plot of y~xk.

**Callback function 3 : previousButtonPushed
<img width="587" alt="Screen Shot 2023-11-17 at 3 27 09 PM" src="https://github.com/JessicaaaJe/Matlab---Linear-Regression-Model-App/assets/94040700/5045f5b9-8022-4b40-be2b-926c8563f530">


Same rationale applies to the previousButtonPushed callback function. Instead of incrementing
the value of k, we decrease the value of k by 1 each time the previousButton is pushed. And the
value of k should be larger than 1.

<img width="964" alt="Screen Shot 2023-11-17 at 3 27 49 PM" src="https://github.com/JessicaaaJe/Matlab---Linear-Regression-Model-App/assets/94040700/4475349d-2664-4bb1-a300-0d521f571fa0">

We use predict function in matlab, input the fitted linear regression model and user’s x input.


__ Step3: app installation
The final step is to install the app on the computer so users don’t need to have matlab to run the
app. We choose ‘share Standalone Desktop App’ and package all the file. (Figure 6) The app will
then successfully appear on our computer.

<img width="486" alt="Screen Shot 2023-11-17 at 3 28 26 PM" src="https://github.com/JessicaaaJe/Matlab---Linear-Regression-Model-App/assets/94040700/51d31785-56b7-42f7-bb6f-0e111740cca4">


## PartIII Test with Data
The data we use to test the app is from kaggle.
https://www.kaggle.com/datasets/farhanmd29/50-startups/versions/1?resource=download
The dataset has data collected from New York, California, and Florida about 50 business
startups with 17 in each state. The variables x include R&D spending, administration fee,
marketing spend, and also the response variable y profit. Overall, there are four columns and 50
rows in the dataset. We then load in this dataset to fit the linear regression model. This dataset
is relatively small. As we know, more completed data usually improves the prediction ability of
the model, so we can also test this app with a larger dataset.
After we fit in the data, the message box with parameter coefficients pop out. We can then write
down the fitted linear regression model of this dataset.
Profit = 50122.193 + 0.8057 R&D spend -0.0268 administration + 0.02723 marketing spend

<img width="251" alt="Screen Shot 2023-11-17 at 3 29 05 PM" src="https://github.com/JessicaaaJe/Matlab---Linear-Regression-Model-App/assets/94040700/c379aeaf-ed20-4c6e-b980-fda8606ea3b0">




From the main page of the app, we can see the graph visualization between y ~ x. And if we
input x1 = 100000, x2 = 120000, x3 = 4000000, the predicted y based on the model is 236390.

<img width="448" alt="Screen Shot 2023-11-17 at 3 29 27 PM" src="https://github.com/JessicaaaJe/Matlab---Linear-Regression-Model-App/assets/94040700/9bdfc495-57e9-4407-b24e-505255e54f9e">

## PartIV Conclusion
To conclude, this app mainly achieves three functions: data visualization, linear regression
modeling, and the future prediction. However, there are also limitations. First, it can only predict
the quantitative variables. If the response variable is a binary response data, the function does
not apply. And second, linear regression might not always be the best fit of the relationship.
Sometimes, transformation is needed.And this app does not provide space for the potential
transformation.
