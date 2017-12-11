%convertWind test script

oldLat = 41.88592;
oldLon = -87.62788;

u = uvelOLD;
v = vvelOLD;

deltat = 3600; %s

windvec = deltat*sqrt((u).^2+(v).^2);
windtheta = atand(v./u);

dlat = windvec.*sind(windtheta);
dlon = windvec.*cosd(windtheta);

%Input the latitude value and get m-to-deg conversion multipliers
[latlen, longlen] = Lat2metersInLatLon(oldLat);

dlat_deg = dlat*(1/latlen);
dlon_deg = dlon*(1/longlen);

newlat = oldLat+dlat_deg;
newlon = oldLon+dlon_deg;
