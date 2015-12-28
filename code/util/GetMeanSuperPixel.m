function meanCol = GetMeanSuperPixel(image, pixelList)
% Code Author: Wangjiang Zhu
% Email: wangjiang88119@gmail.com
% Date: 3/24/2014

[h, w, chn] = size(image);
tmpImg=reshape(image, h*w, chn);

spNum = length(pixelList);
meanCol=zeros(spNum, chn);
for i=1:spNum
    meanCol(i, :) = mean(tmpImg(pixelList{i},:), 1);      %tmpImg(pixelList{i},:) 是像素坐标为pixelList{i}时的颜色
end
% if chn ==1 %for gray images
%     meanCol = repmat(meanCol, [1, 3]);
% end