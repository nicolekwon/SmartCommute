function GraphZipData(timeintervals,userzip, ZipcodeData)
%This function will graph the number of people in each time interval in the
%user-defined zipcode.
numTimeIntervals = length(timeintervals);
bar([1:numTimeIntervals],ZipcodeData)
bar(ZipcodeData,'m');
xlabel('Time Intervals')
ylabel('Number of Commuters')
title(['Number of Commuters in Zipcode ' num2str(userzip,'%05d')])
xticklabels(timeintervals)
xtickangle(90)
end

