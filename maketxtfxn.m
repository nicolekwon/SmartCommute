function maketxtfxn (timeintervals,ZipcodeData, userzip)
%This function creates a txt file with the zipcode information
fid2 = fopen('ZipcodeInfo.txt','w');
fprintf(fid2,'Commuter Data for Zipcode %s\n',num2str(userzip,'%05d'));
fprintf(fid2,'%s %34s\n', 'Time Intervals','Number of Commuters');
for i = 1:14
    fprintf(fid2, '%s %15d\n',timeintervals{i},ZipcodeData(i));
end
fclose(fid2);
end

