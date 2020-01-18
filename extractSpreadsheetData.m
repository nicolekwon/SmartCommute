function [AllData] = extractSpreadsheetData()
%This function reads all of the spreadsheet data
fid = fopen('ACS_17_5YR_B08132_with_ann.txt');
AllData = textscan(fid, '%s %d %s %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d', 'Delimiter', ',', 'HeaderLines', 2);
fclose(fid);
end

