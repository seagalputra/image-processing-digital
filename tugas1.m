function varargout = tugas1(varargin)
% TUGAS1 MATLAB code for tugas1.fig
%      TUGAS1, by itself, creates a new TUGAS1 or raises the existing
%      singleton*.
%
%      H = TUGAS1 returns the handle to a new TUGAS1 or the handle to
%      the existing singleton*.
%
%      TUGAS1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS1.M with the given input arguments.
%
%      TUGAS1('Property','Value',...) creates a new TUGAS1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugas1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugas1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugas1

% Last Modified by GUIDE v2.5 26-Apr-2018 10:40:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugas1_OpeningFcn, ...
                   'gui_OutputFcn',  @tugas1_OutputFcn, ...
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


% --- Executes just before tugas1 is made visible.
function tugas1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tugas1 (see VARARGIN)

% Choose default command line output for tugas1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tugas1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugas1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;
[File_Name Path_Name] = uigetfile({'*.jpg';'*.bmp'},'File Selector');
handles.myImage = strcat(Path_Name, File_Name);

gambar = imread(handles.myImage);
axes(handles.before);
imshow(gambar);
% set(handles.edit1,'string',filename);
% set(handles.edit2,'string',image);

% save the updated handles object
guidata(hObject,handles);


% --- Executes on button press in grayscale.
function grayscale_Callback(hObject, eventdata, handles)
% hObject    handle to grayscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;
g = grayscale(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(g);

% --- Executes on button press in zoomin.
function zoomin_Callback(hObject, eventdata, handles)
% hObject    handle to zoomin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;
z = zoom_in(gambar, 3, 3);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(z);

% --- Executes on button press in zoomout.
function zoomout_Callback(hObject, eventdata, handles)
% hObject    handle to zoomout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;
zo = zoom_in(gambar, 0.5, 0.5);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(zo);

% --- Executes on button press in inverse.
function inverse_Callback(hObject, eventdata, handles)
% hObject    handle to inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;
i = inverse(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(i);


% --- Executes on button press in flip_vertical.
function flip_vertical_Callback(hObject, eventdata, handles)
% hObject    handle to flip_vertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;
f = flip_vertical(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(f);

% --- Executes on button press in flip_horizontal.
function flip_horizontal_Callback(hObject, eventdata, handles)
% hObject    handle to flip_horizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;
h = flip_horizontal(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(h);

% --- Executes on button press in crop.
function crop_Callback(hObject, eventdata, handles)
% hObject    handle to crop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

c = crop(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(c);

% --- Executes on button press in brightness_up.
function brightness_up_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_up (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

prompt = {'Enter brightness value:'};
dlg_title = 'Value';
num_lines = 1;
answer = inputdlg(prompt,dlg_title,num_lines);
answer = str2num(cell2mat(answer));

% menaikkan kecerahan sebanyak nilai inputan user
up = gambar + answer;

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(up);
% --- Executes on button press in brightness_down.
function brightness_down_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_down (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

prompt = {'Enter brightness value:'};
dlg_title = 'Value';
num_lines = 1;
answer = inputdlg(prompt,dlg_title,num_lines);
answer = str2num(cell2mat(answer));

% menaikkan kecerahan sebanyak nilai inputan user
down = gambar - answer;

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(down);

% --- Executes on button press in brightness_kali.
function brightness_kali_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_kali (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

prompt = {'Enter brightness value:'};
dlg_title = 'Value';
num_lines = 1;
answer = inputdlg(prompt,dlg_title,num_lines);
answer = str2num(cell2mat(answer));

% menaikkan kecerahan sebanyak nilai inputan user
kali = gambar * answer;

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(kali);

% --- Executes on button press in brightness_bagi.
function brightness_bagi_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_bagi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

prompt = {'Enter brightness value:'};
dlg_title = 'Value';
num_lines = 1;
answer = inputdlg(prompt,dlg_title,num_lines);
answer = str2num(cell2mat(answer));

% menaikkan kecerahan sebanyak nilai inputan user
down = gambar / answer;

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(down);


% --- Executes on button press in rotate90.
function rotate90_Callback(hObject, eventdata, handles)
% hObject    handle to rotate90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

r = rotate(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(r);

% --- Executes on button press in rotate180.
function rotate180_Callback(hObject, eventdata, handles)
% hObject    handle to rotate180 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

r_180 = flip_vertical(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(r_180);

% --- Executes on button press in rotate270.
function rotate270_Callback(hObject, eventdata, handles)
% hObject    handle to rotate270 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

temp_r = rotate(gambar);
r_270 = flip_horizontal(temp_r);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(r_270);

% --- Executes on button press in histogram.
function histogram_Callback(hObject, eventdata, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

histogram(gambar);

axes(handles.before);
imshow(gambar);


% --- Executes on button press in edge_detection.
function edge_detection_Callback(hObject, eventdata, handles)
% hObject    handle to edge_detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

e = edge(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(e);

% --- Executes on button press in blur.
function blur_Callback(hObject, eventdata, handles)
% hObject    handle to blur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

b = blur(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(b);

% --- Executes on button press in sharpening.
function sharpening_Callback(hObject, eventdata, handles)
% hObject    handle to sharpening (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

s = sharp(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(s);


% --- Executes on button press in mean_filter.
function mean_filter_Callback(hObject, eventdata, handles)
% hObject    handle to mean_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

mea = mean_filter(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(mea);

% --- Executes on button press in median_filter.
function median_filter_Callback(hObject, eventdata, handles)
% hObject    handle to median_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

med = median_filter(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(med);

% --- Executes on button press in modus_filter.
function modus_filter_Callback(hObject, eventdata, handles)
% hObject    handle to modus_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

modus = modus_filter(gambar);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(modus);


% --- Executes on button press in region_growth.
function region_growth_Callback(hObject, eventdata, handles)
% hObject    handle to region_growth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

x = str2num(get(handles.x,'string'));
y = str2num(get(handles.y,'string'));

segmented = region_growth(gambar, x, y);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(segmented);

function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dilasi.
function dilasi_Callback(hObject, eventdata, handles)
% hObject    handle to dilasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

g = grayscale(gambar);
dil = dilasi(g);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(dil);

% --- Executes on button press in erosi.
function erosi_Callback(hObject, eventdata, handles)
% hObject    handle to erosi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gambar;
global File_Name Path_Name;

g = grayscale(gambar);
ero = erosi(g);

axes(handles.before);
imshow(gambar);

axes(handles.after);
imshow(ero);