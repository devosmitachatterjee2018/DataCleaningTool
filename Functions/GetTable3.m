function T = GetTable3(app, x, y)
% Get label encoding of a text feature
T = array2table(grp2idx(categorical(x))-1);
T.Properties.VariableNames = y;
end