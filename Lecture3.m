%%Lecture 3 Problem set - Functions

%%Deleted monthly price data for years with incomplete records

%%Download monthly nat gas price data from Jan 97 to Dec 2015 as
%%'NatGasPrices'.xls

function [matrixB] = annual_profile (data)
    data = xlsread('NatGasPrices.xls');
    spot = 1;
    N = length(data)/12;
    matrix = zeros(12,N);
    for i = 1:N
        for j = 1:12
            matrix(j,i) = data(spot);
            spot = spot+1;
        end
    end
    
    dim = size(matrix);
    columns = dim(2);
    number = columns - 6;
    matrixB = matrix(:,number:columns) %% X should return only the last 8 columns

end

