vid = videoinput('tisimaq_r2013', 1, 'MJPG (1280x720)');
for i = 1:3
src = getselectedsource(vid);

vid.FramesPerTrigger = 1;

preview(vid);

start(vid);

stoppreview(vid);

imwrite(getdata(vid), 'C:\Users\Faculty\Documents\MATLAB\001.png');

vid.FramesPerTrigger = 2;

vid.FramesPerTrigger = 1;

preview(vid);

stoppreview(vid);

end