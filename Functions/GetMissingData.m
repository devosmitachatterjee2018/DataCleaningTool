function percentage = GetMissingData(app, x)
% Find the missing obervations percentage of each feature
id = {'NA' '' NaN NaT Inf};
missing = ismissing(x,id);

m = zeros(1,size(x,2));

for i=1:size(x,2)
    
    m(i) = length(find(missing(:,i)==1));
    percentage(i) =  (m(i)/size(x,1))*100;
    format bank;percentage(i);
         
end

end