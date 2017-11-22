% CS171   PS1
% Name: Tsung-Ying Chen 
% SID: 861310198 
% Date: 10/14/2017 
function [priorp,condp] = learnnb(trainX,trainY)

m = size(trainY,1);
n = size(trainX,2);

probOne = sum(trainY) / m;
probZero = 1 - probOne;
priorp = [probZero probOne];

condp = zeros(3,2,n);
for k = 1:n
    countMatrix = zeros(3,2);
    for t = 1:m
        if trainX(t,k) == 0 && trainY(t) == 0
            countMatrix(1,1) = countMatrix(1,1) + 1;
        elseif  trainX(t,k) == 0 && trainY(t) == 1
            countMatrix(1,2) = countMatrix(1,2) + 1;
        elseif  trainX(t,k) == 1 && trainY(t) == 0
            countMatrix(2,1) = countMatrix(2,1) + 1;
        elseif  trainX(t,k) == 1 && trainY(t) == 1
            countMatrix(2,2) = countMatrix(2,2) + 1;
        elseif  trainX(t,k) == 2 && trainY(t) == 0
            countMatrix(3,1) = countMatrix(3,1) + 1;
        elseif  trainX(t,k) == 2 && trainY(t) == 1
            countMatrix(3,2) = countMatrix(3,2) + 1;
        else
            disp('matrix err')
        end
    end
    
    countZero = sum(countMatrix(:,1));
    countOne = sum(countMatrix(:,2));
    
    for i = 1:3
        countMatrix(i,1) = countMatrix(i,1) / countZero;
        countMatrix(i,2) = countMatrix(i,2) / countOne;
    end
    
    condp(:,:,k) = countMatrix;
end


