function varargout = imgProcess2ReadAndShowImageV2(varargin)
% IMGPROCESS2READANDSHOWIMAGEV2 MATLAB code for imgProcess2ReadAndShowImageV2.fig
%      IMGPROCESS2READANDSHOWIMAGEV2, by itself, creates a new IMGPROCESS2READANDSHOWIMAGEV2 or raises the existing
%      singleton*.
%
%      H = IMGPROCESS2READANDSHOWIMAGEV2 returns the handle to a new IMGPROCESS2READANDSHOWIMAGEV2 or the handle to
%      the existing singleton*.
%
%      IMGPROCESS2READANDSHOWIMAGEV2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMGPROCESS2READANDSHOWIMAGEV2.M with the given input arguments.
%
%      IMGPROCESS2READANDSHOWIMAGEV2('Property','Value',...) creates a new IMGPROCESS2READANDSHOWIMAGEV2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imgProcess2ReadAndShowImageV2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imgProcess2ReadAndShowImageV2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imgProcess2ReadAndShowImageV2

% Last Modified by GUIDE v2.5 29-Nov-2017 21:23:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imgProcess2ReadAndShowImageV2_OpeningFcn, ...
                   'gui_OutputFcn',  @imgProcess2ReadAndShowImageV2_OutputFcn, ...
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


% --- Executes just before imgProcess2ReadAndShowImageV2 is made visible.
function imgProcess2ReadAndShowImageV2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imgProcess2ReadAndShowImageV2 (see VARARGIN)

% Choose default command line output for imgProcess2ReadAndShowImageV2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes imgProcess2ReadAndShowImageV2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = imgProcess2ReadAndShowImageV2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in openImg.
function openImg_Callback(hObject, eventdata, handles)
% hObject    handle to openImg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global img
    [filename, pathname] = uigetfile( ...
       {'*.jpg;*.png;*.bmp', 'All Image Files (*.jpg, *.png, *.bmp )'; ...
        '*.*',                   'All Files (*.*)'}, ...
        'Open file');
    if ~isequal(filename,0)
        imgPath = strcat(pathname, filename);
        img = imread(imgPath);
        imshow(img);
        imgInfo = imfinfo(imgPath);
        set(handles.imgHeight,'string',imgInfo.Height);
        set(handles.imgWidth,'string',imgInfo.Width);
        set(handles.imgSize,'string',imgInfo.FileSize);
        set(handles.imgBit,'string',imgInfo.BitDepth);
        set(handles.imgKind,'string',imgInfo.ColorType);
    end




function imgKind_Callback(hObject, eventdata, handles)
% hObject    handle to imgKind (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of imgKind as text
%        str2double(get(hObject,'String')) returns contents of imgKind as a double


% --- Executes during object creation, after setting all properties.
function imgKind_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imgKind (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function imgBit_Callback(hObject, eventdata, handles)
% hObject    handle to imgBit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of imgBit as text
%        str2double(get(hObject,'String')) returns contents of imgBit as a double


% --- Executes during object creation, after setting all properties.
function imgBit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imgBit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function imgSize_Callback(hObject, eventdata, handles)
% hObject    handle to imgSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of imgSize as text
%        str2double(get(hObject,'String')) returns contents of imgSize as a double


% --- Executes during object creation, after setting all properties.
function imgSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imgSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function imgWidth_Callback(hObject, eventdata, handles)
% hObject    handle to imgWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of imgWidth as text
%        str2double(get(hObject,'String')) returns contents of imgWidth as a double


% --- Executes during object creation, after setting all properties.
function imgWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imgWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function imgHeight_Callback(hObject, eventdata, handles)
% hObject    handle to imgHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of imgHeight as text
%        str2double(get(hObject,'String')) returns contents of imgHeight as a double


% --- Executes during object creation, after setting all properties.
function imgHeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imgHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in drawHis.
function drawHis_Callback(hObject, eventdata, handles)
% hObject    handle to drawHis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global img
    if size(handles.imgHeight.String, 2) > 0 
        %handles.imgHeight.String co chieu thu 2 la chieu mau co ban cua anh
        figure;%Mo anh bang cua so khac
        switch handles.imgKind.String
            case 'grayscale'
                imhist(img);
                title('Histogram Grayscale');
            case 'truecolor'
                subplot(3,1,1);
                imhist(img(:,:,1));
                title('Histogram Red');
                subplot(3,1,2);
                imhist(img(:,:,2));
                title('Histogram Blue');
                subplot(3,1,3);
                imhist(img(:,:,3));
                title('Histogram Green');
        end
    else
       img = [];
       msgbox('Please choose a picture!');
    end
