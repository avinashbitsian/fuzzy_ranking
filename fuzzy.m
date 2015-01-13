function varargout = fuzzy(varargin)
% FUZZY M-file for fuzzy.fig
%      FUZZY, by itself, creates a new FUZZY or raises the existing
%      singleton*.
%
%      H = FUZZY returns the handle to a new FUZZY or the handle to
%      the existing singleton*.
%
%      FUZZY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUZZY.M with the given input arguments.
%
%      FUZZY('Property','Value',...) creates a new FUZZY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fuzzy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fuzzy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fuzzy

% Last Modified by GUIDE v2.5 26-Nov-2014 15:39:25

% Begin initialization code - DO NOT EDIT
%no_of_alter = 0
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuzzy_OpeningFcn, ...
                   'gui_OutputFcn',  @fuzzy_OutputFcn, ...
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


% --- Executes just before fuzzy is made visible.
function fuzzy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fuzzy (see VARARGIN)

% Choose default command line output for fuzzy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fuzzy wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = fuzzy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in B1.
function B1_Callback(hObject, eventdata, handles)
% hObject    handle to B1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename
[filename pathname]= uigetfile({'*.xlsx'},'File Selector');
filename
fullpathname = strcat(pathname,filename);
%text=fileread(fullpathname);
%ratings = xlsread(filename,'ratings')
%weights = xlsread(filename,'weights')
%values = xlsread(filename,'values')
%[num,txt,raw]=xlsread(fullpathname,'ratings')
set(handles.text3,'String',fullpathname)
%set(handles.edit3,'String',values(2))
%set(handles.edit4,'String',values(3))
%set(handles.edit5,'String',values(1))


% --- Executes on key press with focus on B1 and none of its controls.
function B1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to B1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('help_file.pdf')


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double

str = get( hObject, 'string')
global num_crit 
num_crit = str2num(str)



% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
 %hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%own code-----------------------------------------
digits(4);
global num_dm
global num_alter
global num_crit
global filename

%importance = xlsread(filename,'importance')
importance = zeros(num_crit,num_dm)

ratings = xlsread(filename,'ratings')
weights = xlsread(filename,'weights')
%values = xlsread(filename,'values')

%num_dm = values(1);
%num_alter = values(2);
%num_crit = values(3);


[num,txt,raw] = xlsread(filename,'importance')
mutex_importance = txt

for i=2:num_crit+1
    for j=2:num_dm+1
        if strcmp(mutex_importance(i,j),'AI') importance(i-1,j-1) = 5; end
        if strcmp(mutex_importance(i,j),'VI') importance(i-1,j-1) = 4; end
        if strcmp(mutex_importance(i,j),'I' ) importance(i-1,j-1) = 3; end
        if strcmp(mutex_importance(i,j),'MI') importance(i-1,j-1) = 2; end
        if strcmp(mutex_importance(i,j),'UI') importance(i-1,j-1) = 1; end
    end
end

[num,txt,raw] = xlsread(filename,'altervscrit')
mutex_altervscrit = txt
altervscrit = zeros(num_crit * num_alter,num_dm)

for i=1:num_crit * num_alter
    for j=3:num_dm+2
        if strcmp(mutex_altervscrit(i,j),'VH') altervscrit(i,j-2) = 5; end
        if strcmp(mutex_altervscrit(i,j),'H') altervscrit(i,j-2) = 4; end
        if strcmp(mutex_altervscrit(i,j),'M' ) altervscrit(i,j-2) = 3; end
        if strcmp(mutex_altervscrit(i,j),'L') altervscrit(i,j-2) = 2; end
        if strcmp(mutex_altervscrit(i,j),'VL') altervscrit(i,j-2) = 1; end
    end
end


Wij = zeros(num_crit,5)

for i = 1:num_crit
    
    for j = 1:4
        temp = 0
        for k = 1:num_alter
            temp=temp + weights(importance(i,k),j)
        end
        temp = temp/num_dm 
        Wij(i,j) = vpa(temp)
    end
end

for i = 1:num_crit
    
    
        temp = 1
        for k = 1:num_alter
            temp = min(temp,weights(importance(i,k),5))
        end
        
        Wij(i,5) = vpa(temp)
    
end

crit_prnt = cell(num_crit,1) 
for i=1:num_crit
        crit_prnt{i} = strcat('C',num2str(i)); 
end   
xlswrite('output.xlsx',crit_prnt,'Wj');
xlswrite('output.xlsx',Wij,'Wj','B1');

%altervscrit =  xlsread(filename,'altervscrit')

Rij = zeros(num_crit * num_alter,5)

for i = 1:num_crit * num_alter
    
    for j = 1:4
        temp = 0
        for k = 1:num_alter
            temp=temp + ratings(altervscrit(i,k),j)
        end
        temp = temp/num_dm 
        Rij(i,j) = vpa(temp)
    end
end

for i = 1:num_crit * num_alter
    
    
        temp = 1
        for k = 1:num_alter
            temp = min(temp,ratings(altervscrit(i,k),5))
        end
        
        Rij(i,5) = vpa(temp)
    
end


alter_prnt = cell(num_crit*num_alter,1) 
for i=0:num_crit-1
    for j=1:num_alter
        alter_prnt{i*(num_alter)+j} = strcat('A',num2str(j)); 
    end
end 

crit1_prnt = cell(num_crit*num_alter,1) 
for i=0:num_crit-1
    crit1_prnt{i*(num_alter)+1} = strcat('C',num2str(i+1));
    end 


xlswrite('output.xlsx',crit1_prnt,'Rij','A1');
xlswrite('output.xlsx',alter_prnt,'Rij','B1');
xlswrite('output.xlsx',Rij,'Rij','C1');

