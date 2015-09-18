function [x, y] = toralCurve(s)
%c is the output data to plot; s is input slope (linear only)
%x values auto-generated

%fixed x-values
x = 0:1/100:1;
%matrix of y-values, by row
y = zeros(100,101);
r = 1;
    
v = s*x;
i = v - floor(v);
y(r, :) = i;
u = y(r, 101);
r = r + 1;
disp(u)
disp(y(r-1,:))
    
while u ~= 0
    v = s*x + u;
    i = v - floor(v);
    y(r, :) = i;
    %if i ~= 0
    %    y(r, :) = i;
    %end
    u = y(r, 101);
    r = r + 1;
    if r >= 102
        y = [y; zeros(1, 101)];
    end
    disp(u)
    disp(y(r-1,:))
    input('press enter')
end

if r < 101
    y = y(1:r-1, :);
end


