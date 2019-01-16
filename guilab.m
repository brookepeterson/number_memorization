function varargout = guilab(varargin)
%function varargout = guilab(varargin)

%Brooke Peterson 
%May 10, 2018 
%This function runs a series of nested functions that launch a graphical
%user interface to test and plot quality of memory based on certain
%factors. 

% GUILAB MATLAB code for guilab.fig
%      GUILAB, by itself, creates a new GUILAB or raises the existing
%      singleton*.
%
%      H = GUILAB returns the handle to a new GUILAB or the handle to
%      the existing singleton*.
%
%      GUILAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUILAB.M with the given input arguments.
%
%      GUILAB('Property','Value',...) creates a new GUILAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guilab_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guilab_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guilab

% Last Modified by GUIDE v2.5 09-May-2018 21:54:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @guilab_OpeningFcn, ...
    'gui_OutputFcn',  @guilab_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before guilab is made visible.
function guilab_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guilab (see VARARGIN)

% Choose default command line output for guilab
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guilab wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = guilab_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on selection change in MaleorFemale.
function MaleorFemale_Callback(hObject, eventdata, handles)
% hObject    handle to MaleorFemale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MaleorFemale contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MaleorFemale


% --- Executes during object creation, after setting all properties.
function MaleorFemale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MaleorFemale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Age.
function Age_Callback(hObject, eventdata, handles)
% hObject    handle to Age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Age contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Age

% --- Executes during object creation, after setting all properties.
function Age_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in FieldStudy.
function FieldStudy_Callback(hObject, eventdata, handles)
% hObject    handle to FieldStudy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FieldStudy contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FieldStudy

% --- Executes during object creation, after setting all properties.
function FieldStudy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FieldStudy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in TypeofSchool.
function TypeofSchool_Callback(hObject, eventdata, handles)
% hObject    handle to TypeofSchool (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns TypeofSchool contents as cell array
%        contents{get(hObject,'Value')} returns selected item from TypeofSchool

% --- Executes during object creation, after setting all properties.
function TypeofSchool_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TypeofSchool (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in Sleep.
function Sleep_Callback(hObject, eventdata, handles)
% hObject    handle to Sleep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Sleep contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Sleep

% --- Executes during object creation, after setting all properties.
function Sleep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sleep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Stress.
function Stress_Callback(hObject, eventdata, handles)
% hObject    handle to Stress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Stress contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Stress

% --- Executes during object creation, after setting all properties.
function Stress_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Stress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in Start.
function Start_Callback(hObject, eventdata, handles)
% hObject    handle to Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

load('stats.mat') %load data into workspace 

%pulls out numerical values for each response and stores them in value 
%variables?for example, for the drop down for gender, 
%'--Please select your gender--' would = 1, 'Male' would = 2, and 'Female' would = 3. 
genderVal = get(handles.MaleorFemale, 'value');
fieldVal = get(handles.FieldStudy, 'value');
ageVal = get(handles.Age, 'value');
schoolVal = get(handles.TypeofSchool, 'value');
stressVal = get(handles.Stress, 'value');
sleepVal = get(handles.Sleep, 'value');

%Inhibits code from proceeding if user has not completed all drop-downs and 
%prompts user to fill out specific drop-downs that have not been completed.
%If user has completed each drop-down, data is stored in
%'gender','field','age','school','stress', and 'sleep' variables 
if genderVal == 1
    set(handles.Status, 'string', 'Please select your gender.')
    return
else
    contents = get(handles.MaleorFemale,'string');
    gender = contents{genderVal};
end

if fieldVal == 1
    set(handles.Status, 'string', 'Please select your field of study.')
    return
else
    contents = get(handles.FieldStudy,'string');
    field = contents{fieldVal};
end

if ageVal == 1
    set(handles.Status, 'string', 'Please select your age.')
    return
else
    contents = get(handles.Age,'string');
    age = contents{ageVal};
end

if schoolVal == 1
    set(handles.Status, 'string', 'Please select your type of school.')
    return
else
    contents = get(handles.TypeofSchool,'string');
    school = contents{schoolVal};
end

if stressVal == 1
    set(handles.Status, 'string', 'Please select your stress level.')
    return
else
    contents = get(handles.Stress,'string');
    stress = contents{stressVal};
end

if sleepVal == 1
    set(handles.Status, 'string', 'Please select your hours of sleep.')
    return
else
    contents = get(handles.Sleep,'string');
    sleep = contents{sleepVal};
end


isCorrect = 1; %initially defines isCorrect to 1 so while loop runs 
prompt = 'What was the number?';
while isCorrect == 1 %code will continue to loop until user inputs an incorrect number 
    for k = 1:30 %Max number of digits displayed on screen; most people cannot remember a number anywhere near this long 
        randNum = abs(round(9*rand(1,k)+.5)); %displays a nonzero kth digit number 
        finalNum = 0; 
        for m = k:-1:1 
            finalNum = randNum(m) * 10^(m-1) + finalNum;
        end
        set(handles.Status, 'string', 'Remember the number.')
        pause(1.5)
        set(handles.Status, 'string', 'Please wait... ')
        dispNum = sprintf('%d',finalNum);
        set(handles.Number,'string', dispNum) %displays number to GUI screen
        pause(5)
        set(handles.Number,'string',' ') %removes number from GUI screen
        answer = inputdlg(prompt); %prompts user to type in number
        if str2num(answer{1}) == finalNum %if user inputs correct number, loop will run again and the next displayed number (one more digit) will appear 
            isCorrect = 1;
        else
            isCorrect = 0; %if user inputs number incorrectly, loops ends and data is stored in next cell of 'stats.mat' 
            outputStr = sprintf('Congrats! You made it to round %0.0f. The average person makes it to round 7.',k-1);
            set(handles.Status, 'string', outputStr)
            dataLen = length(data);
            data(dataLen+1).gender = gender;
            data(dataLen+1).field = field;
            data(dataLen+1).age = age;
            data(dataLen+1).school = school;
            data(dataLen+1).stress = stress;
            data(dataLen+1).sleep = sleep;
            data(dataLen+1).finalVal = k-1;
            save('stats.mat','data') %save data into 'stats.mat'
            
            return
        end
    end
end


% --- Executes on button press in showStats.
function showStats_Callback(hObject, eventdata, handles)
% hObject    handle to showStats (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all 
load('stats.mat') %loads data into workspace 
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

figure
boxplot(finalVal,field)
xlabel('Field of Study')
ylabel('Final Value')

figure
boxplot(finalVal,stress)
xlabel('Stress level')
ylabel('Final Value')

figure
boxplot(finalVal,school)
xlabel('Type of school')
ylabel('Final Value')

%creates a text file with the final number of digits the user was able to
%remember
textFile = fopen('Output.txt','w');
fprintf(textFile,'Congrats! You made it to round %0.0f. The average person makes it to round 7.',finalVal(end));
fclose(textFile)
