%%deleted the date column and only imported the Spot Price data
%%saved the file as 'NYH_GasPrices_86-16.xls'
[PRICE] = xlsread('NYH_GasPrices_86-16.xls');
average = mean(PRICE);
xlswrite('monthly_average_price.xlsx',average);