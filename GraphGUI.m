%Brooke Peterson 
%May 10, 2018 
%This script extracts the data for each individual of 'stats.mat' and
%just displays the plots (linear fitting and boxplots) of each factor. 

clear all 
close all  
load('stats.mat')
dataLen = length(data);

%extracts all data for each individual from 'stats.mat' and stores it in
%variables depending on whether they are strings or numbers 
for k = 1: dataLen
    gender{k} = data(k).gender; 
    field{k} = data(k).field; 
    age(k) = str2num(data(k).age);
    school{k} = data(k).school; 
    stress{k} = data(k).stress;
    sleep(k) = str2num(data(k).sleep);
    finalVal(k) = (data(k).finalVal); 
end  

%plots a linear fit of age vs. final value and calculates R^2 of graph 
figure
ageFit = polyval(polyfit(age,finalVal,1),age);
rSq = CalcRsquared(finalVal,ageFit);
plot(age,finalVal,'o',age,ageFit) 
set(gca,'XLim',[17 21])
set(gca,'XTick',(17:1:22))
set(gca,'YTick',(0:1:15))
xlabel('Age')
ylabel('Final Value')
title(sprintf('R^2=%0.4f',rSq))

%plots a linear fit of sleep vs. final value and calculates R^2 of graph 
figure 
sleepFit = polyval(polyfit(sleep,finalVal,1),sleep);
rSq = CalcRsquared(finalVal,sleepFit);
plot(sleep,finalVal,'o',sleep,sleepFit)
xlabel('Hours of Sleep')
ylabel('Final Value')
set(gca,'XLim',[3 11])
title(sprintf('R^2=%0.4f',rSq))

%plots boxplot of final value based on the factors of gender, field of
%study, stress level, and type of high school 
figure
boxplot(finalVal,gender)
xlabel('Gender')
ylabel('Final Value')
title('Correlation Between Final Value and Gender')

figure
boxplot(finalVal,field)
xlabel('Field of Study')
ylabel('Final Value')
title('Correlation Between Final Value and Field of Study')

figure
boxplot(finalVal,stress)
xlabel('Stress level')
ylabel('Final Value')
title('Correlation Between Final Value and Stress Level')

figure
boxplot(finalVal,school)
xlabel('Type of school')
ylabel('Final Value')
title('Correlation Between Final Value and Type of High School')

%creates a text file with the final number of digits the user was able to
%remember
textFile = fopen('Output.txt','w');
fprintf(textFile,'Congrats! You made it to round %0.0f. The average person makes it to round 7.',finalVal(end));
fclose(textFile)
