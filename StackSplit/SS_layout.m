function h=SS_layout(push1_callback,push2_callback,push3_callback,push4_callback,list_callback,...
    check1_callback,check2_callback,check3_callback,check4_callback,pop1_callback,push5_callback,...
    pop2_callback,pop3_callback,pop4_callback,pop5_callback)
%==========================================================================
%##########################################################################
%#                                                                        #
%#  This function is part of StackSplit - a plugin for multi-event shear  #
%#  wave splitting analyses in SplitLab                                   #
%#                                                                        #
%##########################################################################
%==========================================================================
% FILE DESCRIPTION
%
% generate and setup layout for StackSplit plugin 
%
%==========================================================================
% LICENSE
%
% Copyright (C) 2016  Michael Grund, Karlsruhe Institute of Technology (KIT), 
% GitHub: https://github.com/michaelgrund
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
% 
% TERMS OF USE
%
% StackSplit is provided "as is" and without any warranty. The author cannot be
% held responsible for anything that happens to you or your equipment. Use it
% at your own risk.
%==========================================================================

%==================================================================================================================================
%================================================================================================================================== 

global config

shift_right=45;

% check if a SS figure window is already open, otherwise create one
h.fig=findobj('type','figure','name',['StackSplit ' config.SS_version]);

if isempty(h.fig)
    h.fig=figure('units','pixels','name',['StackSplit ' config.SS_version], 'numbertitle','off','menubar','none');
    set(h.fig, 'position', [150, 21, 1450, 600])
else
    close(h.fig)
    %.........................................
    SS_stacksplit_start;
    %.........................................
end

set(gcf, 'Resize', 'off');

%==================================================================================================================================  
%==================================================================================================================================                         
% Panel layout

h.panel(1) = uipanel('Units','pixel','Title','Selection window',...
    'FontSize',10,'Position',[14 22 902 568], 'BackgroundColor', [224   223   227]/255);

h.panel(2) = uipanel('Units','pixel','Title','Minimum energy surface',...
    'FontSize',10,'Position',[934 22 502 568], 'BackgroundColor', [224   223   227]/255);

h.panel(3) = uipanel('Parent',h.panel(2),'Units','pixel',...
    'FontSize',10,'Position',[158.5,15,182,49], 'BackgroundColor', 'w');

h.panel(4)= uipanel('Parent',h.panel(1),'Units','pixel','title','Surface stack',...
    'FontSize',10,'Position',[580+shift_right 7 119 170], 'BackgroundColor', [224   223   227]/255,'TitlePosition','centertop');

h.panel(5)= uipanel('Parent',h.panel(1),'Units','pixel','title','Joint inversion',...
    'FontSize',10,'Position',[715+shift_right 76 119 101], 'BackgroundColor', [224   223   227]/255,'TitlePosition','centertop');

h.panel(6) = uipanel('Units','pixel','Title','Waveforms',...
    'FontSize',10,'Position',[934 22 502 568], 'BackgroundColor', [224   223   227]/255);

h.panel(7) = uipanel('Parent',h.panel(1),'Units','pixel',... % panel "around" listbox
    'FontSize',10,'Position',[28,68,577,419], 'BackgroundColor', [224   223   227]/255);

h.panel(8) = uipanel('Parent',h.panel(1),'Units','pixel','Title','Limits',... 
    'FontSize',10,'Position',[600+shift_right,187,214,102], 'BackgroundColor', [224   223   227]/255,'TitlePosition','centertop');

% event info header above listbox
h.ev_info = uicontrol('style','text','horizontalalignment','left');
set(h.ev_info,'String',['                  t0time               JD      BAZ     dist     inipol     inc    SNR         filter          pha'])
set(h.ev_info,'Position',[45,493,572,15],'fontsize',10)
set(h.ev_info,'BackgroundColor',[0.7 0.7 0.7]);

% staname beside worldmap
h.staname_info = uicontrol('style','text','horizontalalignment','left');
set(h.staname_info,'String',config.stnname)
set(h.staname_info,'Position',[790+shift_right,550,68,22],'fontsize',15)

set(h.staname_info,'BackgroundColor',[224   223   227]/255);  

%==================================================================================================================================  
%==================================================================================================================================                         
% Panel << Selection window >> control buttons

h.push(1)=uicontrol('Parent',h.panel(1),'Units','pixel',...
                             'Style','pushbutton',...
                             'BackgroundColor','w',...
                             'Position',[85,15,120,35],...
                             'String', 'Stack',...
                             'Callback',push1_callback);

h.push(2)=uicontrol('Parent',h.panel(1),'Units','pixel',...
                             'Style','pushbutton',...
                             'BackgroundColor','w',...
                             'Position',[252,15,120,35],...
                             'String', 'Clear',...  
                             'Callback',push2_callback);


h.push(3)=uicontrol('Parent',h.panel(1),'Units','pixel',...
                             'Style','pushbutton',...
                             'BackgroundColor','w',...
                             'Position',[419,15,120,35],...
                             'String', 'Save',...  
                             'Callback',push3_callback);

h.push(4)=uicontrol('Parent',h.panel(1),'Units','pixel',...
                             'Style','pushbutton',...
                             'BackgroundColor','w',...
                             'Position',[737.5+shift_right,19,72,21],...
                             'String', 'Exit',...  
                             'Callback',push4_callback);
                         
h.push(5)=uicontrol('Parent',h.panel(1),'Units','pixel',...
                             'Style','pushbutton',...
                             'BackgroundColor','w',...
                             'Position',[102.5,15,420,35],...
                             'String', 'Inversion',...
                             'Callback',push5_callback);
    