D = zeros (num_alter , 5 * num_crit)  %include a space hence 6


for i = 1:num_alter
    
    for j = 1:num_crit 
        for k = 1:5
            D(i,((j-1) * 5) + k) = Rij( (j-1) * num_alter + i ,k)
        end
    end
    
end

%xlswrite('output.xlsx',D,'D');

W = zeros(1,num_crit * 5)

for i = 1:num_crit
    for k = 1:5
    W(1,(5*(i-1)) + k) = Wij(i,k)
    end
end
%xlswrite('output.xlsx',W,'W');

V = zeros(num_alter,5)

tmp = zeros (num_alter , 5 * num_crit)

for i = 1:num_alter
    for j = 1:num_crit*5
        tmp(i,j) = D(i,j)
    end
end

for i = 1:num_alter
    for j = 1:num_crit
        for k =1:4
            tmp(i,(j-1)*5+k) = W(1,(j-1)*5+k) * D(i,(j-1)*5+k)
        end
    end
end

for i = 1:num_alter
    for j = 1:num_crit
            tmp(i,(j-1)*5+5) = min (W(1,(j-1)*5+5), D(i,(j-1)*5+5))
    end
end


for i = 1:num_alter
    for k = 1:4
        temp=0
        for j = 1:num_crit
            temp = temp+tmp(i,(j-1)*5+k)
        end
        V(i,k) = vpa(temp)
    end
end

for i = 1:num_alter
        temp=20
        for j = 1:num_crit
            temp = min(temp,tmp(i,(j-1)*5+5))
        end
        V(i,5) = vpa(temp)
end

amin=100

for i=1:num_alter
    amin=min(amin,V(i,1))
end

dmax=0

for i=1:num_alter
    dmax=max(dmax,V(i,4))
end

xlswrite('output.xlsx',V,'V','B1');

dL = zeros(num_alter,1)
dR = zeros(num_alter,1)

for i = 1:num_alter
    dL(i,1) = (0.5 * (V(i,2)-V(i,1)) * V(i,5)) + ((V(i,1)-amin)*V(i,5)) 
    dR(i,1) = (0.5 * (V(i,4)-V(i,3)) * V(i,5)) + ((dmax-V(i,4))*V(i,5))
end


alter_prnt = cell(num_alter,1) 
for i=1:num_alter
        alter_prnt{i} = strcat('A',num2str(i)); 
end 
xlswrite('output.xlsx',alter_prnt,'dL','A1');
xlswrite('output.xlsx',alter_prnt,'dR','A1');
xlswrite('output.xlsx',dL,'dL','B1');
xlswrite('output.xlsx',dR,'dR','B1');

MAi = zeros(num_alter,1)


for i = 1:num_alter
    %num = V(i,5) * 0.5 *((V(i,4))^2-(V(i,1))^2)
    %den = V(i,5) * 0.5 *((V(i,4))-(V(i,1)))
    ip1=amin:0.1:dmax
    ip2=trapmf(ip1,[V(i,1),V(i,2),V(i,3),V(i,4)])
    out=defuzz(ip1,ip2,'centroid')
    MAi(i,1) = out
end

temp1 = 20
temp2 = 0
for i = 1:num_alter
    temp1 = min(temp1,MAi(i,1))
    temp2 = max(temp2,MAi(i,1))
end
MAimin = temp1
MAimax = temp2

alter_prnt = cell(num_alter,1) 
for i=1:num_alter
        alter_prnt{i} = strcat('A',num2str(i)); 
end 
xlswrite('output.xlsx',alter_prnt,'MAi','A1');
xlswrite('output.xlsx',MAi,'MAi','B1');

LTC = zeros(num_alter,1)
RTC = zeros(num_alter,1)
e = 0.0001

for i = 1:num_alter
    LTC(i,1) = (MAi(i,1) - MAimin + (e/2)) /(MAimax - MAimin + e)
    RTC(i,1) = (MAimax - MAi(i,1) + (e/2)) /(MAimax - MAimin + e)
end
    
DAi = zeros(num_alter,1)

for i = 1:num_alter
   DAi(i,1) = vpa( (e+LTC(i,1)*dL(i,1))/(e+RTC(i,1)*dR(i,1)) )
end

alter_prnt = cell(num_alter,1) 
for i=1:num_alter
        alter_prnt{i} = strcat('A',num2str(i)); 
end 
xlswrite('output.xlsx',alter_prnt,'LTC','A1');
xlswrite('output.xlsx',LTC,'LTC','B1');
xlswrite('output.xlsx',alter_prnt,'RTC','A1');
xlswrite('output.xlsx',RTC,'RTC','B1');


xlswrite('output.xlsx',DAi,'V','H1');

rnk =zeros(num_alter,1)

qwer=num_alter
mini = 10000

for i=1:num_alter
    for j=1:num_alter
        if (DAi(j,1) < mini) 
            mini = DAi(j,1)
            index = j
        end
    end
    mini=10000
    DAi(index,1) = 10000
    rnk(index,1)= qwer
    qwer = qwer-1;
end
%[~, ranking] = sort(DAi);

xlswrite('output.xlsx',rnk,'V','J1');

alter1_prnt = cell(num_alter,1) 
for i=1:num_alter
    alter1_prnt{i} = strcat('A',num2str(i));
end 
xlswrite('output.xlsx',alter1_prnt,'V','A1');

    

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('output.xlsx')



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double

str = get( hObject, 'string')
global num_dm 
num_dm = str2num(str)



% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
img = imread('bits_logo.jpg')
imshow(img);



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double

str = get( hObject, 'string')
global num_alter 
num_alter = str2num(str)

% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
img = imread('bits_logo.jpg')
imshow(img);

