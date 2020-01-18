function [ZipcodeData] = extractZip(AllData, userzip)
%This function extracts the data per the zipcode specified by the user
ZipcodeRowIndex = 1;
while (AllData{1,2}(ZipcodeRowIndex,1) ~= userzip)
    ZipcodeRowIndex = ZipcodeRowIndex+1;
end
%columns 4-17 of the spreadsheet contain the number of commuters per time
%interval
ZipcodeData = zeros(1,13);
for i = 5:18
    j = i-4;
    ZipcodeData(j) = AllData{1,i}(ZipcodeRowIndex,1);
end
end

