function [ M ] = csvToMatrix( filename )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
list=csvimport(filename);
N = size(list,1);
d = size(list,2);
M = zeros(N,d);
for i=2:N
    if size(strfind(list{i,2},'DIAG'),1)==1
        M(i,1) = list{i,1};
        M(i,2) = str2num(list{i,2}(6:end));
        if M(i,2)>100
            number = num2str(M(i,2));
            number = number(1:3);
            M(i,2)=str2num(number);
        end
        M(i,3) = list{i,3};
        M(i,4) = list{i,4};
    end
end
end

