function T = GetTable(app, x, y)
% Transform n categories of a text feature into n dummy variables
T = array2table(dummyvar(categorical(x)));
T.Properties.VariableNames = matlab.lang.makeValidName(categories(categorical(x)));
end