vid = videoinput('tisimaq_r2013', 1, 'MJPG (1280x720)');
preview(vid);

src = getselectedsource(vid);

vid.FramesPerTrigger = 1;

triggerconfig(vid, 'manual');

triggerconfig(vid, 'immediate');

preview(vid);

start(vid);

stoppreview(vid);

imwrite(getdata(vid), 'C:\Users\Faculty\Documents\MATLAB\a.png');

