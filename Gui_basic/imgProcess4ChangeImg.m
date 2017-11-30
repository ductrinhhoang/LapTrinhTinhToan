function varargout = imgProcess4ChangeImg(varargin)
% IMGPROCESS4CHANGEIMG MATLAB code for imgProcess4ChangeImg.fig
%      IMGPROCESS4CHANGEIMG, by itself, creates a new IMGPROCESS4CHANGEIMG or raises the existing
%      singleton*.
%
%      H = IMGPROCESS4CHANGEIMG returns the handle to a new IMGPROCESS4CHANGEIMG or the handle to
%      the existing singleton*.
%
%      IMGPROCESS4CHANGEIMG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMGPROCESS4CHANGEIMG.M with the given input arguments.
%
%      IMGPROCESS4CHANGEIMG('Property','Value',...) creates a new IMGPROCESS4CHANGEIMG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imgProcess4ChangeImg_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imgProcess4ChangeImg_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imgProcess4ChangeImg

% Last Modified by GUIDE v2.5 30-Nov-2017 00:02:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imgProcess4ChangeImg_OpeningFcn, ...
                   'gui_OutputFcn',  @imgProcess4ChangeImg_OutputFcn, ...
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


% --- Executes just before imgProcess4ChangeImg is made visible.
function imgProcess4ChangeImg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imgProcess4ChangeImg (see VARARGIN)

% Choose default command line output for imgProcess4ChangeImg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.binaryVal,'string',handles.binarySlider.Value);


% UIWAIT makes imgProcess4ChangeImg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = imgProcess4ChangeImg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in openFile.
function openFile_Callback(hObject, eventdata, handles)
% hObject    handle to openFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global img imgSave
    [filename, pathname] = uigetfile( ...
       {'*.jpg;*.png;*.bmp', 'All Image Files (*.jpg, *.png, *.bmp )'; ...
        '*.*',                   'All Files (*.*)'}, ...
        'Open file');
    if ~isequal(filename,0)
        imgPath = strcat(pathname, filename);
        imgInfo = imfinfo(imgPath);
        if imgInfo.BitDepth == 24
            set(handles.saveImg,'Enable','off');
            axes(handles.axes1);
            img = imread(imgPath);
            imshow(img);
            title('Image');
        else
            msgbox('Please choose RBG Image');
        end
    end


% --- Executes on slider movement.
function binarySlider_Callback(hObject, eventdata, handles)
% hObject    handle to binarySlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global img imgSave
axes(handles.axes2);
set(handles.saveImg,'Enable','on');
set(handles.greenChoosen,'value',0);
set(handles.blueChoosen,'value',0);
set(handles.redChoosen,'value',0);
set(handles.grayChoosen,'value',0);
set(handles.binaryVal,'string',num2str(handles.binarySlider.Value));

gray = rgb2gray(img);
thresh = get(handles.binarySlider, 'value');
imgSave = im2bw(gray, thresh);
imshow(imgSave);

% --- Executes during object creation, after setting all properties.
function binarySlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to binarySlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function binaryVal_Callback(hObject, eventdata, handles)
% hObject    handle to binaryVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of binaryVal as text
%        str2double(get(hObject,'String')) returns contents of binaryVal as a double
global img imgSave
val = str2num(handles.binaryVal.String);
if val >= 0 && val <= 1
    set(handles.saveImg,'Enable','on');
    set(handles.greenChoosen,'value',0);
    set(handles.blueChoosen,'value',0);
    set(handles.redChoosen,'value',0);
    set(handles.binarySlider,'value',val);
    set(handles.grayChoosen,'value',0);
    axes(handles.axes2);
    gray = rgb2gray(img);
    thresh = get(handles.binarySlider, 'value');
    imgSave = im2bw(gray, thresh);
    imshow(imgSave);
    title('');
else
    msgbox('Value must greater than or equal to 0 and less than or equal to 1');
end

% --- Executes during object creation, after setting all properties.
function binaryVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to binaryVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in grayChoosen.
function grayChoosen_Callback(hObject, eventdata, handles)
% hObject    handle to grayChoosen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grayChoosen
global img imgSave
set(handles.saveImg,'Enable','on');
set(handles.greenChoosen,'value',0);
set(handles.blueChoosen,'value',0);
set(handles.redChoosen,'value',0);
set(handles.binarySlider,'value',0);
set(handles.binaryVal,'string',0);

imgSave = rgb2gray(img);
axes(handles.axes2);
imshow(imgSave);
title('Grayscale');

% --- Executes on button press in redChoosen.
function redChoosen_Callback(hObject, eventdata, handles)
% hObject    handle to redChoosen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of redChoosen
global img imgSave
set(handles.saveImg,'Enable','on');
set(handles.greenChoosen,'value',0);
set(handles.blueChoosen,'value',0);
set(handles.grayChoosen,'value',0);
set(handles.binarySlider,'value',0);
set(handles.binaryVal,'string',0);

c = img(:,:,1);
z = zeros(size(c,1),size(c,2));
imgSave = cat(3,c,z,z);
axes(handles.axes2);
imshow(imgSave);
title('Red imgSave');

% --- Executes on button press in greenChoosen.
function greenChoosen_Callback(hObject, eventdata, handles)
% hObject    handle to greenChoosen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of greenChoosen
global img imgSave
set(handles.saveImg,'Enable','on');
set(handles.redChoosen,'value',0);
set(handles.blueChoosen,'value',0);
set(handles.grayChoosen,'value',0);
set(handles.binarySlider,'value',0);
set(handles.binaryVal,'string',0);

c = img(:,:,2);
z = zeros(size(c,1),size(c,2));
imgSave = cat(3,z,c,z);
axes(handles.axes2);
imshow(imgSave);
title('Green imgSave');

% --- Executes on button press in blueChoosen.
function blueChoosen_Callback(hObject, eventdata, handles)
% hObject    handle to blueChoosen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of blueChoosen
global img imgSave
set(handles.saveImg,'Enable','on');
set(handles.greenChoosen,'value',0);
set(handles.redChoosen,'value',0);
set(handles.grayChoosen,'value',0);
set(handles.binarySlider,'value',0);
set(handles.binaryVal,'string',0);

c = img(:,:,3);
z = zeros(size(c,1),size(c,2));
imgSave = cat(3,z,z,c);
axes(handles.axes2);
imshow(imgSave);
title('Blue imgSave');


% --- Executes on button press in saveImg.
function saveImg_Callback(hObject, eventdata, handles)
% hObject    handle to saveImg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global imgSave
[filename, pathname] = uiputfile( ...
       {'*.jpg';'*.png';'*.bmp';'*jpeg';'*.*'}, ...
        'Save file');
if ~isequal(filename,0)
   disp('User pressed cancel');
   imwrite(imgSave, [pathname, filename]);
end
