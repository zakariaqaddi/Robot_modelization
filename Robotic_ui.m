function varargout = Robotic_ui(varargin)
% ROBOTIC_UI MATLAB code for Robotic_ui.fig
%      ROBOTIC_UI, by itself, creates a new ROBOTIC_UI or raises the existing
%      singleton*.
%
%      H = ROBOTIC_UI returns the handle to a new ROBOTIC_UI or the handle to
%      the existing singleton*.
%
%      ROBOTIC_UI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTIC_UI.M with the given input arguments.
%
%      ROBOTIC_UI('Property','Value',...) creates a new ROBOTIC_UI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Robotic_ui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Robotic_ui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Robotic_ui

% Last Modified by GUIDE v2.5 11-Dec-2020 22:07:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Robotic_ui_OpeningFcn, ...
                   'gui_OutputFcn',  @Robotic_ui_OutputFcn, ...
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


% --- Executes just before Robotic_ui is made visible.
function Robotic_ui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Robotic_ui (see VARARGIN)

% Choose default command line output for Robotic_ui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Robotic_ui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Robotic_ui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function dof_Callback(hObject, eventdata, handles)
% hObject    handle to dof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dof as text
%        str2double(get(hObject,'String')) returns contents of dof as a double


% --- Executes during object creation, after setting all properties.
function dof_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bdof.
function bdof_Callback(hObject, eventdata, handles)
% hObject    handle to bdof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x ; 
x=str2double(get(handles.dof,'string'));
    switch x
        case 1.0
           set(handles.uitable1,'Data',cell(4,1));
           set(handles.uitable1,'columnname',{'L1'});
           set(handles.uitable1,'rowname',{'a','alpha','d','theta'});
        case 2.0 
           set(handles.uitable1,'Data',cell(4,2));
           set(handles.uitable1,'columnname',{'L1','L2'});
           set(handles.uitable1,'rowname',{'a','alpha','d','theta'});
        case 3.0 
           set(handles.uitable1,'Data',cell(4,3)); 
           set(handles.uitable1,'columnname',{'L1','L2', 'L3'});
           set(handles.uitable1,'rowname',{'a','alpha','d','theta'});
        case 4.0 
           set(handles.uitable1,'Data',cell(4,4));  
           set(handles.uitable1,'columnname',{'L1','L2', 'L3', 'L4'});
           set(handles.uitable1,'rowname',{'a','alpha','d','theta'});
        case 5.0 
           set(handles.uitable1,'Data',cell(4,5));  
           set(handles.uitable1,'columnname',{'L1','L2', 'L3', 'L4', 'L5'});
           set(handles.uitable1,'rowname',{'a','alpha','d','theta'});
        otherwise  
           set(handles.uitable1,'Data',cell(4,6));
           set(handles.uitable1,'columnname',{'L1','L2', 'L3', 'L4', 'L5', 'L6'});
           set(handles.uitable1,'rowname',{'a','alpha','d','theta'});
     end 


function th1_Callback(hObject, eventdata, handles)
% hObject    handle to th1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of th1 as text
%        str2double(get(hObject,'String')) returns contents of th1 as a double


% --- Executes during object creation, after setting all properties.
function th1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to th1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function th2_Callback(hObject, eventdata, handles)
% hObject    handle to th2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of th2 as text
%        str2double(get(hObject,'String')) returns contents of th2 as a double


% --- Executes during object creation, after setting all properties.
function th2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to th2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function th3_Callback(hObject, eventdata, handles)
% hObject    handle to th3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of th3 as text
%        str2double(get(hObject,'String')) returns contents of th3 as a double


% --- Executes during object creation, after setting all properties.
function th3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to th3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function th4_Callback(hObject, eventdata, handles)
% hObject    handle to th4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of th4 as text
%        str2double(get(hObject,'String')) returns contents of th4 as a double


% --- Executes during object creation, after setting all properties.
function th4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to th4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function th5_Callback(hObject, eventdata, handles)
% hObject    handle to th5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of th5 as text
%        str2double(get(hObject,'String')) returns contents of th5 as a double


