Topic: Number Memorization Test
Author: Brooke Peterson
Date: May 10, 2018

OVERVIEW

The files in this directory test the quality of short-term memory and the 
factors that may affect memory of user.

WHERE TO START
To begin, run the file 'FinalMainScript.m'. This opens a script that, when 
run, will display a graphical user interface that allows the user to input 
data. In this case, the 'example' data the TA will use to grade will be the 
data the TA provides to the code by completing it themselves. 

DATA INPUT
1. Fill out the options from the drop-down menus and select the 'start' 
    button when finished.
2. A one-digit number will appear for five seconds and then disappear. 
    Memorize the number and input it into the dialog box that will appear 
    after the number disappears. If you input the number correctly, a the 
    number of digits you must memorize will keep increasing until you can 
    no longer remember the number and input the wrong number. 
3. Once you can no longer remember the number correctly, the status box 
    will display the number of digits you were able to remember (the level 
    to which you made it). 
4. Select the 'Show Stats' button to see graphs of the final number value 
    of different users based on their gender, age, type of high school, 
    stress level, hours of sleep and field of study. 

DESCRIPTION OF FIGURES:
1. FIGURE 1 - linear fit of average final value vs. age

2. FIGURE 2 - linear fit of average final value vs. number of hours of sleep

3. FIGURE 3 - box plot of average final value vs. gender 

4. FIGURE 4 - box plot of average final value vs. field of study 

5. FIGURE 5 - box plot of average final value vs. stress level 

6. FIGURE 6 - box plot of average final value vs. type of high school 

7. stats.mat - spreadsheet of all data (gender, field of study, age, type 
    of high school, stress level, hours of sleep, and final value) 


CALCULATION FUNCTIONS
1. CalcRsquared.m - calculates the R^2 of a linear fit.

PLOTTING FUNCTIONS
1. GraphGUI.m - plots all figures 1-6 with current data in 'stats.mat' 
    without having to run entire GUI.



