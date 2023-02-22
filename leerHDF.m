%% leer hdf
import matlab.io.hdfeos.*

clear;
dir_data = "D:\DATA";
    
%info = hdfinfo(dir_data+'\MOD13Q1\061\MOD13Q1.A2023001.h08v06.061.2023019191550.hdf');
%disp(info);

gfid = gd.open(dir_data+'\MOD13Q1\061\MOD13Q1.A2023001.h08v06.061.2023019191550.hdf');

gridID = gd.attach(gfid,'MODIS_Grid_16DAY_250m_500m_VI');

% Obtiene la información del campo, latitud y longitud
[data,lat,lon] = gd.readField(gridID,'250m 16 days pixel reliability');

gd.detach(gridID);
gd.close(gfid);