% --- Executes during object creation, after setting all properties.
function th5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to th5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function th6_Callback(hObject, eventdata, handles)
% hObject    handle to th6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of th6 as text
%        str2double(get(hObject,'String')) returns contents of th6 as a double


% --- Executes during object creation, after setting all properties.
function th6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to th6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in direct.
function direct_Callback(hObject, eventdata, handles)
% hObject    handle to direct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Robot;
global x;
if x==1
theta1 = str2double(get(handles.th1,'string'))*pi/180;
Robot.plot([theta1]);
T=Robot.fkine([theta1]);
elseif x==2
theta1 = str2double(get(handles.th1,'string'))*pi/180;
theta2 = str2double(get(handles.th2,'string'))*pi/180;
Robot.plot([theta1 ,theta2]);
T=Robot.fkine([theta1 ,theta2]);
elseif x==3
theta1 = str2double(get(handles.th1,'string'))*pi/180;
theta2 = str2double(get(handles.th2,'string'))*pi/180;
theta3 = str2double(get(handles.th3,'string'))*pi/180;
Robot.plot([theta1 ,theta2 ,theta3]);
T=Robot.fkine([theta1 ,theta2 ,theta3]);
elseif x==4
theta1 = str2double(get(handles.th1,'string'))*pi/180;
theta2 = str2double(get(handles.th2,'string'))*pi/180;
theta3 = str2double(get(handles.th3,'string'))*pi/180;
theta4 = str2double(get(handles.th4,'string'))*pi/180;
Robot.plot([theta1 ,theta2 ,theta3 ,theta4]);
T=Robot.fkine([theta1 ,theta2 ,theta3 ,theta4]);
elseif x==5
theta1 = str2double(get(handles.th1,'string'))*pi/180;
theta2 = str2double(get(handles.th2,'string'))*pi/180;
theta3 = str2double(get(handles.th3,'string'))*pi/180;
theta4 = str2double(get(handles.th4,'string'))*pi/180;
theta5 = str2double(get(handles.th5,'string'))*pi/180;
Robot.plot([theta1 ,theta2 ,theta3 ,theta4 ,theta5]);
T=Robot.fkine([theta1 ,theta2 ,theta3 ,theta4 ,theta5]);
else 
theta1 = str2double(get(handles.th1,'string'))*pi/180;
theta2 = str2double(get(handles.th2,'string'))*pi/180;
theta3 = str2double(get(handles.th3,'string'))*pi/180;
theta4 = str2double(get(handles.th4,'string'))*pi/180;
theta5 = str2double(get(handles.th5,'string'))*pi/180;
theta6 = str2double(get(handles.th6,'string'))*pi/180;
Robot.plot([theta1 ,theta2 ,theta3 ,theta4 ,theta5, theta6]);
T=Robot.fkine([theta1 ,theta2 ,theta3 ,theta4 ,theta5, theta6]);
end

Px = floor(T(1,4));
Py = floor(T(2,4));
Pz=  floor(T(3,4));

set(handles.px,'string',Px)
set(handles.py,'string',Py)
set(handles.pz,'string',Pz)


function px_Callback(hObject, eventdata, handles)
% hObject    handle to px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of px as text
%        str2double(get(hObject,'String')) returns contents of px as a double


% --- Executes during object creation, after setting all properties.
function px_CreateFcn(hObject, eventdata, handles)
% hObject    handle to px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function py_Callback(hObject, eventdata, handles)
% hObject    handle to py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of py as text
%        str2double(get(hObject,'String')) returns contents of py as a double


% --- Executes during object creation, after setting all properties.
function py_CreateFcn(hObject, eventdata, handles)
% hObject    handle to py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pz_Callback(hObject, eventdata, handles)
% hObject    handle to pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pz as text
%        str2double(get(hObject,'String')) returns contents of pz as a double


