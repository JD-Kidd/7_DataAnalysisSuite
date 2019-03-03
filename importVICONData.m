function [ t, x, y, z ] = importVICONData( filename )

framerate = 100; % Hz

data = xlsread( filename );

% crop out header
data = data(5:end,:);

t = data(:,1) / framerate;
x = data(:,6) / 1000;
y = data(:,7) / 1000;
z = data(:,8) / 1000;

end