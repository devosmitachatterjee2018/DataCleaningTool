function r = GetDuplicateValues(app, x)
% Find the number of duplicate observations in each feature
index = find(~isnan(x));
x1 = x(index);
uniqueTbl = unique(x1);
countOfTbl = hist(x1,uniqueTbl);
r = sum(countOfTbl) - numel(uniqueTbl);

end
