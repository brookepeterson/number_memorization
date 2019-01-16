function rSquared = CalcRsquared(y,yfit)
%function rSquared = CalcRsquared(y,yfit)

%Brooke Peterson 
%April 4, 2018
%This function creates a "helper function" for the main code which implements 
%a least-squares code to fit a line to noisy data
%Inputs: 
    %y: vector of data 
    %yfit: vector holding the fit 
%Outputs: 
    %rSquared: R^2 goodness-of-fit metric

if length(y) ~= length(yfit)
    rSquared = NaN; %rSquared will be considered 'not a number' if the lengths of y and yfit are not equal
    return 
end

if isempty(y) == 1 
    rSquared = NaN; %rSquared will be considered 'not a number' if y vector is empty 
end 
    
y = y(:); %converts y to a column vector 
yfit = yfit(:); %converts yfit to a column vector 
SStot = sum((y-mean(y)).^2); %equation for total sum of squares
SSres = sum((y-yfit).^2); %equation for residual sum of squares
rSquared = 1 - (SSres/SStot); %equation for R^2
end 
