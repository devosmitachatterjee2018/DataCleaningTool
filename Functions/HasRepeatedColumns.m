function s = HasRepeatedColumns(app, x)
% Find the number of duplicate columns
% C contains unique rows
% ic contains unique row indices
% ia contains all row indices
[C,ic,ia] = unique(x{:,:}.','rows', 'stable'); 
s = size(x{:,:}.',1) - size(C,1);
end