function newStr = GetSimilarityCheck(app, str, x, y)
% Get similar categories of a text feature
tf = strcmp(str,x);
newStr = str;
for i = 1:size(str,1)
    if tf(i) ==1
        newStr{i} = char(y);
    end
end

end