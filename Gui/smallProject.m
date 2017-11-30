function varargout = smallProject(varargin)
% SMALLPROJECT MATLAB code for smallProject.fig
%      SMALLPROJECT, by itself, creates a new SMALLPROJECT or raises the existing
%      singleton*.
%
%      H = SMALLPROJECT returns the handle to a new SMALLPROJECT or the handle to
%      the existing singleton*.
%
%      SMALLPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SMALLPROJECT.M with the given input arguments.
%
%      SMALLPROJECT('Property','Value',...) creates a new SMALLPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before smallProject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to smallProject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help smallProject

% Last Modified by GUIDE v2.5 28-Nov-2017 21:48:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @smallProject_OpeningFcn, ...
                   'gui_OutputFcn',  @smallProject_OutputFcn, ...
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


% --- Executes just before smallProject is made visible.
function smallProject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to smallProject (see VARARGIN)

% Choose default command line output for smallProject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes smallProject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = smallProject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img;
[filename, pathname] = uigetfile({'*.*'});
if ~isequal(filename, 0)
    Info = imfinfo(fullfile(pathname, filename));
    if Info.BitDepth == 24
        Img = imread(fullfile(pathname, filename));
        axes(handles.axes1);
            cla('reset');
        imshow(Img);
    else
        msgbox('Hay chon anh RGB');
        return
    end
end
guidata(hObject, handles);
set(handles.radiobutton1, 'Enable', 'on');
set(handles.radiobutton2, 'Enable', 'on');
set(handles.radiobutton3, 'Enable', 'on');
set(handles.radiobutton4, 'Enable', 'on');
set(handles.radiobutton5, 'Enable', 'on');
set(handles.slider1, 'Enable', 'on');
set(handles.edit1, 'Enable', 'on');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global bw
[filename, pathname] = uiputfile( ...
       {'*.jpg';'*.mdl';'*.mat';'*.*'}, ...
        'Save as');
imwrite(bw, [pathname, filename]);

% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
global Img bw
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.slider1, 'Value', 0);
set(handles.edit1, 'String', 0);

Gray = rgb2gray(Img);
thresh = graythresh(Gray);
bw = im2bw(Gray, thresh);
set(handles.pushbutton2, 'Enable', 'on');

axes(handles.axes1);
cla('reset');
imshow(Gray);
title('Gray Scale Image');
axes(handles.axes2);
cla('reset');
imshow(bw);
title('Binary Image');
set(handles.edit1, 'String', thresh);

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global Img bw
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);

Gray = rgb2gray(Img);

thresh = get(hObject, 'Value');
bw = im2bw(Gray, thresh);
set(handles.pushbutton2, 'Enable', 'on');
axes(handles.axes1);
cla('reset');
imshow(Gray);
title('Gray Scale Image');
axes(handles.axes2);
cla('reset');
imshow(bw);
title('Binary Image');
set(handles.edit1, 'String', num2str(thresh));

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



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


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
global Img
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);

set(handles.slider1, 'Value', 0);
set(handles.edit1, 'String', 0);

Gray = rgb2gray(Img);

axes(handles.axes1);
imshow(Gray);
title('Gray Scale Image');
axes(handles.axes2);
imhist(Gray(:));
grid on
title('Histogram');

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

global Img
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);

set(handles.slider1, 'Value', 0);
set(handles.edit1, 'String', 0);

R = Img(:, :, 1);
G = Img(:, :, 2);
B = Img(:, :, 3);

Red = cat(3, R, G*0, B*0);
axes(handles.axes1);
cla('reset');
imshow(Red);
title('Red');
axes(handles.axes2);
imhist(R(:));
grid on
title('Histogram');

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
global Img
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);

set(handles.slider1, 'Value', 0);
set(handles.edit1, 'String', 0);

R = Img(:, :, 1);
G = Img(:, :, 2);
B = Img(:, :, 3);

Red = cat(3, R*0, G, B*0);
axes(handles.axes1);
cla('reset');
imshow(Red);
title('Red');
axes(handles.axes2);
imhist(G(:));
grid on
title('Histogram');

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
global Img
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);

set(handles.slider1, 'Value', 0);
set(handles.edit1, 'String', 0);

R = Img(:, :, 1);
G = Img(:, :, 2);
B = Img(:, :, 3);

Red = cat(3, R*0, G*0, B);
axes(handles.axes1);
cla('reset');
imshow(Red);
title('Red');
axes(handles.axes2);
imhist(B(:));
grid on
title('Histogram');
