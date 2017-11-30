function varargout = histogram(varargin)
% HISTOGRAM MATLAB code for histogram.fig
%      HISTOGRAM, by itself, creates a new HISTOGRAM or raises the existing
%      singleton*.
%
%      H = HISTOGRAM returns the handle to a new HISTOGRAM or the handle to
%      the existing singleton*.
%
%      HISTOGRAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HISTOGRAM.M with the given input arguments.
%
%      HISTOGRAM('Property','Value',...) creates a new HISTOGRAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before histogram_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to histogram_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help histogram

% Last Modified by GUIDE v2.5 28-Nov-2017 20:38:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @histogram_OpeningFcn, ...
                   'gui_OutputFcn',  @histogram_OutputFcn, ...
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


% --- Executes just before histogram is made visible.
function histogram_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to histogram (see VARARGIN)

% Choose default command line output for histogram
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes histogram wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = histogram_OutputFcn(hObject, eventdata, handles) 
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
global A
[filename, pathname] = uigetfile( ...
       {'*.jpg;*.fig;*.mat;*.mdl', 'All MATLAB Files (*.m, *.fig, *.mat, *.mdl)'; ...
        '*.*',                   'All Files (*.*)'}, ...
        'Pick a file');
if ~isequal(filename, 0)
    fullname = strcat(pathname, filename);
    A = imread(fullname);
    % axes(handles.axes1);
    imshow(A);
else
    return
end
info = imfinfo(fullfile(pathname, filename));
set(handles.text8, 'String', filename);
set(handles.text9, 'String', info.FileSize);
set(handles.text10, 'String', info.Width);
set(handles.text11, 'String', info.Height);
set(handles.text12, 'String', info.BitDepth);
set(handles.text13, 'String', info.ColorType);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A
colorType = get(handles.text13, 'String');
figure;
switch colorType
    case 'grayscale'
        imhist(A);
        title('Histogram anh xam');
    case 'truecolor'
        subplot(3, 1, 1)
        imhist(A(:, :, 1));
        title('Kenh do');
        subplot(3, 1, 2)
        imhist(A(:, :, 2));
        title('Kenh xanh la cay');
        subplot(3, 1, 3);
        imhist(A(:, :, 3));
        title('Kenh xanh da troi');
end
   