% --- Executes during object creation, after setting all properties.
function pz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in inverse.
function inverse_Callback(hObject, eventdata, handles)
% hObject    handle to inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Robot;
global x;
Px = str2double(get(handles.px,'string'));
Py = str2double(get(handles.py,'string'));
Pz = str2double(get(handles.pz,'string'));

T=[1 0 0 Px ;
   0 1 0 Py ;
   0 0 1 Pz ; 
   0 0 0 1] ;
if x==1 
   J=Robot.ikine(T,[0 0 0 0 0 0],[1 1 1 0 0 0 ]) *180/pi ;
   t1=floor(J(1));
   set(handles.th1,'string',t1);
   Robot.plot(J*pi/180);
elseif x==2
   J=Robot.ikine(T,[0 0 0 0 0 0],[1 1 1 0 0 0 ]) *180/pi ; 
   t1=floor(J(1));
   t2=floor(J(2));
   set(handles.th1,'string',t1);
   set(handles.th2,'string',t2);
   Robot.plot(J*pi/180);
elseif x==3
    J=Robot.ikine(T,[0 0 0 0 0 0],[1 1 1 0 0 0 ]) *180/pi ;
    t1=floor(J(1));
    t2=floor(J(2));
    t3=floor(J(3));
    set(handles.th1,'string',t1);
    set(handles.th2,'string',t2);
    set(handles.th3,'string',t3);
    Robot.plot(J*pi/180);
elseif x==4
    J=Robot.ikine(T,[0 0 0 0 0 0],[1 1 1 0 0 0 ]) *180/pi ;
    t1=floor(J(1));
    t2=floor(J(2));
    t3=floor(J(3));
    t4=floor(J(4));
    set(handles.th1,'string',t1);
    set(handles.th2,'string',t2);
    set(handles.th3,'string',t3);
    set(handles.th4,'string',t4);
    Robot.plot(J*pi/180);
elseif x==5
    J=Robot.ikine(T,[0 0 0 0 0 0],[1 1 1 0 0 0 ]) *180/pi ;
    t1=floor(J(1));
    t2=floor(J(2));
    t3=floor(J(3));
    t4=floor(J(4));
    t5=floor(J(5));
    set(handles.th1,'string',t1);
    set(handles.th2,'string',t2);
    set(handles.th3,'string',t3);
    set(handles.th4,'string',t4);
    set(handles.th5,'string',t5);
    Robot.plot(J*pi/180);
else 
    J=Robot.ikine(T,[0 0 0 0 0 0],[1 1 1 0 0 0 ]) *180/pi;
    t1=floor(J(1));
    t2=floor(J(2));
    t3=floor(J(3));
    t4=floor(J(4));
    t5=floor(J(5));
    t6=floor(J(6));
    set(handles.th1,'string',t1);
    set(handles.th2,'string',t2);
    set(handles.th3,'string',t3);
    set(handles.th4,'string',t4);
    set(handles.th5,'string',t5);
    set(handles.th6,'string',t6);
    Robot.plot(J*pi/180);
end
% --- Executes on button press in robot.
function robot_Callback(hObject, eventdata, handles)
% hObject    handle to robot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%************L=Link([Th d a alpha])*************
y=get(handles.uitable1,'Data')
str2double(y(1,1))
global x;
global Robot; 
if x == 1
    a1=str2double(y(1,1));alpha1=str2double(y(2,1));d1=str2double(y(3,1));th1=str2double(y(4,1));
    L(1)=Link([th1 d1 a1  alpha1]);
    Robot=SerialLink(L);
    Robot.name='Robot';
elseif x==2 
  a1=str2double(y(1,1));alpha1=str2double(y(2,1));d1=str2double(y(3,1));th1=str2double(y(4,1));
    a2=str2double(y(1,2));alpha2=str2double(y(2,2));d2=str2double(y(3,2));th2=str2double(y(4,2));
    L(1)=Link([th1 d1 a1  alpha1]);
    L(2)=Link([th2 d2 a2  alpha2]);
    Robot=SerialLink(L);
    Robot.name='Robot';
