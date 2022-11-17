%% 該当する被験者全員のデータを.eegから.setに変換する

clear 
close all
clc

%%

addpath('/Users/harukakobayashi/Documents/MATLAB/EEGLAB/eeglab');
eeglab;close

def_path = pwd;
rawdata_path = [pwd filesep 'RAWDATA'];
% rawdata_path = [pwd filesep 'temp_raw10to17'];
scripts_path = [pwd filesep 'scripts'];
savepath = [pwd filesep 'RAWDATA'];
addpath(scripts_path)

cd(rawdata_path)
% tmp = dir('COI_*');
tmp(1).name = 'ARSQ_2022';



for i = 1:length(tmp)
    cd(tmp(i).name)
    f = dir('*.vhdr');
    filename = f.name;
    filepath = pwd;
    
    %% eeg2set
    eeg2set(filename,filepath,savepath)
    
    cd(rawdata_path)
end
    
cd(def_path)

clear
close all
clc

disp('Done.')

