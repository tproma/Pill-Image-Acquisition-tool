%%
imaqhwinfo
imaqhwinfo('winvideo')
vid = videoinput('winvideo',1)
preview(vid);
image = getsnapshot(vid);
stop(vid);
imshow(image) 

.............................................
im = imread('C:\Users\Tanjina Proma\Pictures\Camera Roll\WIN_20170711_00_33_24_Pro.jpg');
s = size(im)
sam_1 = rand(5,3,720,1280);

button = questdlg('save pic? ')

for ii = 1:3
 fn = sprintf('file_%s.txt',num2str(ii,04i')); %jpegs named file_0001.jpg, file_0002.jpg etc.
 save(fn,ii)
end

% ........................................
%%
imaqhwinfo
imaqhwinfo('tisimaq_r2013')
vid = videoinput('tisimaq_r2013',1)
preview(vid);

med_num = 180;
med_sample = 5;
med_sample_side = 3;
image_row = 720;
image_col = 1280;

sample = random(med_num,med_sample,med_sample_side,image_row,image_col);
% sample = random(180,5,3,720,1280);

for i = 1:med_num
    for j = 1:med_sample
        image = getsnapshot(vid);
        %stop(vid);
        imshow(image)
        button = questdlg('Save Pic? ')
        if button == 'yes'
            sample(i,j,:,:,:) = image;
            
%             fn = sprintf('file_%s.txt',num2str(ii,04i')); %jpegs named file_0001.jpg, file_0002.jpg etc.
%             save(fn,ii)
        end
            
        
    end
end

%% .......................................................................

vid = videoinput('tisimaq_r2013',1, 'MJPG (1280x720)');
preview(vid);

src = getselectedsource(vid);