elseif x==3 
   a1=str2double(y(1,1));alpha1=str2double(y(2,1));d1=str2double(y(3,1));th1=str2double(y(4,1));
    a2=str2double(y(1,2));alpha2=str2double(y(2,2));d2=str2double(y(3,2));th2=str2double(y(4,2));
    a3=str2double(y(1,3));alpha3=str2double(y(2,3));d3=str2double(y(3,3));th3=str2double(y(4,3));
    L(1)=Link([th1 d1 a1  alpha1]);
    L(2)=Link([th2 d2 a2  alpha2]);
    L(3)=Link([th3 d3 a3  alpha3]);
    Robot=SerialLink(L);
    Robot.name='Robot';
elseif x==4 
   a1=str2double(y(1,1));alpha1=str2double(y(2,1));d1=str2double(y(3,1));th1=str2double(y(4,1));
    a2=str2double(y(1,2));alpha2=str2double(y(2,2));d2=str2double(y(3,2));th2=str2double(y(4,2));
    a3=str2double(y(1,3));alpha3=str2double(y(2,3));d3=str2double(y(3,3));th3=str2double(y(4,3));
    a4=str2double(y(1,4));alpha4=str2double(y(2,4));d4=str2double(y(3,4));th4=str2double(y(4,4));
    L(1)=Link([th1 d1 a1  alpha1]);
    L(2)=Link([th2 d2 a2  alpha2]);
    L(3)=Link([th3 d3 a3  alpha3]);
    L(4)=Link([th4 d4 a4  alpha4]);
    Robot=SerialLink(L);
    Robot.name='Robot';
elseif x==5
    a1=str2double(y(1,1));alpha1=str2double(y(2,1));d1=str2double(y(3,1));th1=str2double(y(4,1));
    a2=str2double(y(1,2));alpha2=str2double(y(2,2));d2=str2double(y(3,2));th2=str2double(y(4,2));
    a3=str2double(y(1,3));alpha3=str2double(y(2,3));d3=str2double(y(3,3));th3=str2double(y(4,3));
    a4=str2double(y(1,4));alpha4=str2double(y(2,4));d4=str2double(y(3,4));th4=str2double(y(4,4));
    a5=str2double(y(1,5));alpha5=str2double(y(2,5));d5=str2double(y(3,5));th5=str2double(y(4,5));
    L(1)=Link([th1 d1 a1  alpha1]);
    L(2)=Link([th2 d2 a2  alpha2]);
    L(3)=Link([th3 d3 a3  alpha3]);
    L(4)=Link([th4 d4 a4  alpha4]);
    L(5)=Link([th5 d5 a5  alpha5]);
    Robot=SerialLink(L);
    Robot.name='Robot';
else 
    a1=str2double(y(1,1));alpha1=str2double(y(2,1));d1=str2double(y(3,1));th1=str2double(y(4,1));
    a2=str2double(y(1,2));alpha2=str2double(y(2,2));d2=str2double(y(3,2));th2=str2double(y(4,2));
    a3=str2double(y(1,3));alpha3=str2double(y(2,3));d3=str2double(y(3,3));th3=str2double(y(4,3));
    a4=str2double(y(1,4));alpha4=str2double(y(2,4));d4=str2double(y(3,4));th4=str2double(y(4,4));
    a5=str2double(y(1,5));alpha5=str2double(y(2,5));d5=str2double(y(3,5));th5=str2double(y(4,5));
    a6=str2double(y(1,6));alpha6=str2double(y(2,6));d6=str2double(y(3,6));th6=str2double(y(4,6));
    L(1)=Link([th1 d1 a1  alpha1]);
    L(2)=Link([th2 d2 a2  alpha2]);
    L(3)=Link([th3 d3 a3  alpha3]);
    L(4)=Link([th4 d4 a4  alpha4]);
    L(5)=Link([th5 d5 a5  alpha5]);
    L(6)=Link([th6 d6 a6  alpha6]);
    Robot=SerialLink(L);
    Robot.name='Robot';
    Robot.plot([0 ,0 ,0 ,0 ,0,0])
end
