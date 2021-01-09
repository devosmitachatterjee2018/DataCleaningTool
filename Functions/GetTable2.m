function T = GetTable2(app, x)
% Transform n categories of a text feature into n-1 dummy variables
Table = array2table(dummyvar(categorical(x)));
T = Table(:,1:end-1);
varNames = matlab.lang.makeValidName(categories(categorical(x)));
T.Properties.VariableNames = varNames(1:end-1);
end