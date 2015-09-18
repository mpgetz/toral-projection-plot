function [x, y] = toralCurve(s)
%c is the output data to plot; s is input slope (linear only)
%x values auto-generated

%fixed x-values
x = 0:1/100:1;
%matrix of y-values, by row
y = zeros(100,101);
r = 1;

%compute y-values and retain only decimal portion
%note: 1's are represented as 0 but this is OK; graph will have
%   apparent discontinuities 
v = s*x;
i = v - floor(v);
y(r, :) = i;
%shift y-values up for next row and move down a row in y-matrix to store
u = y(r, 101);
r = r + 1;
%disp(u)
%disp(y(r-1,:))

%repeat above calculations until an integer is reached (rounding could
%cause problems).
%Note that rational slopes guarantee a conclusion.
while u ~= 0
    v = s*x + u;
    i = v - floor(v);
    y(r, :) = i;
    u = y(r, 101);
    r = r + 1;
    if r >= 102
        y = [y; zeros(1, 101)];
    end
    %disp(u)
    %disp(y(r-1,:))
end

%trim off any extra rows in y to speed plotting
if r < 101
    y = y(1:r-1, :);
end


