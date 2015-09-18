function plotCurve(x, y)
%takes vector of x-values and matrix of y-values as input
%and plots to same 1x1 grid

%figure
%hold on;
[c_1, c_2] = size(y);

for r = 1:c_1
    j = 1;
    for i = 1:c_2-1
        if y(r, i+1) < y(r, i) 
            plot(x(1, j:i), y(r, j:i));
            j = i+1;
        end
    end
    if j ~= c_2
        plot(x(1, j:c_2), y(r, j:c_2));
    else
        continue
    end  
end