%==================================================================================================================================  
%==================================================================================================================================                         
% Panel << Selection window >> check boxes

h.check(1)=uicontrol('Parent',h.panel(4),'Units','pixel',...
                             'Style','radiobutton',...
                             'BackgroundColor',[224   223   227]/255,...
                             'Position',[13 126 96 17],...
                             'String', 'no weight',...  
                             'Callback',check1_callback);

h.check(2)=uicontrol('Parent',h.panel(4),'Units','pixel',...
                             'Style','radiobutton',...
                             'BackgroundColor',[224   223   227]/255,...
                             'Position',[13 94 91 17],...
                             'String', 'WS (1998)',...  
                             'Callback',check2_callback);
                         
h.check(3)=uicontrol('Parent',h.panel(4),'Units','pixel',...
                             'Style','radiobutton',...
                             'BackgroundColor',[224   223   227]/255,...
                             'Position',[13 59 86 17],...
                             'String', 'RH (1999)',...  
                             'Callback',check3_callback);  
                         
h.check(4)=uicontrol('Parent',h.panel(5),'Units','pixel',...
                             'Style','radiobutton',...
                             'BackgroundColor',[224   223   227]/255,...
                             'Position',[13 58 70 17],...
                             'String', 'SIMW',...  
                             'Callback',check4_callback);   
                                                
%==================================================================================================================================  
%==================================================================================================================================                         
% Panel << Selection window >> popup wdw for SIMW taper selection      

h.pop(1)=uicontrol('Parent',h.panel(5),'Units','pixel',...
                             'Style','popup',...
                             'BackgroundColor','w',...
                             'Position',[15 15 70 17],...
                             'String', 'none|10|20|30|40|50|60|70|80|90|100',...
                             'Callback',pop1_callback); 

h.taptext=uicontrol('Parent',h.panel(5),'Style','text',...
        'BackgroundColor',[224   223   227]/255,...
        'Position',[8 32 70 17],...
        'String','% taper');
       
%==================================================================================================================================  
%==================================================================================================================================                         
% Panel << Selection window >> popup wdw for selection between Emap and EVmap (lambda2map)    

h.pop(4)=uicontrol('Parent',h.panel(4),'Units','pixel',...
                             'Style','popup',...
                             'BackgroundColor','w',...
                             'Position',[15 15 70 17],...
                             'String', 'Esurf|EVsurf',...
                             'Callback',pop4_callback); 

h.inputtext=uicontrol('Parent',h.panel(4),'Style','text',...
        'BackgroundColor',[224   223   227]/255,...
        'Position',[8 33 70 17],...
        'String','Surf input');    
                       
%==================================================================================================================================  
%==================================================================================================================================                         
% Panel << Selection window >> listbox
                   
h.list=uicontrol('Parent',h.panel(1),'Units','pixel',...
                             'Style','listbox',...
                             'BackgroundColor','w',...
                             'Position',[30,70,573,400],...
                             'Callback',list_callback);                           

%==================================================================================================================================  
%==================================================================================================================================                                                
% Panel << Error map >> axes                      
                                                
h.axEmap=axes('Parent',h.panel(2),'Units','pixel',...
                             'Position',[56,111,385,411]);

%==================================================================================================================================  
%================================================================================================================================== 
% Panel << Waveforms >> axes               
                                                
h.axWF=axes('Parent',h.panel(6),'Units','pixel',...
                             'Position',[60,300,400,225]);


h.axWF2=axes('Parent',h.panel(6),'Units','pixel',...
                              'Position',[60,50,400,225]);                        
                         
%==================================================================================================================================  
%==================================================================================================================================                       
% Panel << Selection window, Limits >> popup wdw for max BAZ, max dist and max pol   
   
h.pop(2)=uicontrol('Parent',h.panel(8),'Units','pixel',...
                             'Style','popup',...
                             'BackgroundColor','w',...
                             'Position',[123 65 70 17],...
                             'String', 'none|1|2|3|4|5|6|7|8|9|10',...
                             'Callback',pop2_callback); 

h.maxbaztext1=uicontrol('Parent',h.panel(8),'Style','text',...
        'BackgroundColor',[224   223   227]/255,...
        'Position',[11 61 100 17],...
        'String',['max ' char(hex2dec('0394')) 'BAZ in °']);       
    
%............................................................................    

h.pop(3)=uicontrol('Parent',h.panel(8),'Units','pixel',...
                             'Style','popup',...
                             'BackgroundColor','w',...
                             'Position',[123 40 70 17],...
                             'String', 'none|1|2|3|4|5|6|7|8|9|10',...
                             'Callback',pop3_callback); 

h.maxdisttext1=uicontrol('Parent',h.panel(8),'Style','text',...
        'BackgroundColor',[224   223   227]/255,...
        'Position',[8 35 100 17],...
        'String',['max ' char(hex2dec('0394')) 'dist in °']);  
       
%............................................................................    
% limit for initial polarization    
    
h.pop(5)=uicontrol('Parent',h.panel(8),'Units','pixel',...
                             'Style','popup',...
                             'BackgroundColor','w',...
                             'Position',[123 15 70 17],...
                             'String', 'none|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20',...
                             'Callback',pop5_callback); 

h.maxpoltext1=uicontrol('Parent',h.panel(8),'Style','text',...
        'BackgroundColor',[224   223   227]/255,...
        'Position',[13 9 100 17],...
        'String',['max ' char(hex2dec('0394')) 'inipol in °']);   
    
end

%==================================================================================================================================  
%==================================================================================================================================  
% EOF