% CS171   PS1
% Name: Tsung-Ying Chen 
% SID: 861310198 
% Date: 10/14/2017 
function predY = prednb(testX,priorp,condp)

testN = size(testX,1);
features = size(condp,3);
predY = zeros(testN,1);

for i = 1:testN
    probZero = priorp(1);
    probOne = priorp(2);
    
    for k = 1:features
        probZero = probZero * condp(testX(i,k) + 1, 1, k);
        probOne = probOne * condp(testX(i,k) + 1, 2, k);
    end
    
    if probZero > probOne
        predY(i,1) = 0;
    else
        predY(i,1) = 1;
    end
end
end