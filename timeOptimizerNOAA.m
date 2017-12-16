%timeOptimizer for NOAA dataset

%{
% NOAA data retrieval
NOAAstring = '20171210';
url = ['http://nomads.ncep.noaa.gov:9090/dods/gfs_0p25_1hr/gfs',NOAAstring,'/gfs_0p25_1hr_00z'];
nco = ncgeodataset(url);

time = 1;
alt = 2;
lat = 3;
lon = 4;

% U and V Component Velocity
uvel = double(squeeze(nco{'ugrdprs'}(time, alt, lat, lon))); %indexed at all parameters
vvel = double(squeeze(nco{'vgrdprs'}(time, alt, lat, lon))); %indexed at all parameters

%}

timestep = 2:length(wd_time);
wd_time = {'10 Dec 2017 16:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000','10 Dec 2017 17:00:00.000'};

eval(sprintf('waypoint%d.Time = ''%d'' ',timestep,str2mat(wd_time(timestep))));


